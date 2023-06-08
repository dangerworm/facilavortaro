const bodyParser = require('body-parser')
const cors = require('cors');
const express = require('express');

const { Pool } = require('pg');
const {
  getWordRoots,
  addWordRoot,
  deleteWordRoot,
  getRelatedWords,
  upsertWord,
  deleteWord,
  getImages,
  upsertImageMetadata,
  upsertImage,
  deleteImage,
} = require('./databaseQueries');

const app = express();
const port = process.env.PORT ?? 5000;

/*
// Localhost against Docker container
const pool = new Pool({
  user: 'postgres',
  password: 'postgres',
  database: 'postgres',
  port: 5432,
  host: 'localhost',
  pool: {
    min: 1,
    max: 2,
    idleTimeoutMillis: 5000
  }
});
/*/
const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  user: process.env.FACILA_VORTARO_DATABASE_USER,
  password: process.env.FACILA_VORTARO_DATABASE_PASSWORD,
  database: process.env.FACILA_VORTARO_DATABASE_NAME,
  port: 5432,
  host: process.env.FACILA_VORTARO_DATABASE_HOST,
  pool: {
    min: 1,
    max: 2,
    idleTimeoutMillis: 5000
  },
  ssl: {
    rejectUnauthorized: false
  }
});
//*/

app.use(cors());

app.use(bodyParser.json({ limit: '5mb' }));
app.use(bodyParser.urlencoded({ limit: '5mb', extended: true }));

app.use((request, response, next) => {
  response.header('Access-Control-Allow-Origin', '*');
  response.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS');

  next();
})

app.options('*', (request, response) => {
  response.sendStatus(200);
});

app.post('/api/get-word-roots', async (request, response) => {
  const client = await pool.connect();
  const result = await client.query(getWordRoots);

  const rows = result.rows;
  response.json(rows);
  client.release();
});

app.post('/api/add-word-root', async (request, response) => {
  const { kapvorto } = request.body;

  const client = await pool.connect();
  try {
    const result = await client.query(
      addWordRoot,
      [
        kapvorto
      ]
    );
    response.status(200).json(result);
  }
  catch (error) {
    response.status(500).json(error);
  }
  finally {
    client.release();
  }
});

app.post('/api/delete-word-root', async (request, response) => {
  const { kapvorto } = request.body;

  const client = await pool.connect();
  try {
    const result = await client.query(
      deleteWordRoot,
      [
        kapvorto
      ]
    );
    response.status(200).json(result);
  }
  catch (error) {
    response.status(500).json(error);
  }
  finally {
    client.release();
  }
});

app.post('/api/get-related-words', async (request, response) => {
  const { kapvorto } = request.body;

  const client = await pool.connect();
  const result = await client.query(
    getRelatedWords,
    [
      kapvorto
    ]
  );

  if (result.rows)
  {
    for (let row of result.rows) {
      const imagesResult = await client.query(
        getImages,
        [
          row.kapvorto,
          row.vorto
        ]
      );

      row.images = imagesResult.rows.map(image => {
        return {
          kapvorto: image.kapvorto,
          vorto: image.vorto,
          indekso: image.indekso,
          bilddatumo: image.bilddatumo,
          mimetipo: image.mimetipo,
          bildadreso: image.bildadreso,
          kredito: image.kredito
        }
      });
    }
  }

  response.json(result.rows);
  client.release();
});

app.post('/api/upsert-word', async (request, response) => {
  const { kapvorto, vorto, difino, images } = request.body;

  const client = await pool.connect();

  try {
    const result = await client.query(
      upsertWord,
      [
        kapvorto,
        vorto,
        difino
      ]
    );

    if (images) {
      for (const image of images) {
        const { indekso, bilddatumo, mimetipo, bildadreso, kredito } = image;
        await client.query(
          upsertImage,
          [
            kapvorto,
            vorto,
            indekso,
            bilddatumo,
            mimetipo,
            bildadreso,
            kredito
          ]
        );
      }
    }

    response.status(200).json(result);
  }
  catch (error) {
    response.status(500).json(error);
  }
  finally {
    client.release();
  }
});

app.post('/api/delete-word', async (request, response) => {
  const { kapvorto, vorto } = request.body;

  const client = await pool.connect();

  try {
    const result = await client.query(
      deleteWord,
      [
        kapvorto,
        vorto,
      ]
    );
    response.status(200).json(result);
  }
  catch (error) {
    response.status(500).json(error);
  }
  finally {
    client.release();
  }
});

app.post('/api/get-images', async (request, response) => {
  const { kapvorto, vorto } = request.body;

  const client = await pool.connect();
  const result = await client.query(
    getImages,
    [
      kapvorto,
      vorto
    ]
  );

  const rows = result.rows;
  response.json(rows);
  client.release();
});

app.post('/api/upsert-image', async (request, response) => {
  const {
    kapvorto,
    vorto,
    bilddatumo,
    mimetipo,
    bildadreso,
    kredito } = request.body;

  const client = await pool.connect();

  try {
    if (!bilddatumo) {
      const result = await client.query(
        upsertImageMetadata,
        [
          kapvorto,
          vorto,
          bildadreso,
          kredito
        ]
      );
      response.status(200).json(result);
    }
    else {
      const result = await client.query(
        upsertImage,
        [
          kapvorto,
          vorto,
          bilddatumo,
          mimetipo,
          bildadreso,
          kredito
        ]
      );
      response.status(200).json(result);
    }
  }
  catch (error) {
    console.log(error);
    response.status(500).json(error);
  }
  finally {
    client.release();
  }
});

app.post('/api/delete-image', async (request, response) => {
  const { kapvorto, vorto } = request.body;

  const client = await pool.connect();

  try {
    const result = await client.query(
      deleteImage,
      [
        kapvorto,
        vorto,
      ]
    );
    response.status(200).json(result);
  }
  catch (error) {
    response.status(500).json(error);
  }
  finally {
    client.release();
  }
});

app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});