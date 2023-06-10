CREATE TABLE public.kapvortoj (
	kapvorto TEXT NOT NULL,

  CONSTRAINT pk_kapvortoj_kapvorto PRIMARY KEY (kapvorto)
);

CREATE TABLE public.difinoj (
	kapvorto TEXT NOT NULL,
	vorto TEXT NOT NULL,
  difino TEXT NULL,

  CONSTRAINT pk_difinoj PRIMARY KEY (kapvorto, vorto),
  CONSTRAINT fk_difinoj_kapvorto FOREIGN KEY (kapvorto) REFERENCES public.kapvortoj (kapvorto) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE public.bildoj (
    kapvorto TEXT NOT NULL,
    vorto TEXT NOT NULL,
    indekso INTEGER NOT NULL,
    bilddatumo TEXT NULL,
    mimetipo TEXT NULL,
    bildadreso TEXT NULL,
    atribuo TEXT NULL,

    CONSTRAINT pk_bildoj PRIMARY KEY (kapvorto, vorto, indekso),
    CONSTRAINT uq_bildoj_kapvorto_vorto UNIQUE (kapvorto, vorto, indekso),
    CONSTRAINT fk_bildoj_difinoj FOREIGN KEY (kapvorto, vorto) REFERENCES public.difinoj (kapvorto, vorto) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO
  public."kapvortoj" ("kapvorto")
VALUES
  ('abelo'),
  ('abio'),
  ('abomena'),
  ('abortigo'),
  ('absoluta'),
  ('absolute'),
  ('abunda'),
  ('abunde'),
  ('abundi'),
  ('acido'),
  ('adapti'),
  ('adaptiĝi'),
  ('adiaŭ'),
  ('adjektivo'),
  ('administra'),
  ('administrado'),
  ('administri'),
  ('admiri'),
  ('admoni'),
  ('adoleskanto'),
  ('adopti'),
  ('adverbo'),
  ('afikso'),
  ('aflikti'),
  ('afranko'),
  ('agentejo (gazetara)'),
  ('aglo'),
  ('agnoski'),
  ('agnosko'),
  ('agresema'),
  ('aĥ'),
  ('akademio'),
  ('akceli'),
  ('akcenti'),
  ('akcento'),
  ('akcidento'),
  ('akĉento'),
  ('a.K.E.'),
  ('akiri'),
  ('akompani'),
  ('akompano'),
  ('akordo'),
  ('akreo'),
  ('akrostiko'),
  ('akso'),
  ('aktoro'),
  ('aktuala'),
  ('akuŝi'),
  ('akuzi'),
  ('akuzo'),
  ('akvarelo'),
  ('akvo-tubo'),
  ('albumo'),
  ('al-dona'),
  ('al-doni'),
  ('al-doniĝi'),
  ('al-dono'),
  ('alergia'),
  ('al-frostiĝi'),
  ('algoritmo'),
  ('aliancanoj'),
  ('alianciĝi'),
  ('aliĝi'),
  ('aliĝilo'),
  ('aliĝinto'),
  ('aliĝo'),
  ('alkoholaĵo'),
  ('al-kroĉi'),
  ('al-loga'),
  ('Alpoj'),
  ('altaja'),
  ('alternativa'),
  ('alternativo'),
  ('aludo'),
  ('al-voki'),
  ('amatora'),
  ('amatoro'),
  ('Amazonio'),
  ('ambasadejo'),
  ('ambasadoro'),
  ('ambicia'),
  ('amindumo'),
  ('amori'),
  ('amoro'),
  ('ampleksa'),
  ('ampleksi'),
  ('amplekso'),
  ('ampolo'),
  ('analitiko'),
  ('analizi'),
  ('analizo'),
  ('anarkiismo'),
  ('anarkiisto'),
  ('anaso'),
  ('androido'),
  ('anekdoto'),
  ('aneksi'),
  ('anglikano'),
  ('anĝelo'),
  ('anonima'),
  ('antaŭ-juĝo'),
  ('antaŭ-parolo'),
  ('anteno'),
  ('anticipe'),
  ('antikva'),
  ('Antiloj'),
  ('antilopo'),
  ('anti-militisto'),
  ('antologio'),
  ('apartismo'),
  ('aplaŭdo'),
  ('aplikado'),
  ('aplikaĵo'),
  ('apliki'),
  ('apliko'),
  ('apoge'),
  ('apogi'),
  ('apogo'),
  ('apoteko'),
  ('aprobi'),
  ('araba'),
  ('arbo-trunko'),
  ('arbusto'),
  ('areo'),
  ('aresti'),
  ('argumento'),
  ('arĝento'),
  ('arĥeologio'),
  ('arkaika'),
  ('arkeologio'),
  ('arkeologo'),
  ('arkitekto'),
  ('arkitekturo'),
  ('arkivi'),
  ('arkivo'),
  ('armeo'),
  ('aromo'),
  ('artefarita'),
  ('artiko'),
  ('asembleo'),
  ('aserti'),
  ('asigni'),
  ('asteroido'),
  ('astrofiziko'),
  ('astronomio'),
  ('astronomo'),
  ('ateliero'),
  ('atesti'),
  ('atesto, atestilo'),
  ('atesto'),
  ('atm'),
  ('atmosfero'),
  ('atom-milito'),
  ('atribui'),
  ('aŭdaca'),
  ('aŭguri'),
  ('aŭspicii'),
  ('Aŭstrujo'),
  ('aŭtismo'),
  ('aŭtobiografio'),
  ('aŭtomata'),
  ('aŭtomate'),
  ('aŭtomato'),
  ('aŭtonoma'),
  ('aŭtoro'),
  ('avantaĝo'),
  ('avara'),
  ('aventurema'),
  ('aventuro'),
  ('averti'),
  ('avida'),
  ('azeno'),
  ('bagatela'),
  ('bahaa'),
  ('baki'),
  ('bakisto'),
  ('balai'),
  ('balkono'),
  ('bambuo'),
  ('banano'),
  ('bankedo'),
  ('barako'),
  ('barakti'),
  ('Barato'),
  ('barbaro'),
  ('barbo'),
  ('barelo'),
  ('barono'),
  ('basko'),
  ('bastono'),
  ('bazaro'),
  ('BBC (British Broadcasting Corporation)'),
  ('bebo'),
  ('bedo'),
  ('belarto'),
  ('beletro'),
  ('belga'),
  ('beni'),
  ('benko'),
  ('beno'),
  ('benzino'),
  ('(fajro)brigadisto'),
  ('Betleĥemo'),
  ('betono'),
  ('Biblio'),
  ('bienisto'),
  ('bieno'),
  ('bild-strio'),
  ('bindejo'),
  ('bindi'),
  ('biografio'),
  ('biologio'),
  ('biskvito'),
  ('bita'),
  ('bitigi'),
  ('blazono'),
  ('blinda'),
  ('blokiĝi'),
  ('boato'),
  ('bombado'),
  ('bombardi'),
  ('bon-aŭgura'),
  ('bon-konduta'),
  ('bon-trovo'),
  ('bon-vena'),
  ('bon-venigi'),
  ('bon-veno'),
  ('bori'),
  ('borso'),
  ('botaniko'),
  ('brajlo'),
  ('brakumi'),
  ('brakumo'),
  ('branĉo'),
  ('brava'),
  ('Brazilo'),
  ('bremsi'),
  ('bretaro'),
  ('breto'),
  ('briko'),
  ('brodi'),
  ('brokantejo'),
  ('brokolo'),
  ('bronkito'),
  ('bronzo'),
  ('brosi'),
  ('broso'),
  ('broŝuro'),
  ('brovo'),
  ('bruto'),
  ('bubo'),
  ('budhano'),
  ('budhismo'),
  ('bukedo'),
  ('buklo'),
  ('bulo'),
  ('bunta'),
  ('butero'),
  ('butiko'),
  ('butono'),
  ('caro'),
  ('cedi'),
  ('cejano'),
  ('cendo'),
  ('cerbo'),
  ('cerbumi'),
  ('ceremonio'),
  ('cervo'),
  ('cifereca'),
  ('cigano'),
  ('cigno'),
  ('cikatro'),
  ('ciklo'),
  ('cindro'),
  ('cirko'),
  ('cirkonstanco'),
  ('citaĵo'),
  ('citi'),
  ('citiloj'),
  ('civilizo'),
  ('civilulo'),
  ('civitano'),
  ('cm'),
  ('ĉ.'),
  ('ĉagreno'),
  ('ĉampiono'),
  ('ĉapitro'),
  ('ĉaro'),
  ('ĉaso'),
  ('ĉe-esta'),
  ('ĉef-ministro'),
  ('ĉef-rolulo'),
  ('ĉeĥo'),
  ('Ĉeĥoslovakujo'),
  ('ĉelo'),
  ('ĉeroka'),
  ('ĉiĉerono'),
  ('ĉielarko'),
  ('ĉies'),
  ('ĉokolado'),
  ('damaĝo'),
  ('datumo'),
  ('Daŭismo'),
  ('daŭripova'),
  ('debato'),
  ('deci'),
  ('deĉifri'),
  ('dediĉi'),
  ('defia'),
  ('defii'),
  ('definitiva'),
  ('defio'),
  ('degeli'),
  ('deĵori'),
  ('deklami'),
  ('deklaracio'),
  ('deklari'),
  ('deklaro'),
  ('de l’'),
  ('delegito'),
  ('demenco'),
  ('demokratio'),
  ('denaskulo'),
  ('departemento'),
  ('dependi'),
  ('deputito'),
  ('des pli'),
  ('deserto'),
  ('destinita'),
  ('destino'),
  ('detektivo'),
  ('detrui'),
  ('detruo'),
  ('de-veni'),
  ('de-veno'),
  ('devige'),
  ('devizo'),
  ('dezerto'),
  ('diabeto'),
  ('diagnozi'),
  ('diagnozo'),
  ('dialekto'),
  ('dialogo'),
  ('diamanto'),
  ('difekti'),
  ('difektiĝo'),
  ('digesta sistemo'),
  ('diktatoro'),
  ('diligenta'),
  ('diligente'),
  ('dimensio'),
  ('dinastio'),
  ('diplomato'),
  ('diplomo'),
  ('direktoro'),
  ('diskoteko'),
  ('diskriminacii'),
  ('diskriminacio'),
  ('disponi'),
  ('disponigo'),
  ('dispono'),
  ('dis-sendi'),
  ('dis-sendo'),
  ('distanciĝo'),
  ('distanco'),
  ('distingi'),
  ('distra'),
  ('distri'),
  ('distribui'),
  ('distriĝi'),
  ('disvolvi'),
  ('disvolviĝi'),
  ('divano'),
  ('divenado'),
  ('diveni'),
  ('dogmo'),
  ('dolaro ($)'),
  ('dolĉapatro'),
  ('dolmeno'),
  ('dorno'),
  ('drako'),
  ('drama'),
  ('drameca'),
  ('dramo'),
  ('drinki'),
  ('druido'),
  ('dubli'),
  ('dudek-kelke'),
  ('du-fokusaj okulvitroj'),
  ('Duolingo'),
  ('DVD'),
  ('ebenaĵo'),
  ('ebria'),
  ('Edeno'),
  ('egido'),
  ('eĥo'),
  ('ekidno'),
  ('ekipaĵo'),
  ('eklezio'),
  ('eklipso'),
  ('ekologio'),
  ('ekonomiko'),
  ('ekosistemo'),
  ('ekscita'),
  ('eksciti'),
  ('ekscito'),
  ('eksperimenta'),
  ('eksperimento'),
  ('eksplodi'),
  ('ekspluatata'),
  ('ekspluati'),
  ('eksporti'),
  ('ekspozicio'),
  ('ekspreso (ekspresa trajno)'),
  ('ekstermi'),
  ('ekster-ordinara'),
  ('ekstremismo'),
  ('ekvatoro'),
  ('ekvilibra'),
  ('ekvilibro'),
  ('ekvinokso'),
  ('ekzekuti'),
  ('ekzekuto'),
  ('ekzemplero'),
  ('ekzili'),
  ('ekzilo'),
  ('elafuro'),
  ('elĉerpiĝi'),
  ('elĉerpita'),
  ('el-diri'),
  ('eldonado'),
  ('eldonaĵo'),
  ('eldonejo'),
  ('el-doni'),
  ('el-dono'),
  ('elefanto'),
  ('eleganta'),
  ('elektronika'),
  ('elementa'),
  ('elemento'),
  ('elgenuiĝi'),
  ('elizii'),
  ('el-lerni'),
  ('el-migri'),
  ('el-migrinto'),
  ('elp.'),
  ('el-radikigi'),
  ('el-sendi'),
  ('el-sendo'),
  ('el-stara'),
  ('el-stari'),
  ('el-ŝuti'),
  ('el-teni'),
  ('el-teno'),
  ('emblemo'),
  ('emeritiĝi'),
  ('emerito'),
  ('emfazi'),
  ('emfazo'),
  ('eminenta'),
  ('enciklopedio'),
  ('enfokusigi'),
  ('enigma'),
  ('enketi'),
  ('enketilo'),
  ('enketo'),
  ('enkodigo'),
  ('en-konduko'),
  ('en-migri'),
  ('ensemblo'),
  ('enterigi'),
  ('entombigi'),
  ('entrepreni'),
  ('entrepreno'),
  ('entuziasma'),
  ('entuziasme'),
  ('entuziasmo'),
  ('enue'),
  ('envia'),
  ('epidemio'),
  ('episkopo'),
  ('epoko'),
  ('epopeo'),
  ('erao'),
  ('erupcio'),
  ('escepto'),
  ('esenca'),
  ('esenco'),
  ('eseo'),
  ('Esperantio'),
  ('esperantologo'),
  ('Esperantujo'),
  ('estingi'),
  ('estrarano'),
  ('estraro'),
  ('etaĝo'),
  ('etapo'),
  ('etendi'),
  ('etendiĝi'),
  ('eterna'),
  ('etikedo'),
  ('etimologio'),
  ('etna'),
  ('etno'),
  ('etnologio'),
  ('etoso'),
  ('Eŭritmio'),
  ('eŭro (€)'),
  ('Eŭropa Unio'),
  ('evento'),
  ('eventuala'),
  ('eventuale'),
  ('evidenta'),
  ('eviti'),
  ('evito'),
  ('fabelo'),
  ('fabo'),
  ('fajro-brigadisto'),
  ('faktoro'),
  ('faldi'),
  ('falsa'),
  ('falsi'),
  ('fanatikulo'),
  ('fandejo'),
  ('fandi'),
  ('fantazio'),
  ('fantomo'),
  ('faraono'),
  ('farbi'),
  ('farĉi'),
  ('fasado'),
  ('fasko'),
  ('fasoni'),
  ('faŝisto'),
  ('fatala'),
  ('fatamorgano'),
  ('faŭko'),
  ('favora'),
  ('favore'),
  ('favori'),
  ('favoro'),
  ('fazo'),
  ('febri'),
  ('federacio'),
  ('Fejsbuko (Facebook)'),
  ('feko'),
  ('fekunda'),
  ('fendo'),
  ('fenikso'),
  ('fenomeno'),
  ('feo'),
  ('fervojisto'),
  ('fer-vojo'),
  ('fervora'),
  ('festivalo'),
  ('fest-parolado'),
  ('fi-'),
  ('fiasko'),
  ('fidela'),
  ('fidi'),
  ('fidinda'),
  ('fiera'),
  ('fi-fama'),
  ('fikcia'),
  ('fikcio'),
  ('filio'),
  ('filozofia'),
  ('filozofio'),
  ('filozofo'),
  ('finalo'),
  ('financa'),
  ('finance'),
  ('financi'),
  ('financo'),
  ('firma'),
  ('firmao'),
  ('fizike'),
  ('fiziko'),
  ('fjordo'),
  ('flamigi'),
  ('flamo'),
  ('flari'),
  ('flaro'),
  ('flegi'),
  ('flikaĵo'),
  ('flor-fraŭlino'),
  ('floso'),
  ('flug-roboto'),
  ('flustri'),
  ('foiro'),
  ('foliumi'),
  ('folkloro'),
  ('fona'),
  ('fondaĵo'),
  ('fonetika'),
  ('fono'),
  ('fonografo'),
  ('fontano'),
  ('fonua'),
  ('forĝi'),
  ('for-ĵeti'),
  ('formala'),
  ('formularo'),
  ('formulo'),
  ('for-pasi'),
  ('for-paso'),
  ('for-peli'),
  ('fortepiano'),
  ('forumo'),
  ('for-velki'),
  ('fragmento'),
  ('franca'),
  ('frandi'),
  ('frap-frazo'),
  ('frekvenco'),
  ('fromaĝo'),
  ('fronte al'),
  ('frukto-dona'),
  ('frunto'),
  ('frustriĝi'),
  ('fuĝi'),
  ('fundamento'),
  ('fundo'),
  ('funebra'),
  ('fungo'),
  ('furiozo'),
  ('furora'),
  ('Gaĝarida'),
  ('galaksio'),
  ('gamo'),
  ('ganto'),
  ('gapi'),
  ('garantianto'),
  ('gardi'),
  ('gastronomio'),
  ('gaŭlo'),
  ('geja'),
  ('generacio'),
  ('generalo'),
  ('genio'),
  ('geno'),
  ('gento'),
  ('genui'),
  ('genuo'),
  ('geografio'),
  ('Gestapo'),
  ('geto'),
  ('giganta'),
  ('giganto'),
  ('gimnastiko'),
  ('gimnazio'),
  ('gitaro'),
  ('glacea'),
  ('glaciaĵo'),
  ('glaci-hokeo'),
  ('glata'),
  ('glazuro'),
  ('glitistaro'),
  ('gloro'),
  ('glubendo'),
  ('glueca'),
  ('golfo'),
  ('golo'),
  ('gradigita'),
  ('grado'),
  ('grado (˚)'),
  ('grafikaĵo'),
  ('grafikisto'),
  ('grafikumi'),
  ('Granda Ursino'),
  ('grandioza'),
  ('granito'),
  ('graveda'),
  ('gravuraĵo'),
  ('greke'),
  ('grilo'),
  ('grimpi'),
  ('groto'),
  ('grundo'),
  ('gubernio'),
  ('gufo'),
  ('gufujo'),
  ('Guglo (Google)'),
  ('guto'),
  ('gvarania'),
  ('ĝemelaj urboj'),
  ('ĝemeloj'),
  ('ĝenro'),
  ('ĝis-osta'),
  ('hajko'),
  ('haki'),
  ('halo'),
  ('Haloveno'),
  ('halto-streko'),
  ('hamburgero'),
  ('handikapita'),
  ('handikapo'),
  ('hardi'),
  ('harmonie'),
  ('harmonio'),
  ('hazarda'),
  ('hazarde'),
  ('hazardo'),
  ('hegemonio'),
  ('heredaĵo'),
  ('heredi'),
  ('heredonto'),
  ('Herkulo'),
  ('heroeco'),
  ('heroldo'),
  ('heroo'),
  ('heziti'),
  ('hibrida'),
  ('himno'),
  ('hinda'),
  ('hiphopo'),
  ('hipnoto'),
  ('hirundo'),
  ('hoko'),
  ('hologramo'),
  ('Holokaŭsto'),
  ('honesta'),
  ('honora'),
  ('honore'),
  ('honori'),
  ('honoro'),
  ('horaro'),
  ('horizontala'),
  ('horizonto'),
  ('hor-zono'),
  ('hospitalo'),
  ('HTML'),
  ('humila'),
  ('humoro'),
  ('humura'),
  ('humuro'),
  ('hungara'),
  ('hura!'),
  ('ĥoro'),
  ('ial'),
  ('identeco'),
  ('identigi'),
  ('identiĝi'),
  ('ideologio'),
  ('idiotismo'),
  ('ignori'),
  ('ILEI'),
  ('ilustraĵo'),
  ('ilustri'),
  ('imperiestro'),
  ('imperiismo'),
  ('imperio'),
  ('impona'),
  ('importi'),
  ('imposto'),
  ('impresa'),
  ('impresi'),
  ('impreso'),
  ('improvizi'),
  ('inaŭguri'),
  ('inaŭguro'),
  ('incendio'),
  ('incidento'),
  ('indiĝena'),
  ('indiĝeno'),
  ('indiki'),
  ('indiko'),
  ('individua'),
  ('individuo'),
  ('infekti'),
  ('infektiĝi'),
  ('infero'),
  ('inflamo'),
  ('influi'),
  ('influo'),
  ('ingredienco'),
  ('inĝeniero'),
  ('iniciati'),
  ('iniciatinto'),
  ('iniciato'),
  ('inkluzive de'),
  ('inkluzivi'),
  ('inko'),
  ('insigno'),
  ('inspira'),
  ('inspiri'),
  ('instanco'),
  ('instigi'),
  ('instigo'),
  ('institucio'),
  ('instituto'),
  ('instrumento'),
  ('insulti'),
  ('insulto'),
  ('integriĝi'),
  ('intelektulo'),
  ('intensa'),
  ('intensa (kurso)'),
  ('interlingvistiko'),
  ('interplektiĝo'),
  ('intima'),
  ('intrigo'),
  ('inundo'),
  ('invadanto'),
  ('invadi'),
  ('inventi'),
  ('investi'),
  ('investo'),
  ('Irlando'),
  ('ironio'),
  ('izoladisto'),
  ('izolita'),
  ('izoliteco'),
  ('jarcento'),
  ('jogo'),
  ('ju...des...'),
  ('jubilea'),
  ('jubileo'),
  ('judo'),
  ('jungi'),
  ('jura'),
  ('juro'),
  ('Jutubo (YouTube)'),
  ('juvelo'),
  ('ĵargono'),
  ('ĵipo'),
  ('ĵurio'),
  ('ĵurnalismo'),
  ('ĵurnalisto'),
  ('ĵurnalo'),
  ('kabaredo'),
  ('kaĉo'),
  ('kahelo'),
  ('kadavro'),
  ('kajo'),
  ('kakao'),
  ('kalemburo'),
  ('kamarado'),
  ('kameno'),
  ('kamerao'),
  ('kamioneto'),
  ('kampanjo'),
  ('kamparano'),
  ('kanalo'),
  ('kanceliero'),
  ('kancero'),
  ('kandelo'),
  ('kandidato'),
  ('kapoto'),
  ('kapro'),
  ('karaktero'),
  ('karapaco'),
  ('karavano'),
  ('karbon-dioksido'),
  ('karbono'),
  ('kardamomo'),
  ('kareo'),
  ('karesa'),
  ('karesi'),
  ('kares-nomo'),
  ('kargo'),
  ('kariatido'),
  ('kariero'),
  ('karismo'),
  ('karnavalo'),
  ('karno'),
  ('karpo'),
  ('Kartago'),
  ('karuselo'),
  ('kasedo'),
  ('kaso'),
  ('kastelo'),
  ('kaŝ-nomo'),
  ('katastrofo'),
  ('katedralo'),
  ('katolika'),
  ('kavaliro'),
  ('kaverno'),
  ('kavo'),
  ('keĉua'),
  ('kelnero'),
  ('kelo'),
  ('Kembriĝo'),
  ('KER: “Komuna Eŭropa Referenckadro”'),
  ('kerno'),
  ('kikero'),
  ('Kimrujo'),
  ('kiosko'),
  ('Kirgizujo'),
  ('klasika'),
  ('klasikaĵo'),
  ('klematito'),
  ('klera'),
  ('klifo'),
  ('klimatizi'),
  ('klimatizilo'),
  ('klimatizisto'),
  ('klimato'),
  ('kliniko'),
  ('kloako'),
  ('km'),
  ('knaro'),
  ('koalicio'),
  ('kolegio'),
  ('kolego'),
  ('kolesterolo'),
  ('kolibro'),
  ('kolizii'),
  ('kolombo'),
  ('kolonii'),
  ('koloniismo'),
  ('kolonio'),
  ('kolono'),
  ('komandanto'),
  ('kombinaĵo'),
  ('komedio'),
  ('kometo'),
  ('komika'),
  ('komisaro'),
  ('komisii'),
  ('komisiono'),
  ('komitato'),
  ('kompakta disko (KD)'),
  ('kompanio'),
  ('kompato'),
  ('kompensi'),
  ('kompetenta'),
  ('kompili'),
  ('kompleta'),
  ('kompletigi'),
  ('kompliki'),
  ('komponi'),
  ('komunismo'),
  ('komunisto'),
  ('komunumo'),
  ('konatiĝi'),
  ('koncentrejo'),
  ('koncentri'),
  ('koncentriĝi'),
  ('koncentriĝo'),
  ('koncepto'),
  ('koncerto'),
  ('konciza'),
  ('kondimento'),
  ('konduto'),
  ('konekti'),
  ('konekto'),
  ('konferenco'),
  ('konfidenco'),
  ('konfido'),
  ('konfirmi'),
  ('konfirmilo'),
  ('konfirmo'),
  ('konfiski'),
  ('konflikto'),
  ('konformi'),
  ('konfronto'),
  ('konfuza'),
  ('konfuzi'),
  ('konfuziĝi'),
  ('konfuzo'),
  ('konkludi'),
  ('konkludo'),
  ('konkurenci'),
  ('konkuri'),
  ('konscia'),
  ('konscienco'),
  ('konscii'),
  ('konsekvenca'),
  ('konservi'),
  ('konsilio'),
  ('konsonanto'),
  ('konspiri'),
  ('konstati'),
  ('konstato'),
  ('konsulo'),
  ('konsultejo'),
  ('konsulti'),
  ('konsultisto'),
  ('konsumi'),
  ('konsumismo'),
  ('konsumo'),
  ('kontinento'),
  ('kontinua'),
  ('konto'),
  ('kontrakto'),
  ('kontraste'),
  ('kontraŭ-oksida'),
  ('konvencia'),
  ('konversacii'),
  ('konversacio'),
  ('konverti'),
  ('kooperativa'),
  ('kooperativo'),
  ('kopi-rajto'),
  ('kor-favoro'),
  ('koridoro'),
  ('korno'),
  ('Korsiko'),
  ('kortego'),
  ('koruso'),
  ('kosmo'),
  ('kosmonaŭto'),
  ('kosmopolitismo'),
  ('KOVIM-19 (kovimo)'),
  ('kraĉi'),
  ('kranio'),
  ('krano'),
  ('kreditpoentoj'),
  ('kremacii'),
  ('kreolo'),
  ('krepusko'),
  ('krestomatio'),
  ('krima'),
  ('krimo'),
  ('krimulo'),
  ('kriptaĵo'),
  ('kristano'),
  ('Krist-nasko'),
  ('kriterio'),
  ('kritiki'),
  ('kritiko'),
  ('kriza'),
  ('krizo'),
  ('kroata'),
  ('kroĉetado'),
  ('krokodili'),
  ('krokodilo'),
  ('krom-leciono'),
  ('krom-nomo'),
  ('krono'),
  ('kron-viruso'),
  ('kruc(vort)-enigmo'),
  ('krucumi'),
  ('kruda'),
  ('ktp'),
  ('kubo'),
  ('kuglo'),
  ('kukolo'),
  ('kulmino'),
  ('kultivaĵo'),
  ('kultivi'),
  ('kulto'),
  ('kuniklo'),
  ('kun-labori'),
  ('kun-ordigi'),
  ('kun-sido'),
  ('kun-teksto'),
  ('kun-urbaĵo'),
  ('kupli'),
  ('kupono'),
  ('kurda'),
  ('kuriero'),
  ('kurioza'),
  ('kuriozaĵo'),
  ('kvaranteno'),
  ('kvar-latero'),
  ('kvaron-dolaro'),
  ('kvartalo'),
  ('kvarteto'),
  ('kvereli'),
  ('kvieta'),
  ('Kvinslando'),
  ('kvizo'),
  ('labirinto'),
  ('lacerto'),
  ('lad-skatolo'),
  ('laktuko'),
  ('lanĉi'),
  ('lango-rompilo'),
  ('lanterno'),
  ('larmo'),
  ('latina (lingvo)'),
  ('latuno'),
  ('laŭdi'),
  ('laŭdo'),
  ('laŭro'),
  ('laŭta'),
  ('laŭteco'),
  ('lavango'),
  ('lazura'),
  ('legendo'),
  ('legio'),
  ('lenso'),
  ('leono'),
  ('lerta'),
  ('leŭkanto'),
  ('liberal-demokrata'),
  ('licenco'),
  ('lim-dato'),
  ('lingvistiko'),
  ('lio (里, lĭ)'),
  ('lip-haroj'),
  ('lipoj'),
  ('litro'),
  ('liveri'),
  ('logika'),
  ('lojala'),
  ('lordo'),
  ('loti'),
  ('luksa'),
  ('lukti'),
  ('lulilo'),
  ('m'),
  ('magia'),
  ('magio'),
  ('magistriĝi'),
  ('magistro'),
  ('majstreco'),
  ('majstro'),
  ('maksimuma'),
  ('maksimume'),
  ('makuli'),
  ('malagordaj'),
  ('malaprobo'),
  ('malavantaĝo'),
  ('malavara'),
  ('malbeni'),
  ('malhela'),
  ('malneto'),
  ('malplimulto'),
  ('malŝalti'),
  ('malvarmumo'),
  ('mamoj'),
  ('mam-suĉi'),
  ('mamulo'),
  ('manifestacio'),
  ('manipuli'),
  ('man-libro'),
  ('mantro'),
  ('mantuko'),
  ('mapo'),
  ('maratono'),
  ('marĉo'),
  ('marioneto'),
  ('mar-kolo'),
  ('marmoro'),
  ('martiro'),
  ('masaĝi'),
  ('masko'),
  ('masonisto'),
  ('mastiko'),
  ('matĉo'),
  ('matematiko'),
  ('matura'),
  ('maturigo'),
  ('mecenato'),
  ('medalo'),
  ('medicina'),
  ('medicino'),
  ('medikamento'),
  ('medio'),
  ('Mediteraneo'),
  ('mediti'),
  ('Mefisto'),
  ('mekaniko'),
  ('meksikano'),
  ('melankolia'),
  ('melodio'),
  ('memeo'),
  ('mem-fido'),
  ('mem-stara'),
  ('mem-stare'),
  ('mencii'),
  ('mensogi'),
  ('menuo'),
  ('merkato'),
  ('metio'),
  ('metroo'),
  ('mez-epoko'),
  ('mezume'),
  ('mezumo'),
  ('mielo'),
  ('migri'),
  ('mikronovelo'),
  ('milda'),
  ('miliardo'),
  ('minaci'),
  ('minimuma'),
  ('ministo'),
  ('ministro'),
  ('mino'),
  ('misio'),
  ('mistera'),
  ('mistero'),
  ('mistikismo'),
  ('mito'),
  ('modela'),
  ('modelo'),
  ('modifi'),
  ('modo'),
  ('monaĥo'),
  ('monstro'),
  ('monumento'),
  ('morala'),
  ('moralo'),
  ('moro'),
  ('moskeo'),
  ('motivo'),
  ('movado'),
  ('mozaiko'),
  ('mueli'),
  ('muĝi'),
  ('munti'),
  ('murdi'),
  ('murdo'),
  ('muskolo'),
  ('muti'),
  ('nafto'),
  ('najbara'),
  ('najbaro'),
  ('najlo'),
  ('naŭatla'),
  ('navigi'),
  ('naziismo'),
  ('nazio'),
  ('Nederlando'),
  ('ne-eviteble'),
  ('ne-formala'),
  ('ne-formale'),
  ('negativa'),
  ('ne-identigita'),
  ('nekrologo'),
  ('neolitiko'),
  ('neologismo'),
  ('ne-racia'),
  ('nerva'),
  ('nervo'),
  ('ne-vundebla'),
  ('nikotino'),
  ('Nilo'),
  ('nobelo'),
  ('nobla'),
  ('nomado'),
  ('normigado'),
  ('novelo'),
  ('n-ro'),
  ('nuanco'),
  ('nuda'),
  ('nudeloj'),
  ('nukleo'),
  ('nukso'),
  ('nutra'),
  ('nutri'),
  ('obsedo'),
  ('obskura'),
  ('obstino'),
  ('oceano'),
  ('ofendi'),
  ('oferi'),
  ('ofero'),
  ('oferto'),
  ('oficiala'),
  ('oficiale'),
  ('oficialigi'),
  ('oficiro'),
  ('oksigeno'),
  ('Olimpia'),
  ('Olimpio'),
  ('omaĝe'),
  ('omaĝo'),
  ('ombro'),
  ('operacii'),
  ('opero'),
  ('oportuna'),
  ('optimisma'),
  ('optimismo'),
  ('oranĝo'),
  ('orbito'),
  ('orfo'),
  ('organo'),
  ('orientiĝo'),
  ('orientiĝo (seksa)'),
  ('origine'),
  ('origino'),
  ('orkestro'),
  ('ornami'),
  ('ortangulo'),
  ('otomanoj'),
  ('pacienca'),
  ('pacienco'),
  ('paciento'),
  ('paĉjo'),
  ('pafi'),
  ('pala'),
  ('palaco'),
  ('palpebrumi'),
  ('pampelmuso'),
  ('pandemio'),
  ('pando'),
  ('panelo'),
  ('paneo'),
  ('panjo'),
  ('panoramo'),
  ('papavo'),
  ('papo'),
  ('paradizo'),
  ('parado'),
  ('paradokso'),
  ('parenco'),
  ('parfuma'),
  ('parkerigi'),
  ('parlamento'),
  ('Parnaso'),
  ('partio'),
  ('partituro'),
  ('partizano'),
  ('partnero'),
  ('parto-prenanto'),
  ('parto-preni'),
  ('parto-preno'),
  ('pasaĝero'),
  ('pasio'),
  ('pasodoblo'),
  ('Pasporta servo'),
  ('pasporto'),
  ('pastaĵo'),
  ('pastro'),
  ('paŝtisto'),
  ('patrono'),
  ('patrujo'),
  ('pavilono'),
  ('PDF: Portebla Dokument-Formo'),
  ('pejzaĝo'),
  ('pensio'),
  ('percepto'),
  ('perdriko'),
  ('perei'),
  ('perfidi'),
  ('perfido'),
  ('perfidulo'),
  ('per-forta'),
  ('per-forto'),
  ('periodaĵo'),
  ('persa'),
  ('persekuti'),
  ('persekuto'),
  ('persiste'),
  ('persisti'),
  ('personaro'),
  ('perspektivo'),
  ('persvadi'),
  ('perturba'),
  ('pesimisme'),
  ('petalo'),
  ('peticio'),
  ('pet-skribo'),
  ('pia'),
  ('piano'),
  ('pied-noto'),
  ('piĝino'),
  ('pilgrimanto'),
  ('pilgrimo'),
  ('pilolo'),
  ('pint-horo'),
  ('pinto'),
  ('pioniro'),
  ('piramido'),
  ('pisi'),
  ('pistilo'),
  ('pizo'),
  ('placebo'),
  ('placo'),
  ('plado'),
  ('plagiato'),
  ('plaĝo'),
  ('planedo'),
  ('planlingvo'),
  ('platformo'),
  ('pledi'),
  ('plenumi'),
  ('plum-nomo'),
  ('pluralo'),
  ('pluŝo'),
  ('pluŝ-urso'),
  ('podkasto'),
  ('poeto'),
  ('pokalo'),
  ('polento'),
  ('poligloto'),
  ('politekniko'),
  ('poluso (norda)'),
  ('polvo'),
  ('polvo-suĉi'),
  ('polvo-suĉilo'),
  ('pompa'),
  ('ponardo'),
  ('pop-kanto'),
  ('pornografia'),
  ('portretito'),
  ('portreto'),
  ('posteno'),
  ('post-lasaĵo'),
  ('poŝ-legilo'),
  ('potenca'),
  ('potenco'),
  ('pozi'),
  ('pozitiva'),
  ('praa'),
  ('pra-epoko'),
  ('pragmata'),
  ('predanto'),
  ('prediki'),
  ('prediko'),
  ('prefikso'),
  ('premio'),
  ('prestiĝa'),
  ('preteksto'),
  ('primitiva'),
  ('princino'),
  ('princo'),
  ('printi'),
  ('prioritato'),
  ('privata'),
  ('privateco'),
  ('privilegio'),
  ('probabla'),
  ('probableco'),
  ('proceduro'),
  ('procento'),
  ('procesio'),
  ('proceso'),
  ('profesoro'),
  ('profeto'),
  ('profilo'),
  ('profiti'),
  ('profito'),
  ('projekcii'),
  ('proklami'),
  ('prokrasti'),
  ('proksimume'),
  ('prononci'),
  ('prononco'),
  ('propagandi'),
  ('propagando'),
  ('proporcio'),
  ('prospero'),
  ('protektado'),
  ('protekti'),
  ('protesti'),
  ('protesto'),
  ('proverbo'),
  ('provinco'),
  ('provizi'),
  ('provizo'),
  ('provizora'),
  ('provizore'),
  ('prov-legi'),
  ('prozo'),
  ('pruvi'),
  ('pruvo'),
  ('pseŭdonimo'),
  ('psikologio'),
  ('psikologo'),
  ('pulmo'),
  ('pulovero'),
  ('pulvoro'),
  ('punto'),
  ('pup-teatro'),
  ('puŝ-levo'),
  ('putri'),
  ('rabato'),
  ('rabi'),
  ('racia'),
  ('racio'),
  ('radikala'),
  ('rajdi'),
  ('rano'),
  ('rasismo'),
  ('raso'),
  ('ravi'),
  ('reagi'),
  ('reago'),
  ('recepto'),
  ('reciproka'),
  ('reciprokeco'),
  ('redakcio'),
  ('Reddit'),
  ('reflekti'),
  ('re-formi'),
  ('re-formo'),
  ('refreno'),
  ('regali'),
  ('registaro'),
  ('registraĵo'),
  ('registri'),
  ('registriĝi'),
  ('registriĝo'),
  ('regno'),
  ('reĝisori'),
  ('reĝisoro'),
  ('rekoni'),
  ('rekono'),
  ('rekordo'),
  ('rektoro'),
  ('relative'),
  ('reliefo'),
  ('rendevuo'),
  ('renesanco: “renaskiĝo”'),
  ('reno'),
  ('renversi'),
  ('reprezentado'),
  ('reprezentanto'),
  ('reprezenti'),
  ('reputacio'),
  ('respektive'),
  ('respondeci'),
  ('respondeculo'),
  ('respubliko'),
  ('restoracio'),
  ('resume'),
  ('resumo'),
  ('re-tiriĝi'),
  ('retroiri'),
  ('retumilo'),
  ('revi'),
  ('revizii'),
  ('revo'),
  ('revoluciisto'),
  ('revolucio'),
  ('rezervejo'),
  ('rezigni'),
  ('rezisti'),
  ('rezisto'),
  ('rezolucio'),
  ('ribeli'),
  ('rifuĝinto'),
  ('rifuzi'),
  ('rigida'),
  ('rigora'),
  ('rikolto'),
  ('rimo'),
  ('ringo'),
  ('rinocero'),
  ('ripari'),
  ('riparo'),
  ('riski'),
  ('risko'),
  ('ritmo'),
  ('rito'),
  ('roboto'),
  ('rokenrolo'),
  ('roko'),
  ('rok-muziko'),
  ('rolanto, rolulo'),
  ('roli'),
  ('rolo'),
  ('romanco'),
  ('romantika'),
  ('romia'),
  ('romiano'),
  ('Romio'),
  ('ronĝulo'),
  ('roso'),
  ('rosti'),
  ('rotacio'),
  ('Ruando'),
  ('rubaĵoj'),
  ('rubando'),
  ('rumana'),
  ('rusa'),
  ('rusto'),
  ('rutena'),
  ('rutino'),
  ('ruza'),
  ('sago'),
  ('sak-strato'),
  ('salato'),
  ('sam-ide-ano'),
  ('sandviĉo'),
  ('sanskrito'),
  ('sapo'),
  ('satelito'),
  ('satiro'),
  ('scenaro'),
  ('sceno'),
  ('sceptro'),
  ('scienc-fikcio'),
  ('sciuro'),
  ('sekcio'),
  ('sekreta'),
  ('sekrete'),
  ('sekreto'),
  ('sekundo'),
  ('semestro'),
  ('semi'),
  ('seminario'),
  ('semo'),
  ('sen-brida'),
  ('sen-dependa'),
  ('sen-dependeco'),
  ('sen-dependiĝi'),
  ('sen-drata'),
  ('sen-fadena telefonio (esprimo ne plu uzata)'),
  ('sen-iluziiĝo'),
  ('sen-konscie'),
  ('sen-pere'),
  ('senso'),
  ('sentimentala'),
  ('serena'),
  ('serpento'),
  ('serpentumi'),
  ('sesio'),
  ('sfinkso'),
  ('Siamo'),
  ('Siberio'),
  ('sidejo'),
  ('silabo'),
  ('simboli'),
  ('simbolo'),
  ('simfonio'),
  ('simio'),
  ('simpatio'),
  ('simpozio'),
  ('simptomo'),
  ('sinagogo'),
  ('sincere'),
  ('sin-dediĉo'),
  ('sin-deteno'),
  ('sindromo'),
  ('singulto'),
  ('sin-sekvo'),
  ('sintakso'),
  ('sin-teno'),
  ('sireno'),
  ('situi'),
  ('skajpo'),
  ('skandalo'),
  ('skani'),
  ('skeĉo'),
  ('skeleto'),
  ('skii'),
  ('skizo'),
  ('sklaveco'),
  ('sklavo'),
  ('skulptaĵo'),
  ('skulpti'),
  ('skvamoj'),
  ('slipo'),
  ('slogano'),
  ('slovaka'),
  ('social-demokrato'),
  ('socialismo'),
  ('socialisto'),
  ('sociologio'),
  ('sofisto'),
  ('sofo'),
  ('sojlo'),
  ('sojo'),
  ('solena'),
  ('solidara'),
  ('solidareco'),
  ('solstico'),
  ('soneto'),
  ('sonĝo'),
  ('son-registraĵo'),
  ('sopiri'),
  ('sorĉi'),
  ('sorĉisto'),
  ('sorto'),
  ('sovaĝa'),
  ('sovaĝbesto'),
  ('soveta'),
  ('Sovet-unio'),
  ('spaco'),
  ('spac-ŝipo'),
  ('Sparto'),
  ('specifa'),
  ('specimeno'),
  ('specio'),
  ('spektaĵo'),
  ('spektaklo'),
  ('spektanto'),
  ('spekti'),
  ('spektro'),
  ('spiko'),
  ('spioni'),
  ('spiono'),
  ('sponsoro'),
  ('sprita'),
  ('spuro'),
  ('s-ro'),
  ('stadio'),
  ('stadiono'),
  ('standardo'),
  ('stano'),
  ('star-punkto'),
  ('starti'),
  ('statistika'),
  ('statistiko'),
  ('statuo'),
  ('statuto'),
  ('stilo'),
  ('stimuli'),
  ('stomako'),
  ('strategio'),
  ('strebi'),
  ('strigo'),
  ('strio'),
  ('strofo'),
  ('strukturo'),
  ('stumpo'),
  ('subjekto'),
  ('sub-premata'),
  ('sub-premi'),
  ('sub-skribi'),
  ('substantivo'),
  ('sub-streki'),
  ('sub-tenanto'),
  ('sub-teni'),
  ('sub-teno'),
  ('sub-teksto'),
  ('subtila'),
  ('sub-titolo'),
  ('subvencii'),
  ('subvencio'),
  ('sufikso'),
  ('sugesti'),
  ('sulfura'),
  ('sultano'),
  ('supera mez-lernejo'),
  ('superheroo'),
  ('superi'),
  ('super-jaro'),
  ('super-natura'),
  ('supo'),
  ('supraĵe'),
  ('sur-bendigo'),
  ('surda'),
  ('surfaco'),
  ('surpriza'),
  ('surprizi'),
  ('surpriziĝi'),
  ('surprizo'),
  ('suspekti'),
  ('susuri'),
  ('sutro'),
  ('svarmi'),
  ('svastiko'),
  ('svisa'),
  ('ŝajnigi'),
  ('ŝalti'),
  ('ŝanceliĝi'),
  ('ŝargi'),
  ('ŝarko'),
  ('ŝat-okupo'),
  ('Ŝava'),
  ('ŝelo'),
  ('ŝelo-zingibro'),
  ('ŝildo'),
  ('ŝirmi'),
  ('ŝoforo'),
  ('ŝoko'),
  ('ŝpruci'),
  ('ŝtormo'),
  ('ŝuisto'),
  ('ŝuldi'),
  ('tabako'),
  ('tabelo'),
  ('tabua'),
  ('tabuleto (tabul-komputilo)'),
  ('tabul-ludo'),
  ('taĝeto'),
  ('tajdo'),
  ('Tajvano'),
  ('taksado'),
  ('taksi'),
  ('takto'),
  ('talenta'),
  ('talento'),
  ('talio'),
  ('talismano'),
  ('tamburo'),
  ('taoismo'),
  ('tapiŝo'),
  ('tatara'),
  ('tavolo'),
  ('TB (terabajto)'),
  ('t.e.'),
  ('teamo'),
  ('tedi'),
  ('teknologio'),
  ('teksisto'),
  ('telefonio sen-fadena (esprimo ne plu uzata)'),
  ('Telegramo'),
  ('teleporti'),
  ('teleskopo'),
  ('temperaturo'),
  ('tempesto'),
  ('templo'),
  ('tendaro'),
  ('tendenco'),
  ('tendo'),
  ('tendumi'),
  ('teniso'),
  ('tento'),
  ('teoria'),
  ('tereno'),
  ('teritorio'),
  ('terminaro'),
  ('termino'),
  ('terminologio'),
  ('terorismo'),
  ('teroristo'),
  ('ter-tremo'),
  ('testamento'),
  ('testi'),
  ('testo'),
  ('testudo'),
  ('tezo'),
  ('Tibeto'),
  ('tifo'),
  ('tigro'),
  ('tikli'),
  ('tiktako'),
  ('tipa'),
  ('titoli'),
  ('titolo'),
  ('titol-strio'),
  ('toleremo'),
  ('toleri'),
  ('tombejo'),
  ('tombo'),
  ('tondro'),
  ('toskana'),
  ('tosto'),
  ('trabo'),
  ('trafa'),
  ('tragedia'),
  ('trajno'),
  ('trajto'),
  ('traktato'),
  ('tramo'),
  ('trans-porto'),
  ('trans-vivi'),
  ('tra-pasi ekzamenon'),
  ('trapezo'),
  ('trejnado'),
  ('trejni'),
  ('treme'),
  ('trempi'),
  ('treno'),
  ('treti'),
  ('trezoro'),
  ('tribo'),
  ('triki'),
  ('tristeco'),
  ('trompi'),
  ('trompo'),
  ('trono'),
  ('trudi'),
  ('trud-izoliĝo'),
  ('trud-mesaĝo'),
  ('trunko'),
  ('tuberkulozo'),
  ('tulipo'),
  ('tumulo'),
  ('tunelo'),
  ('tuno'),
  ('turkiso'),
  ('turmenti'),
  ('turnei'),
  ('turo'),
  ('Tvitero (Twitter)'),
  ('ultrasona'),
  ('umi'),
  ('Unesko'),
  ('ungego'),
  ('ungo'),
  ('uniformo'),
  ('unika'),
  ('unio'),
  ('universo'),
  ('unua-grada'),
  ('unuope'),
  ('urb-estraro'),
  ('urĝe'),
  ('urinejo'),
  ('urino'),
  ('urso'),
  ('Usono'),
  ('uverturo'),
  ('vagabondo'),
  ('vagonaro'),
  ('vakcini'),
  ('vakciniĝi'),
  ('valizo'),
  ('valo'),
  ('vana'),
  ('vane'),
  ('vango'),
  ('varbi'),
  ('varia'),
  ('variaj'),
  ('varii'),
  ('vario'),
  ('varo'),
  ('ve!'),
  ('vegana'),
  ('vegetara'),
  ('vegetarano'),
  ('vegetarismo'),
  ('vejno'),
  ('velki'),
  ('velo'),
  ('venena'),
  ('veneno'),
  ('venĝo'),
  ('ventolilo'),
  ('ventolisto'),
  ('ventro'),
  ('ventumilo'),
  ('verbo'),
  ('versio'),
  ('verso'),
  ('ver-ŝajne'),
  ('vesperto'),
  ('veterano'),
  ('vet-kuro'),
  ('vibrado'),
  ('video'),
  ('video-blogisto'),
  ('vid-punkto'),
  ('vidvino'),
  ('Vieno'),
  ('vikingo'),
  ('viki-paĝo'),
  ('vikipedio'),
  ('viktimo'),
  ('vin-beroj'),
  ('violono'),
  ('virto'),
  ('viruso'),
  ('viruso (en komputado)'),
  ('viv-resumo'),
  ('viv-teni'),
  ('vizio'),
  ('voĉ-doni'),
  ('voĉ-dono'),
  ('vokalo'),
  ('volonte'),
  ('volontula'),
  ('volontuli'),
  ('volontulo'),
  ('volumo'),
  ('vomi'),
  ('vori'),
  ('vorto-provizo'),
  ('vorto-stoko'),
  ('vort-trezoro'),
  ('vortumi'),
  ('vosto'),
  ('vualo'),
  ('vulkano'),
  ('vulpo'),
  ('vundi'),
  ('vundo'),
  ('Vikipedio (Wikipedia)'),
  ('zenito'),
  ('zigzagi'),
  ('zono'),
  ('zonzio'),
  ('Zoom');

  INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('abelo', 'abelo', 'abelo: utila insekto, kiu vizitas florojn kaj faras dolĉan manĝaĵon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('abio', 'abio', 'abio: alta ĉiam-verda arbo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('abomena', 'abomena', 'abomena: kaŭzanta senton de malamego pro siaj tre malagrablaj kaj malŝatindaj ecoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('abortigo', 'abortigo', 'abortigo: forigo de ido antaŭ ol ĝi naskiĝos.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('absoluta', 'absoluta', 'absoluta: sen iu ajn dubo aŭ ebleco pri diskuto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('absolute', 'absolute', 'absolute: tute, plene, sen iu ajn dubo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('abunda', 'abunda', 'abunda: en bona kvanto aŭ nombro, kiu sufiĉos al ĉiaj bezonoj, sen risko de mankoj.  ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('abunde', 'abunde', 'abunde: en tre grandaj kvantoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('abundi', 'abundi', 'abundi: ekzisti en tre grandaj kvantoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('acido', 'acido', 'acido: akvo-simila materialo kun akra gusto; la pli fortaj specoj kapablas piki la haŭton kaj formanĝi plurajn aferojn, kiujn ili tuŝas.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('adapti', 'adapti', 'adapti: ŝanĝi ion por ke ĝi pli bone taŭgu por iu speciala celo aŭ kondiĉo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('adaptiĝi', 'adaptiĝi', 'adaptiĝi: ŝanĝiĝi kun la celo pli bone taŭgi por iu speciala situacio aŭ kondiĉo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('adiaŭ', 'adiaŭ', 'adiaŭ: saluto kiam oni foriras por tre longa tempo aŭ por ĉiam.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('adjektivo', 'adjektivo', 'adjektivo: vorto, kiu finiĝas per -a en Esperanto, kiu montras econ aŭ kvaliton, ekzemple “granda”, “bona”.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('administra', 'administra', 'administra: rilata al la laboro por prizorgi la funkciadon de organizaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('administrado', 'administrado', 'administrado: prizorgado de la funkciado de organizaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('administri', 'administri', 'administri: prizorgi la funkciadon de organizaĵo aŭ de konto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('admiri', 'admiri', 'admiri: opinii, ke io aŭ iu estas pli ol normale bona aŭ bela. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('admoni', 'admoni', 'admoni: kuraĝigi homon per firma parolo al ago aŭ plenumo de devo; aŭ diri, ke tiu homo faris malbonan agon, aŭ ne plenumis sian devon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('adoleskanto', 'adoleskanto', 'adoleskanto: junulo inter proksimume 12 kaj 18 jaroj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('adopti', 'adopti', 'adopti: alpreni nepropran infanon kiel sian.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('adverbo', 'adverbo', 'adverbo: e-vorto en Esperanto, ekzemple “bone”, “rapide”, “feliĉe”.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('afikso', 'afikso', 'afikso: vortero, kiun oni aldonas antaŭ aŭ post Esperanta kapvorto por krei novan vorton, ekzemple mal-, -in-, -et-.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aflikti', 'aflikti', 'aflikti: kaŭzi fortan kor-doloron. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('afranko', 'afranko', 'afranko: pago por la sendokosto de letero aŭ pako; metado de poŝtmarkoj sur leteron aŭ pakon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('agentejo (gazetara)', 'agentejo (gazetara)', 'agentejo (gazetara): novaĵ-servo, kiu sendas novaĵojn kaj informojn al gazetoj kaj aliaj amas-komunikiloj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aglo', 'aglo', 'aglo: granda birdo, kiu kaptas kaj manĝas malgrandajn bestojn kaj birdojn, foje konsiderata la reĝo de la birdoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('agnoski', 'agnoski', 'agnoski: publike anonci, ke io estas vera kaj ĝusta.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('agnosko', 'agnosko', 'agnosko: publika anonco, ke io estas vera kaj ĝusta.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('agresema', 'agresema', 'agresema: ĉiam preta ataki, eĉ senkiale.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aĥ', 'aĥ', 'aĥ: ekkrio pro forta emocio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('akademio', 'akademio', 'akademio: asocio de verkistoj, artistoj, sciencistoj aŭ simile, kiuj renkontiĝas por interŝanĝi ideojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('akceli', 'akceli', 'akceli: plirapidigi, plifruigi, progresigi, antaŭenigi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('akcenti', 'akcenti', 'akcenti: diri frazon, vorton aŭ parton de vorto pli forte ol la ceteron, por ke ĝi estu pli rimarkebla.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('akcento', 'akcento', 'akcento: parto de vorto, kiun oni elparolas pli forte ol la ceteron, por ke ĝi estu pli rimarkebla.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('akcidento', 'akcidento', 'akcidento: ne-atendita malfeliĉa okazaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('akĉento', 'akĉento', 'akĉento: aparta parolmaniero de iu loko aŭ socia klaso.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('a.K.E.', 'a.K.E.', 'a.K.E.: antaŭ Komuna Erao (= antaŭ la jaro nulo laŭ la internacie uzata sistemo).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('akiri', 'akiri', 'akiri: ekhavi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('akompani', 'akompani', 'akompani: kun-iri, kun-ludi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('akompano', 'akompano', 'akompano: kun-irado, kun-ludado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('akordo', 'akordo', 'akordo: pluraj muzik-notoj, kiuj sonas samtempe. [') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('akreo', 'akreo', 'akreo: malnova unuo de ter-mezurado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('akrostiko', 'akrostiko', 'akrostiko: teksto, en kiu la unua litero de ĉiuj linioj formas vorton.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('akso', 'akso', 'akso: rekta linio, reala aŭ imaga, kiu iras tra la centro de objekto, kiel maŝino aŭ rado, kiu turniĝas ĉirkaŭ ĝi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aktoro', 'aktoro', 'aktoro: homo, kiu ludas en teatraĵo aŭ filmo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aktuala', 'aktuala', 'aktuala: nuntempa.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('akuŝi', 'akuŝi', 'akuŝi: naski.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('akuzi', 'akuzi', 'akuzi: diri, ke iu kulpas pri io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('akuzo', 'akuzo', 'akuzo: anonco, ke iu kulpas pri io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('akvarelo', 'akvarelo', 'akvarelo: pentraĵo sur papero per akvo-solveblaj farboj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('akvo-tubo', 'akvo-tubo', 'akvo-tubo: longa maldika ilo, laŭ kiu fluas akvo, ekzemple por akvumi ĝardenon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('albumo', 'albumo', 'albumo: bela kajero, en kiu oni konservas notojn, fotojn, desegnaĵojn, kolektitajn poŝtmarkojn kaj similaj aĵojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('al-dona', 'al-dona', 'al-dona: donata kiel plia afero al tio, kio jam ekzistas.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('al-doni', 'al-doni', 'al-doni: doni aŭ diri ion plian, krom tio, kion oni jam donis aŭ diris.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('al-doniĝi', 'al-doniĝi', 'al-doniĝi: esti metita kiel io plia al tio, kio jam troviĝas en grupo, loko, aŭ situacio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('al-dono', 'al-dono', 'al-dono: dono de plia afero al tio, kio jam ekzistas.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('alergia', 'alergia', 'alergia: kun forta, malsana re-ago ekzemple kontraŭ iu manĝaĵo aŭ planto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('al-frostiĝi', 'al-frostiĝi', 'al-frostiĝi: iĝi glacie malmola pro frosto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('algoritmo', 'algoritmo', 'algoritmo: serio de precizaj instrukcioj, uzata en komputado por solvi problemon. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aliancanoj', 'aliancanoj', 'aliancanoj: membroj de apartaj grupoj, kiuj interkonsentas kune batali aŭ labori.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('alianciĝi', 'alianciĝi', 'alianciĝi: interkonsenti batali aŭ labori kune.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aliĝi', 'aliĝi', 'aliĝi: aldoniĝi, almetiĝi, membriĝi, aparteniĝi al, iĝi partoprenanto en io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aliĝilo', 'aliĝilo', 'aliĝilo: dokumento per kiu oni enskribiĝas al kongreso aŭ simila aranĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aliĝinto', 'aliĝinto', 'aliĝinto: homo, kiu enskribiĝis por ĉe-esti en kongreso aŭ por membriĝi en asocio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aliĝo', 'aliĝo', 'aliĝo: aldoniĝo, almetiĝo, membriĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('alkoholaĵo', 'alkoholaĵo', 'alkoholaĵo: vino kaj biero estas alkoholaj trinkaĵoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('al-kroĉi', 'al-kroĉi', 'al-kroĉi: pendigi, al-ligi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('al-loga', 'al-loga', 'al-loga: tia, ke ĝi logas la okulon, la deziron, la intereson; bela, plaĉa, rigardinda.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Alpoj', 'Alpoj', 'Alpoj: la plej granda Eŭropa montaro, inter Italujo kaj la apudaj landoj Francujo, Svislando, Aŭstrujo kaj Slovenujo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('altaja', 'altaja', 'altaja: lingvo parolata en montara regiono de okcidenta Siberio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('alternativa', 'alternativa', 'alternativa: aganta ekster la idearo de la reganta socia ordo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('alternativo', 'alternativo', 'alternativo: necesa elekto inter du aferoj; unu el pluraj elekteblaj aferoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aludo', 'aludo', 'aludo: temo priparolata sen klaraj vortoj, kiuj iel komprenigas pri kio temas; nerekta sciigo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('al-voki', 'al-voki', 'al-voki: fari peton, kvazaŭ laŭte vokante, por ke oni atentu.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('amatora', 'amatora', 'amatora: praktikanta sporton, arton aŭ similan agadon pro ŝato kaj plezuro, ne kiel profesiulo. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('amatoro', 'amatoro', 'amatoro: homo kiu praktikas sporton, arton aŭ similan agadon pro ŝato kaj plezuro, ne kiel profesiulo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Amazonio', 'Amazonio', 'Amazonio: unu el la ŝtatoj de Brazilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ambasadejo', 'ambasadejo', 'ambasadejo: konstruaĵo, kie troviĝas la homo kiu, nome de sia ŝtato, prizorgas ĝiajn aferojn eksterlande.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ambasadoro', 'ambasadoro', 'ambasadoro: homo kiu, nome de sia ŝtato, prizorgas ĝiajn aferojn eksterlande.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ambicia', 'ambicia', 'ambicia: celanta tre alte.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('amindumo', 'amindumo', 'amindumo: montrado per sia amema ag-maniero, ke oni trovas alian homon aminda.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('amori', 'amori', 'amori: seksumi kun ĝuo kaj plezuro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('amoro', 'amoro', 'amoro: seksumado kun ĝuo kaj plezuro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ampleksa', 'ampleksa', 'ampleksa: granda, vasta, entenanta multajn aferojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ampleksi', 'ampleksi', 'ampleksi: enteni en si multajn aferojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('amplekso', 'amplekso', 'amplekso: grandeco, vasteco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ampolo', 'ampolo', 'ampolo: elektra lumigilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('analitiko', 'analitiko', 'analitiko: parto de la nombro-scienco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('analizi', 'analizi', 'analizi: studi aferon detale, prenante en konsideron ĉiun unuopan aspekton.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('analizo', 'analizo', 'analizo: detala studo, kiu prenas en konsideron ĉiun unuopan aspekton de iu afero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('anarkiismo', 'anarkiismo', 'anarkiismo: socia kaj politika sistemo, kiu kontraŭas ĉian ŝtatan regadon, kaj proponas memregatan socion surbaze de libervola kunlaborado; senregeco, senestreco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('anarkiisto', 'anarkiisto', 'anarkiisto: proponanto de socia kaj politika sistemo, kiu kontraŭas ĉian ŝtatan regadon, kaj proponas memregatan socion surbaze de libervola kunlaborado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('anaso', 'anaso', 'anaso: akvobirdo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('androido', 'androido', 'androido: speciala mastruma sistemo, evoluigita de Google, kiu ebligas la funkciadon kaj uzadon de poŝtelefonaj, tabul-komputilaj kaj aliaj komputilaj programoj, kiel ekzemple tiuj de Chrome OS.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('anekdoto', 'anekdoto', 'anekdoto: mallonga rakonto pri interesa, amuza aŭ nekutima okazaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aneksi', 'aneksi', 'aneksi: enpreni en sian ŝtaton terpecon aŭ regionon, kiu apartenas al alia ŝtato.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('anglikano', 'anglikano', 'anglikano: membro de la ŝtata religio de Anglujo, kiu havas la reĝon aŭ reĝinon kiel ĉefon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('anĝelo', 'anĝelo', 'anĝelo: supernatura estulo sendita de Dio, kutime imagata kun flugiloj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('anonima', 'anonima', 'anonima: sen-noma, ne diskoniganta sian nomon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('antaŭ-juĝo', 'antaŭ-juĝo', 'antaŭ-juĝo: tro rapida malbona juĝo pri homo, antaŭ ol oni plene konas lin/ŝin; tro rapida juĝo farita sen kono de la afero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('antaŭ-parolo', 'antaŭ-parolo', 'antaŭ-parolo: enkonduka parto de parolado, libro aŭ alia verko, en kiu oni klarigas ĝian temon, celon, metodon kaj simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('anteno', 'anteno', 'anteno: metalo ilo starigita por elsendi aŭ ricevi radio-programojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('anticipe', 'anticipe', 'anticipe: antaŭtempe, pli frue.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('antikva', 'antikva', 'antikva: malnovega.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Antiloj', 'Antiloj', 'Antiloj: insularo inter Atlantiko kaj la Kariba Maro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('antilopo', 'antilopo', 'antilopo: besto kun kvar longaj kruroj, kiu vivas en varmaj landoj en grandaj aroj kaj kuras tre rapide.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('anti-militisto', 'anti-militisto', 'anti-militisto: homo, kiu estas kontraŭ milito.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('antologio', 'antologio', 'antologio: kolekto de verkoj en unu libro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('apartismo', 'apartismo', 'apartismo: politika sistemo uzata precipe en Sud-Afriko ĝis la 90-aj jaroj, laŭ kiu homgrupoj estas apartigitaj surbaze de la haŭt-koloro. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aplaŭdo', 'aplaŭdo', 'aplaŭdo: frapado de la manoj unu kontraŭ la alia fine de iu prezento por montri, ke oni estas kontenta pri ĝia enhavo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aplikado', 'aplikado', 'aplikado: praktika uzado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aplikaĵo', 'aplikaĵo', 'aplikaĵo: komputila programo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('apliki', 'apliki', 'apliki: uzi en la praktiko; uzi ion laŭ ties celo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('apliko', 'apliko', 'apliko: praktika uzado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('apoge', 'apoge', 'apoge: fortigante la pozicion de homo, popolo, asocio, politiko aŭ simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('apogi', 'apogi', 'apogi: helpi kaj kunlabori por plifortigi la situacion de iu aŭ io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('apogo', 'apogo', 'apogo: helpo kaj kunlaboro por plifortigi la situacion de iu aŭ io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('apoteko', 'apoteko', 'apoteko: vendejo, kie oni vendas kuracilojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aprobi', 'aprobi', 'aprobi: diri, ke la faroj aŭ diraĵoj de alia homo aŭ grupo, estas bonaj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('araba', 'araba', 'araba: lingvo parolata en la sud-okcidenta parto de Irano kaj en multaj landoj de Mez-oriento kaj Norda Afriko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('arbo-trunko', 'arbo-trunko', 'arbo-trunko: la plej forta, dika, ligna parto de arbo, sub kiu kreskas kapvortoj kaj supre la folioj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('arbusto', 'arbusto', 'arbusto: ligneca planto malpli alta ol arbo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('areo', 'areo', 'areo: loko aŭ spaco kun difinitaj limoj kaj difinita uzo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aresti', 'aresti', 'aresti: kapti homon, kiu (supozeble) agis kontraŭleĝe, kaj teni tiun homon ĉe policejo aŭ en malliberejo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('argumento', 'argumento', 'argumento: fakto aŭ kialo, kiun oni prezentas por konvinki iun aŭ por montri la pravecon de iu ideo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('arĝento', 'arĝento', 'arĝento: brilanta blanka valora metalo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('arĥeologio', 'arĥeologio', 'arĥeologio: scienco pri la konstruaĵoj, arto kaj aliaj restaĵoj de la pratempo. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('arkaika', 'arkaika', 'arkaika: malnoviĝinta, ne plu uzata, laŭ la maniero de la pasinteco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('arkeologio', 'arkeologio', 'arkeologio: vidu arĥeologio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('arkeologo', 'arkeologo', 'arkeologo: sciencisto, kiu serĉas kaj studas restaĵojn el malnovegaj tempoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('arkitekto', 'arkitekto', 'arkitekto: homo, kiu profesie sin okupas pri la planado kaj formo de domoj kaj aliaj konstruaĵoj, farante detalajn planojn kaj kunlaborante kun la konstruistoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('arkitekturo', 'arkitekturo', 'arkitekturo: la arto kaj scienco pri planado kaj farado de konstruaĵoj.	') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('arkivi', 'arkivi', 'arkivi: meti en kolekton de malnovaj dokumentoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('arkivo', 'arkivo', 'arkivo: kolekto de malnovaj dokumentoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('armeo', 'armeo', 'armeo: la tuta militistaro de ŝtato.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aromo', 'aromo', 'aromo: delikata kaj agrabla odoro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('artefarita', 'artefarita', 'artefarita: kreita de homo aŭ homoj, ne evoluinta nature de si mem.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('artiko', 'artiko', 'artiko: loko, kie du ostoj estas ligitaj, tiel ke unu aŭ ambaŭ el ili povas moviĝi aŭ turniĝi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('asembleo', 'asembleo', 'asembleo: grava kunveno de asocio aŭ alia organizaĵo, kie oni faras decidojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aserti', 'aserti', 'aserti: diri laŭ decida maniero, ke io estas vera.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('asigni', 'asigni', 'asigni: doni rimedojn por aparta celo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('asteroido', 'asteroido', 'asteroido: ĉiela objekto malgranda.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('astrofiziko', 'astrofiziko', 'astrofiziko: scienco pri la konsisto kaj ecoj de la steloj kaj aliaj ĉielaj objektoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('astronomio', 'astronomio', 'astronomio: scienco pri la steloj kaj aliaj ĉielaj objektoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('astronomo', 'astronomo', 'astronomo: sciencisto, kiu studas la stelojn kaj aliajn ĉielajn objektojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ateliero', 'ateliero', 'ateliero: laborejo de artisto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('atesti', 'atesti', 'atesti: certigi fakton, ĉar oni mem vidis aŭ spertis ĝin. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('atesto, atestilo', 'atesto, atestilo', 'atesto, atestilo: dokumento por montri, ke oni partoprenis en kurso, sukcesis en ekzameno, aŭ simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('atesto', 'atesto', 'atesto: ago, vorto, skribo aŭ alia signo, per kiu oni montras ian fakton.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('atm', 'atm', 'atm: antaŭ-tag-meze') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('atmosfero', 'atmosfero', 'atmosfero: gasa nubo ĉirkaŭanta la Teron, stelon aŭ alian ĉielan objekton.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('atom-milito', 'atom-milito', 'atom-milito: milito, en kiu oni uzas tre danĝeran armilon kun forta, neniiga energio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('atribui', 'atribui', 'atribui: opinii, ke aĵo, ago aŭ eco apartenas al iu aŭ io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aŭdaca', 'aŭdaca', 'aŭdaca: preta fari ion malgraŭ danĝeroj, malhelpoj aŭ sociaj premoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aŭguri', 'aŭguri', 'aŭguri: antaŭ-vidi aŭ antaŭ-imagi la estontecon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aŭspicii', 'aŭspicii', 'aŭspicii: doni sian nomon kaj protekton al iu aranĝo, ekzemple al kunveno aŭ konkurso.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Aŭstrujo', 'Aŭstrujo', 'Aŭstrujo: lando en Centra Eŭropo kun ĉefurbo Vieno.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aŭtismo', 'aŭtismo', 'aŭtismo: stato de homo kun aparta, nekutima maniero pensi kaj vidi la mondon, mallerta en socia komunikado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aŭtobiografio', 'aŭtobiografio', 'aŭtobiografio: priskribo de la vivo de iu persono, verkita de tiu persono mem.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aŭtomata', 'aŭtomata', 'aŭtomata: funcianta maŝine sen homa direktado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aŭtomate', 'aŭtomate', 'aŭtomate: maŝine, sen homa direktado; agante senpense, kvazaŭ oni mem estus maŝino.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aŭtomato', 'aŭtomato', 'aŭtomato: maŝino, kiu vendas biletojn, cigaredojn aŭ simile; maŝino programita por respondi al telefon-vokoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aŭtonoma', 'aŭtonoma', 'aŭtonoma: reganta sin mem; memstare decidanta pri kelkaj politikaj aferoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aŭtoro', 'aŭtoro', 'aŭtoro: verkinto, kreinto, farinto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('avantaĝo', 'avantaĝo', 'avantaĝo: tio, kio alportas pli bonan situacion, gajnon aŭ utilon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('avara', 'avara', 'avara: ne deziranta elspezi sian monon, ne volanta doni ion ajn el siaj riĉaĵoj al aliaj homoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aventurema', 'aventurema', 'aventurema: deziranta eliri en la mondo por sperti neordinarajn, nekutimajn okazaĵojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('aventuro', 'aventuro', 'aventuro: neordinara, neatendita sperto, ofte (sed ne nepre) okazanta dum vojaĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('averti', 'averti', 'averti: informi pri estonta danĝero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('avida', 'avida', 'avida: kun tre forta deziro posedi ion.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('azeno', 'azeno', 'azeno: besto simila al malgranda ĉevalo kun longaj oreloj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bagatela', 'bagatela', 'bagatela: malgrava, senvalora, ne konsiderinda.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bahaa', 'bahaa', 'bahaa: rilata al religia movado fondita en Irano en 1863, kiu instruas serĉadon de la vero kaj unuecon de la homaro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('baki', 'baki', 'baki: kuiri panon, kukojn, sed ankaŭ potojn aŭ aliajn objektojn, en fermita kesto aŭ en truo sub la tero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bakisto', 'bakisto', 'bakisto: homo, kiu kuiras panojn kaj kukojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('balai', 'balai', 'balai: forigi malpuraĵojn sur la planko per ilo, kiu forpuŝas ilin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('balkono', 'balkono', 'balkono: elstaraĵo ĉe ekstera aŭ interna muro de domo, alte super la tero, kie eblas stari.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bambuo', 'bambuo', 'bambuo: tre alta ligneca herbo, rapide kreskanta, kiun oni uzas por konstruado aŭ por fari meblojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('banano', 'banano', 'banano: long-forma flava frukto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bankedo', 'bankedo', 'bankedo: festa manĝo kun multaj partoprenantoj, ofte en speciala okazo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('barako', 'barako', 'barako: dumtempa konstruaĵo, plej ofte el ligno, por loĝigi soldatojn, laboristojn, malsanulojn, militkaptitojn kaj simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('barakti', 'barakti', 'barakti: tre forte movi la brakojn kaj krurojn, kiam oni estas kaptita en malfacila situacio; forte peni kontraŭ malfacilaĵoj kaj malhelpoj. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Barato', 'Barato', 'Barato: alia nomo de Hindujo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('barbaro', 'barbaro', 'barbaro: kruela, senkompata, nekulturita homo, kiu ne konas la regulojn de la socio, aŭ ne zorgas pri ili.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('barbo', 'barbo', 'barbo: vizaĝ-haroj de viro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('barelo', 'barelo', 'barelo: ronda ujo uzata por teni akvon, vinon, bieron kaj simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('barono', 'barono', 'barono: viro, kiu pro sia familia deveno aŭ pro decido de sia reĝo, ricevas apartajn rajtojn, pli ol havas ordinaraj homoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('basko', 'basko', 'basko: pendanta parto de vesto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bastono', 'bastono', 'bastono: longa peco de ligno uzata por helpi marŝadon aŭ por bati.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bazaro', 'bazaro', 'bazaro: granda kovrita aŭ sub-ĉiela vendejo, kie troviĝas multaj malpli grandaj vendejoj aŭ vendotabloj. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('BBC (British Broadcasting Corporation)', 'BBC (British Broadcasting Corporation)', 'BBC (British Broadcasting Corporation): nacia organizaĵo, kiu dissendas radiajn kaj televidajn programojn en Britujo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bebo', 'bebo', 'bebo: tre juna infano.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bedo', 'bedo', 'bedo: malgranda terpeco preparita por plantado de floroj aŭ aliaj plantoj. [Ilustraĵo]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('belarto', 'belarto', 'belarto: ĉiu el la artoj, kiuj celas belecon, ekzemple literaturo, muziko, pentrado, danco kaj tiel plu.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('beletro', 'beletro', 'beletro: literaturo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('belga', 'belga', 'belga: rilata al Belgujo, lando en okcidenta Eŭropo kun ĉefurbo Bruselo. [Ilus.]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('beni', 'beni', 'beni: al-voki al Dio, por ke li bone traktu iun.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('benko', 'benko', 'benko: longa malmola sidilo, ofte sendorsa, por pluraj homoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('beno', 'beno', 'beno: ago aŭ objekto, kiu al-vokas la bonan traktadon de Dio; al-voko al Dio, por ke li bone traktu iun.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('benzino', 'benzino', 'benzino: brul-materialo por aŭtoj kaj simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('(fajro)brigadisto', '(fajro)brigadisto', '(fajro)brigadisto: membro de organizita grupo, kiu batalas kontraŭ fajroj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Betleĥemo', 'Betleĥemo', 'Betleĥemo: urbo en Palestino, kie laŭ la kristana tradicio naskiĝis Jesuo Kristo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('betono', 'betono', 'betono: griza konstru-materialo, ofte uzata en modernaj konstruaĵoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Biblio', 'Biblio', 'Biblio: la sankta libro de la judoj kaj kristanoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bienisto', 'bienisto', 'bienisto: prizorganto de kampara ter-posedaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bieno', 'bieno', 'bieno: kampara ter-posedaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bild-strio', 'bild-strio', 'bild-strio: rakonto en la formo de serio de bildoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bindejo', 'bindejo', 'bindejo: laborejo, kie oni kunkudras la kajerojn de libro kaj surmetas sur ilin malmolan kovrilon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bindi', 'bindi', 'bindi: kunkudri la kajerojn de libro kaj surmeti sur ilin malmolan kovrilon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('biografio', 'biografio', 'biografio: verko rakontanta pri la tuta vivo de iu persono.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('biologio', 'biologio', 'biologio: scienco pri la vivantaj estaĵoj, ĉefe bestoj kaj plantoj; la vivantaj estaĵoj, ĉefe bestoj kaj plantoj, de iu aparta loko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('biskvito', 'biskvito', 'biskvito: seka, maldika kuketo, kuirita ĝis ĝi estas malmola.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bita', 'bita', 'bita: cifereca formo de skriba, sona, aŭ filmita dokumento, uzebla en komputiloj kaj simile. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bitigi', 'bitigi', 'bitigi: ŝanĝi skriban dokumenton en ciferecan formon, uzeblan en komputiloj kaj simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('blazono', 'blazono', 'blazono: signo per kiu prezentas sin grava familio, urbo, universitato, reĝlando.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('blinda', 'blinda', 'blinda: sen la kapablo vidi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('blokiĝi', 'blokiĝi', 'blokiĝi: ne plu kapabli moviĝi pri iu malhelpo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('boato', 'boato', 'boato: malgranda akvo-veturilo, kiu entenas malmulte da homoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bombado', 'bombado', 'bombado: ĵetado de militiloj, kiuj disrompiĝas kun laŭtega bruo, kiam ili atingas malamikan lokon, detruante konstraŭaĵojn kaj mortigante homojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bombardi', 'bombardi', 'bombardi: daŭre ataki celon; daŭre kaj ripete sendi al iu postulojn aŭ petojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bon-aŭgura', 'bon-aŭgura', 'bon-aŭgura: signanta feliĉan okazaĵon en la estonteco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bon-konduta', 'bon-konduta', 'bon-konduta: aganta bone kaj laŭ la ĝusta maniero (precipe pri infanoj)') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bon-trovo', 'bon-trovo', 'bon-trovo: laŭplaĉa gusto aŭ decido, persona opinio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bon-vena', 'bon-vena', 'bon-vena: akceptata kun kora kontenteco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bon-venigi', 'bon-venigi', 'bon-venigi: akcepti ĵus alvenintan homon aŭ novan aferon en maniero afabla kaj kor-gajiga.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bon-veno', 'bon-veno', 'bon-veno: afabla kaj kor-gajiga akcepto, kiam homo alvenas.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bori', 'bori', 'bori: fari truon, turnante akran ilon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('borso', 'borso', 'borso: aĉetado kaj vendado de ne ĉeestantaj aĵoj, je prezo, kiu povas altiĝi aŭ malaltiĝi, se la aĵo estas tre bezonata aŭ ne dezirata.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('botaniko', 'botaniko', 'botaniko: scienco pri la plantoj') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('brajlo', 'brajlo', 'brajlo: speciala skribsistemo por blinduloj, konsistanta el punktoj, kiuj elstaras de la paĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('brakumi', 'brakumi', 'brakumi: ĉirkaŭbraki, meti siajn brakojn ĉirkaŭ iun.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('brakumo', 'brakumo', 'brakumo: la ago ĉirkaŭbraki, meti siajn brakojn ĉirkaŭ iun.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('branĉo', 'branĉo', 'branĉo: fako, dividaĵo de io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('brava', 'brava', 'brava: tre lerta, tre kapabla, sen-tima malgraŭ danĝeroj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Brazilo', 'Brazilo', 'Brazilo: la plej granda lando en Sud-Ameriko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bremsi', 'bremsi', 'bremsi: malrapidigi aŭ haltigi veturilon, planon, agadon, aŭ alian aferon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bretaro', 'bretaro', 'bretaro: meblo, kiu entenas librojn aŭ aliajn objektojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('breto', 'breto', 'breto: tabulo pli longa ol larĝa, sur kiun oni metas aferojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('briko', 'briko', 'briko: malmola aĵo kun regula formo uzata por konstrui murojn, domojn kaj aliajn konstruaĵojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('brodi', 'brodi', 'brodi: fari belajn desegnojn per kudrado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('brokantejo', 'brokantejo', 'brokantejo: vendejo, kie oni vendas jam uzitajn aĵojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('brokolo', 'brokolo', 'brokolo: verda legomo kun flora kapo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bronkito', 'bronkito', 'bronkito: malsano, kiu kaŭzas malbonan farton interne de la brusto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bronzo', 'bronzo', 'bronzo: metalo farita el du aŭ pli da metaloj miksitaj kune, ofte uzata en la prahistoria periodo por fari ilojn, artaĵojn, kaj aliajn objektojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('brosi', 'brosi', 'brosi: per speciala ilo (broso) ordigi la harojn aŭ purigi la dentojn. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('broso', 'broso', 'broso: ilo per kiu oni ordigas la harojn aŭ purigas la dentojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('broŝuro', 'broŝuro', 'broŝuro: libreto kun malmultaj paĝoj kaj paperaj kovriloj, kiu donas informojn pri iu servo, ekzemple pri Esperanto aŭ pri turismado. [Ilustraĵo]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('brovo', 'brovo', 'brovo: linio de haroj super la okulo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bruto', 'bruto', 'bruto: kvar-krura herbo-manĝanta hejma besto (bovo, ŝafo, ĉevalo kaj simile).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bubo', 'bubo', 'bubo: knabo malbona kaj senrespekta. [Ilus.]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('budhano', 'budhano', 'budhano: homo, kiu sekvas la instruojn de Budho.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('budhismo', 'budhismo', 'budhismo: religio bazita sur la instruoj de Budho.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bukedo', 'bukedo', 'bukedo: aro da floroj ligitaj kune.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('buklo', 'buklo', 'buklo: har-volvaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bulo', 'bulo', 'bulo: ronda objekto farita ekzemple el pasto, pano, rizo, tero, neĝo aŭ simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('bunta', 'bunta', 'bunta: mult-kolora, miks-kolora; kun multaj diversaj aspektoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('butero', 'butero', 'butero: grasaĵo el lakto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('butiko', 'butiko', 'butiko: vendejo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('butono', 'butono', 'butono: malgranda rond-forma objekto por fermi vestaĵon; simil-forma elstara klaveto, kiun oni premas por funkciigi maŝinon; ekran-bildeto, kiun oni alklakas por aktivigi iun komandon (ordonon); alklakebla signo en komputila aŭ telefona ekrano; oni alklakas ĝin por kaŭzi ion novan, ekzemple por funkciigi programon aŭ montri novan paĝon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('caro', 'caro', 'caro: la reganto de Rusujo ĝis 1917.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('cedi', 'cedi', 'cedi: ne plu kontraŭbatali; konfesi sin venkita.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('cejano', 'cejano', 'cejano: blua kampara floro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('cendo', 'cendo', 'cendo: malgranda monero kun centona valoro, ekzemple centono de eŭro € aŭ de dolaro $.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('cerbo', 'cerbo', 'cerbo: griza aĵo interne de la kapo, per kiu oni pensas kaj regas la korpon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('cerbumi', 'cerbumi', 'cerbumi: forte kaj streĉe pensadi pri io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ceremonio', 'ceremonio', 'ceremonio: festo por speciala religia aŭ publiko okazo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('cervo', 'cervo', 'cervo: kvar-krura besto, kies viro portas altajn elstaraĵojn sur la kapo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('cifereca', 'cifereca', 'cifereca: en formo legebla per komputilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('cigano', 'cigano', 'cigano: membro de popolo, kiu devenis el Hindujo, kiu tradicie ne fiks-loĝas, sed moviĝas de loko al loko, ĉefe en Eŭropo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('cigno', 'cigno', 'cigno: granda kaj bela akvobirdo, kutime blanka, kun longa kolo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('cikatro', 'cikatro', 'cikatro: videbla postrestaĵo de antaŭa rompo, ŝiro aŭ tranĉo en la korpo aŭ foje en la menso.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ciklo', 'ciklo', 'ciklo: vico de okazaĵoj, kiu ripetiĝas de tempo al tempo, kaj kies fino estas la komenco de nova serio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('cindro', 'cindro', 'cindro: tute forbrulintaj restaĵoj post fajro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('cirko', 'cirko', 'cirko: granda loko, ofte rond-forma, kie prezentistoj montras siajn eksterordinarajn lertojn al la publiko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('cirkonstanco', 'cirkonstanco', 'cirkonstanco: unu el la samtempaj detaloj ĉirkaŭ iu okazaĵo aŭ situacio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('citaĵo', 'citaĵo', 'citaĵo: frazo aŭ teksto laŭvorte ripetita, skribe aŭ parole, de iu verko aŭ parolado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('citi', 'citi', 'citi: skribe aŭ parole ripeti vorton, frazon aŭ tekston el la verko aŭ parolado de alia homo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('citiloj', 'citiloj', 'citiloj: paro de markiloj, kiuj ĉirkaŭas "iujn vortojn", por montri ke la vortoj estas <<diraĵo>>, aŭ ke ili havas specialan signifon en la frazo. Estas pluraj specoj de citiloj: “ “, ‘ ‘ , << >> , kaj aliaj, uzataj en diversaj landoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('civilizo', 'civilizo', 'civilizo: altnivela stato de la homa socio; evoluinta socio, nun sufiĉe malproksima de sia frua kaj natura stato.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('civilulo', 'civilulo', 'civilulo: ordinara civitano ne-militista.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('civitano', 'civitano', 'civitano: persono apartenanta al ŝtato, regiono aŭ urbo, kun politikaj rajtoj pro tiu aparteno.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('cm', 'cm', 'cm: centimetro (centono de metro).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĉ.', 'ĉ.', 'ĉ.: ĉirkaŭ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĉagreno', 'ĉagreno', 'ĉagreno: malplezuro, malĝojo, mensa suferado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĉampiono', 'ĉampiono', 'ĉampiono: venkinto en sport-konkurso.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĉapitro', 'ĉapitro', 'ĉapitro: dividaĵo de libro, signita per nomo aŭ numero.  ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĉaro', 'ĉaro', 'ĉaro: du-rada veturilo tirata de ĉevaloj, uzata antaŭ multaj jarcentoj en bataloj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĉaso', 'ĉaso', 'ĉaso: postkurado de homo aŭ besto por kapti aŭ mortigi lin/ŝin/ĝin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĉe-esta', 'ĉe-esta', 'ĉe-esta: estanta tie en la loko, kie io okazas.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĉef-ministro', 'ĉef-ministro', 'ĉef-ministro: la estro de registaro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĉef-rolulo', 'ĉef-rolulo', 'ĉef-rolulo: la ĉefa aganto en teatraĵo, romano aŭ filmo, kaj ankaŭ en ludoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĉeĥo', 'ĉeĥo', 'ĉeĥo: ano de popolo loĝanta en la lando Ĉeĥujo, meze de Eŭropo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Ĉeĥoslovakujo', 'Ĉeĥoslovakujo', 'Ĉeĥoslovakujo: centra-Eŭropa ŝtato inter 1918 kaj 1992, nuntempe dividita inter Ĉeĥujo kaj Slovakujo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĉelo', 'ĉelo', 'ĉelo: ĉambreto por unu persono, ekzemple en malliberejo; malgranda ejo ĉiuflanke fermita; la plej malgranda vivanta unuo, la baza ero el kiu konsistas kreskaĵoj kaj bestoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĉeroka', 'ĉeroka', 'ĉeroka: rilata al popolo loĝanta en la suda parto de la nuna Usono jam de prahistoriaj tempoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĉiĉerono', 'ĉiĉerono', 'ĉiĉerono: gvidisto, kiu montras la vidindaĵojn de loko al vizitantoj; gvidisto por turistoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĉielarko', 'ĉielarko', 'ĉielarko: sepkolora formo (parto de cirklo) en la ĉielo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĉies', 'ĉies', 'ĉies: de ĉiuj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĉokolado', 'ĉokolado', 'ĉokolado: tre bongusta dolĉaĵo, plej ofte brun-kolora.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('damaĝo', 'damaĝo', 'damaĝo: rompiĝo aŭ malboniĝo kaŭzita de mistraktado (ne nepre intenca).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('datumo', 'datumo', 'datumo: komputile traktebla informo, ekzemple nombroj, literoj, vortoj, nomoj, kaj simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Daŭismo', 'Daŭismo', 'Daŭismo: pensosistemo aŭ religio origine el Ĉinujo, laŭ kiu oni devas sekvi la Daŭon (la vojon).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('daŭripova', 'daŭripova', 'daŭripova: kapabla daŭri dum longa periodo; kapabla daŭri ĉar ĝi ne kaŭzas problemojn al la vivmedio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('debato', 'debato', 'debato: diskuto laŭ difinitaj reguloj, ekzemple dum kongreso aŭ eduka aranĝo; organizita diskuto kun difinitaj reguloj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('deci', 'deci', 'deci: taŭgi laŭ la normalaj sociaj kutimoj aŭ la respekto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('deĉifri', 'deĉifri', 'deĉifri: pene legi malbone skribitan tekston aŭ provi kompreni malklare esprimitan penson.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('dediĉi', 'dediĉi', 'dediĉi: plenkore doni sin mem aŭ ion alian por iu celo; publike anonci, ke iu artaĵo celas respekti la memoron de iu(j) mortinto(j), aŭ esprimi respekton al homo(j) ankoraŭ vivanta(j).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('defia', 'defia', 'defia: prezentanta malfacilaĵon, kiun oni apenaŭ sukcesas superi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('defii', 'defii', 'defii: kuraĝe kaj batalprete kontraŭstari homon aŭ situacion.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('definitiva', 'definitiva', 'definitiva: ne plu ŝanĝebla post la lasta, fina ŝanĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('defio', 'defio', 'defio: invito al batalo aŭ konkurso; afero, kiu enhavas malfacile supereblajn taskojn; malfacilaĵo, kiun oni apenaŭ sukcesas superi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('degeli', 'degeli', 'degeli: ŝanĝiĝi de glacio en akvon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('deĵori', 'deĵori', 'deĵori: plenumi sian laboron, kutime laŭ difinita horaro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('deklami', 'deklami', 'deklami: voĉlegi poemon aŭ alian verkon en artisma maniero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('deklaracio', 'deklaracio', 'deklaracio: grava publika sciigo pri iu temo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('deklari', 'deklari', 'deklari: publike sciigi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('deklaro', 'deklaro', 'deklaro: publika sciigo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('de l’', 'de l’', 'de l’: de la') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('delegito', 'delegito', 'delegito: homo sendita por prezenti la aferojn de iu asocio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('demenco', 'demenco', 'demenco: malfortiĝo de la mensaj kapabloj ĉefe (sed ne nur) en maljunuloj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('demokratio', 'demokratio', 'demokratio: sistemo de regado, laŭ kiu la tuta popolo elektas siajn politikistojn per voĉdonado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('denaskulo', 'denaskulo', 'denaskulo: iu, kiu lernis Esperanton en la familio ekde sia naskiĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('departemento', 'departemento', 'departemento: fako de grava organizaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('dependi', 'dependi', 'dependi: esti sekvo de (iu situacio).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('deputito', 'deputito', 'deputito: homo elektita kiel politika aganto. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('des pli', 'des pli', 'des pli: tiom pli, eĉ pli.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('deserto', 'deserto', 'deserto: dolĉa manĝaĵo aŭ fruktoj manĝataj kiel la lasta parto de manĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('destinita', 'destinita', 'destinita: intencita.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('destino', 'destino', 'destino: la estonta neŝangebla vivo de homo, ĉu bona, ĉu malbona.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('detektivo', 'detektivo', 'detektivo: polica aŭ eksterpolica esploristo, kiu provas malkovri, kiu faris iun kontraŭ-leĝan agon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('detrui', 'detrui', 'detrui: forigi ion por ke ĝi ne plu ekzistu, malkonstrui, nuligi, neniigi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('detruo', 'detruo', 'detruo: forigo de afero por ke ĝi ne plu ekzistu, malkonstruo, nuligo, neniigo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('de-veni', 'de-veni', 'de-veni: veni de iu fonto aŭ situacio; rezulti de.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('de-veno', 'de-veno', 'de-veno: la loko aŭ situacio de kie oni venis.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('devige', 'devige', 'devige: pro devo, pro neceso.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('devizo', 'devizo', 'devizo: mallonga frazo prezentanta la idealojn de unuopa homo, asocio, universitato, ŝtato aŭ simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('dezerto', 'dezerto', 'dezerto: regiono, kie preskaŭ neniam pluvas, tiel ke ĝi estas tre seka kaj kun malmultaj kreskaĵoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('diabeto', 'diabeto', 'diabeto: dumviva malsano pro kiu la korpo ne povas taŭge trakti sukerojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('diagnozi', 'diagnozi', 'diagnozi: ekkoni malsanon aŭ alian problemon per esplorado pri la maniero, laŭ kiu ĝi prezentas sin. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('diagnozo', 'diagnozo', 'diagnozo: ekkono de malsano per esplorado pri la maniero, laŭ kiu ĝi prezentas sin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('dialekto', 'dialekto', 'dialekto: aparta formo de lingvo uzata en iu regiono, aŭ en aparta socia grupo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('dialogo', 'dialogo', 'dialogo: interparolado inter du aŭ pli da homoj, precipe en libro aŭ teatraĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('diamanto', 'diamanto', 'diamanto: tre valora ŝtono, tre malmola kaj brilanta, kutime senkolora kaj travidebla.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('difekti', 'difekti', 'difekti: malbonigi aŭ rompi ion, fari ĝin neuzebla aŭ senvalora per mistraktado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('difektiĝo', 'difektiĝo', 'difektiĝo: malboniĝo aŭ rompiĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('digesta sistemo', 'digesta sistemo', 'digesta sistemo: la sistemo interne de la korpo, kiu transformas manĝaĵojn en aĵojn, kiujn la korpo povos utiligi aŭ forigi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('diktatoro', 'diktatoro', 'diktatoro: reganto aŭ ŝtatestro kun tiel granda povo, ke ne eblas kontraŭstari ĝin. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('diligenta', 'diligenta', 'diligenta: tre laborema, konstante kaj zorge laboranta. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('diligente', 'diligente', 'diligente: tre laboreme, konstante kaj zorge laborante. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('dimensio', 'dimensio', 'dimensio: ĉiu el la mezuroj necesaj por prezenti la formon de objekto (longeco, larĝeco, alteco, dikeco kaj aliaj).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('dinastio', 'dinastio', 'dinastio: sinsekvo de regantoj el la sama familio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('diplomato', 'diplomato', 'diplomato: homo, kiu laboras en tiu parto de la ŝtata servo, kiu okupiĝas pri rilatoj kun aliaj ŝtatoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('diplomo', 'diplomo', 'diplomo: dokumento donita de lernejo, universitato aŭ simile, por montri, ke la ricevinto sukcese plenumis ekzamenon aŭ finis kurson.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('direktoro', 'direktoro', 'direktoro: ĉefo de oficejo, laborejo, komerca organizaĵo, asocio aŭ simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('diskoteko', 'diskoteko', 'diskoteko: dancejo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('diskriminacii', 'diskriminacii', 'diskriminacii: maljuste trakti unu homon aŭ hom-grupon malpli bone ol aliajn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('diskriminacio', 'diskriminacio', 'diskriminacio: maljusta traktado de unu homo aŭ hom-grupo kompare kun aliaj. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('disponi', 'disponi', 'disponi: havi ion aŭ iun por uzi laŭ sia volo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('disponigo', 'disponigo', 'disponigo: la fakto, ke io estas havebla.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('dispono', 'dispono', 'dispono: la povo havi ion aŭ iun por uzi laŭ sia volo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('dis-sendi', 'dis-sendi', 'dis-sendi: elsendi programon per radio, televido aŭ Interreto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('dis-sendo', 'dis-sendo', 'dis-sendo: program-elsendo per radio, televido aŭ Interreto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('distanciĝo', 'distanciĝo', 'distanciĝo: intenca malproksimiĝo for de homo aŭ de iu ideo aŭ opinio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('distanco', 'distanco', 'distanco: spaco inter du lokoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('distingi', 'distingi', 'distingi: rekoni la diferencon inter pluraj similaj aferoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('distra', 'distra', 'distra: amuza, gajiga; tia, ke ĝi deturnas la atenton aŭ la spiriton de pli seriozaj aferoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('distri', 'distri', 'distri: deturni la atenton aŭ la spiriton; amuzi, gajigi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('distribui', 'distribui', 'distribui: disdoni.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('distriĝi', 'distriĝi', 'distriĝi: deturni sian menson de maltrankviligaj pensoj; amuziĝi, gajiĝi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('disvolvi', 'disvolvi', 'disvolvi: evoluigi al pli forta, pli vasta, aŭ pli bone kreskinta formo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('disvolviĝi', 'disvolviĝi', 'disvolviĝi: malfermi sin de volvita formo; evolui al pli forta, pli vasta, aŭ pli bone kreskinta formo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('divano', 'divano', 'divano: meblo simila al lito, sur kiu oni sidas aŭ kuŝas, sed ne kutime dormas.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('divenado', 'divenado', 'divenado: provo solvi demandon aŭ kompreni nekonatan aferon, surbaze de nesufiĉaj informoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('diveni', 'diveni', 'diveni: supozi fakton sen sufiĉaj informoj por scii, ĉu oni pravas.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('dogmo', 'dogmo', 'dogmo: ideo, kiun oni ne rajtas pridiskuti, kvankam nenio montras, ke ĝi certe estas vera.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('dolaro ($)', 'dolaro ($)', 'dolaro ($): mon-unuo en Usono, Kanado, Aŭstralio kaj kelkaj aliaj landoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('dolĉapatro', 'dolĉapatro', 'dolĉapatro: patro (nerekomendita vorto surbaze de la hungara).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('dolmeno', 'dolmeno', 'dolmeno: grupo de ŝtonegoj el la prahistoria tempo, super loko, kie mortintoj estis enterigitaj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('dorno', 'dorno', 'dorno: pikilo de planto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('drako', 'drako', 'drako: granda flug-kapabla besto ne reale ekzistanta, tre grava en aziaj kulturoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('drama', 'drama', 'drama: teatreca, tre emociiga kvazaŭ en teatraĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('drameca', 'drameca', 'drameca: kvazaŭ en teatraĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('dramo', 'dramo', 'dramo: teatraĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('drinki', 'drinki', 'drinki: trinki bieron, vinon kaj similajn pli fortajn trinkaĵojn en tro grandaj kvantoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('druido', 'druido', 'druido: saĝulo kaj religia gvidanto de la malnova kelta popolo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('dubli', 'dubli', 'dubli: anstataŭigi la voĉojn en filmo per aliaj voĉoj, parolantaj (kutime) en alia lingvo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('dudek-kelke', 'dudek-kelke', 'dudek-kelke: dudek kaj  kelkaj; iom pli ol dudek.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('du-fokusaj okulvitroj', 'du-fokusaj okulvitroj', 'du-fokusaj okulvitroj: okulvitroj, kiuj ebligas vidi malproksime, sed ankaŭ proksime por legado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Duolingo', 'Duolingo', 'Duolingo: retejo por lingvo-lernado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('DVD', 'DVD', 'DVD: lum-disko por konservi kaj remontri aŭ reaŭdigi filmojn, fotojn, muzikon kaj aliajn informojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ebenaĵo', 'ebenaĵo', 'ebenaĵo: vasta ebena regiono.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ebria', 'ebria', 'ebria: ne povanta klare pensi aŭ agi, trinkinte tro da vino aŭ biero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Edeno', 'Edeno', 'Edeno: laŭ la sankta libro de la juda, kristana kaj islama religioj, belega ĝardeno en kiu vivis la unuaj homoj post la kreado de la mondo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('egido', 'egido', 'egido: rego, kontrolo, prizorgo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('eĥo', 'eĥo', 'eĥo: sono, kiu frapas kontraŭ objekto, kaj resaltas malpli forte al la orelo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ekidno', 'ekidno', 'ekidno: besto kovrita de pikiloj, el Aŭstralio kaj apudaj landoj, kiu naskas ovojn, tamen manĝigas siajn idojn per la propra lakto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ekipaĵo', 'ekipaĵo', 'ekipaĵo: aro de ĉiuj iloj bezonataj por la funkciado de fabriko, ŝipo, radiostacio aŭ simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('eklezio', 'eklezio', 'eklezio: organizita religia komunumo, kutime kristana.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('eklipso', 'eklipso', 'eklipso: okazo, kiam la luno parte aŭ tute kaŝas la sunon, aŭ kiam la Tero pasas inter la suno kaj la luno, tiel ke la suno ne lumigas la lunon. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ekologio', 'ekologio', 'ekologio: scienco pri la rilatoj de la vivantaj estaĵoj inter si kaj kun sia medio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ekonomiko', 'ekonomiko', 'ekonomiko: teorio kaj scienco pri la produktado kaj dividado de riĉaĵoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ekosistemo', 'ekosistemo', 'ekosistemo: sistemo de interrilatoj inter vivantaj estaĵoj kaj ties vivmedio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ekscita', 'ekscita', 'ekscita: vigliga, kaŭzanta grandan intereson kaj sci-volon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('eksciti', 'eksciti', 'eksciti: kaŭzi vigligan emocion pro grandaj intereso kaj sci-volo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ekscito', 'ekscito', 'ekscito: vigliga emocio, kaŭzanta grandan intereson kaj sci-volon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('eksperimenta', 'eksperimenta', 'eksperimenta: bazita sur provo malkovri rezulton de io necerta.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('eksperimento', 'eksperimento', 'eksperimento: provo, ofte farata de sciencisto, por malkovri rezulton de io necerta.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('eksplodi', 'eksplodi', 'eksplodi: subite kaj tre forte rompiĝi pro interna premo de gasoj; subite kaj brue ellasi fortan emocion, kiun oni ne povas plu reteni; subite kaj brue komenciĝi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ekspluatata', 'ekspluatata', 'ekspluatata: devigata labori, ne ricevante taŭgan pagon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ekspluati', 'ekspluati', 'ekspluati: devigi la homojn labori, ne donante taŭgan pagon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('eksporti', 'eksporti', 'eksporti: elporti komercaĵojn al alia lando.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ekspozicio', 'ekspozicio', 'ekspozicio: publika prezentado, elmontrado de diversaj produktoj de industrio kaj arto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ekspreso (ekspresa trajno)', 'ekspreso (ekspresa trajno)', 'ekspreso (ekspresa trajno): rapida vagonaro, kiu veturas nur inter la ĉefaj stacidomoj, kun malmultaj haltoj survoje.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ekstermi', 'ekstermi', 'ekstermi: mortigi, neniigi (nenio-igi), entute forigi kaj malaperigi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ekster-ordinara', 'ekster-ordinara', 'ekster-ordinara: tre speciala.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ekstremismo', 'ekstremismo', 'ekstremismo: opinioj aŭ agoj plej malproksimaj de la mezo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ekvatoro', 'ekvatoro', 'ekvatoro: imaga linio ĉirkaŭ la centro de la Tero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ekvilibra', 'ekvilibra', 'ekvilibra: ne falanta al unu aŭ la alia flanko, sed restanta egale inter la du; donanta ĝustan aŭ egalan atenton al ambaŭ flankoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ekvilibro', 'ekvilibro', 'ekvilibro: stato de korpo, kiu restas senmova, kiam ĝi estas altirata de egalaj sed kontraŭaj fortoj; ne falanta al unu aŭ la alia flanko, sed restanta egale inter la du; ĝusta aŭ egala atento al pluraj aferoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ekvinokso', 'ekvinokso', 'ekvinokso: unu el la du okazoj en la jaro, en marto kaj septembro, kiam la tago kaj la nokto estas egale longaj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ekzekuti', 'ekzekuti', 'ekzekuti: leĝe mortigi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ekzekuto', 'ekzekuto', 'ekzekuto: leĝa mortigo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ekzemplero', 'ekzemplero', 'ekzemplero: unu ekzemplo el pluraj samaj aferoj (de libro, revuo, disko aŭ simile).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ekzili', 'ekzili', 'ekzili: devigi homon forlasi sian propran landon, sen la rajto reveni tien.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ekzilo', 'ekzilo', 'ekzilo: deviga foriro el sia propra lando, sen la rajto reveni tien.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('elafuro', 'elafuro', 'elafuro: kvar-krura besto el Ĉinujo kun altaj elstaraĵoj sur la kapo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('elĉerpiĝi', 'elĉerpiĝi', 'elĉerpiĝi: finiĝi, ne plu esti havebla ĉar tute foruzita.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('elĉerpita', 'elĉerpita', 'elĉerpita: jam foruzinta ĉiujn fortojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('el-diri', 'el-diri', 'el-diri: esprimi en serioza, elpensita maniero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('eldonado', 'eldonado', 'eldonado: produktado kaj publikigo de verkoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('eldonaĵo', 'eldonaĵo', 'eldonaĵo: libro aŭ alia verko produktita de komerca organizaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('eldonejo', 'eldonejo', 'eldonejo: komerca organizaĵo, kiu produktas librojn kaj aliajn verkojn, kaj aranĝas ilian vendadon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('el-doni', 'el-doni', 'el-doni: produkti kaj publikigi verkon; produkti kaj disdoni monerojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('el-dono', 'el-dono', 'el-dono: ĉiuj kopioj de libro produktitaj samtempe kun precize sama enhavo. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('elefanto', 'elefanto', 'elefanto: la plej granda besto vivanta sur la tero, kun longa, lerta nazego; ĝi vivas en Azio kaj Afriko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('eleganta', 'eleganta', 'eleganta: bele kaj plaĉe aranĝita laŭ la plej bona gusto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('elektronika', 'elektronika', 'elektronika: uzanta sistemon de interne ligitaj elektraj eroj por fari malfacilajn taskojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('elementa', 'elementa', 'elementa: simpla, baza, komenca.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('elemento', 'elemento', 'elemento: ĉiu el la bazaj eroj, kiuj kune konsistigas tutaĵon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('elgenuiĝi', 'elgenuiĝi', 'elgenuiĝi: leviĝi, kiam oni staras sur la genuoj (la meza punkto de la kruroj). ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('elizii', 'elizii', 'elizii: forigi la finan parton de vorto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('el-lerni', 'el-lerni', 'el-lerni: tiel bone lerni, ke oni plene scias.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('el-migri', 'el-migri', 'el-migri: forlasi sian propran landon por transloĝiĝi en fremda lando.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('el-migrinto', 'el-migrinto', 'el-migrinto: homo, kiu forlasis sian propran landon por transloĝiĝi en fremda lando.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('elp.', 'elp.', 'elp.: elparolo') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('el-radikigi', 'el-radikigi', 'el-radikigi: elŝiri planton el la tero kune kun la kapvortoj; tute eltiri ion. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('el-sendi', 'el-sendi', 'el-sendi: dissendi programon per radio, televido aŭ Interreto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('el-sendo', 'el-sendo', 'el-sendo: programo dissendata per radio, televido aŭ Interreto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('el-stara', 'el-stara', 'el-stara: staranta alte super la aliaj membroj de grupo pro rimarkinda kvalito.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('el-stari', 'el-stari', 'el-stari: stari alte super la aliaj membroj de grupo pro rimarkinda kvalito.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('el-ŝuti', 'el-ŝuti', 'el-ŝuti: alporti komputilan programon el la reto en komputilon aŭ telefonon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('el-teni', 'el-teni', 'el-teni: havi la forton, energion, volon por akcepti malagrablan situacion sen plendi aŭ subiĝi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('el-teno', 'el-teno', 'el-teno: la forto aŭ preteco akcepti malagrablan situacion sen plendi aŭ subiĝi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('emblemo', 'emblemo', 'emblemo: bildeto por prezenti iun ideon, ekzemple la emblemo de Esperanto estas la verda stelo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('emeritiĝi', 'emeritiĝi', 'emeritiĝi: forlasi sian laboron, plej ofte pro maljuneco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('emerito', 'emerito', 'emerito: homo, kiu ĉesis labori, plej ofte pro maljuneco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('emfazi', 'emfazi', 'emfazi: doni apartan gravecon al io, parolante pri ĝi per pli forta voĉo, aŭ alimaniere donante al ĝi pli da atento.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('emfazo', 'emfazo', 'emfazo: maniero prezenti aferon, kiu donas al ĝi pli da graveco aŭ pli da atento.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('eminenta', 'eminenta', 'eminenta: supera, alt-merita.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('enciklopedio', 'enciklopedio', 'enciklopedio: verko, kiel ekzemple Vikipedio, kiu enhavas en mallonga formo ĉion konatan pri unu aŭ pri ĉiuj fakoj de la homa scio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('enfokusigi', 'enfokusigi', 'enfokusigi: ĝustigi bildon, ekzemple per fotilo, ĝis eblas vidi ĝin kiel eble plej klare.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('enigma', 'enigma', 'enigma: malklara, malfacile komprenebla, vekanta demandojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('enketi', 'enketi', 'enketi: metode esplori pri iu okazaĵo aŭ opinio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('enketilo', 'enketilo', 'enketilo: demandilo, per kiu oni esploras la opiniojn de homoj pri iu temo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('enketo', 'enketo', 'enketo: metoda esploro pri iu okazaĵo aŭ opinio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('enkodigo', 'enkodigo', 'enkodigo: sistemo por la interna aranĝo de vid-dosiero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('en-konduko', 'en-konduko', 'en-konduko: prezento komence de libro aŭ alia verko, kiu kvazaŭ “kondukas” la leganton internen.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('en-migri', 'en-migri', 'en-migri: vojaĝi de unu loko al alia por tie restadi kaj tie ekloĝi kaj labori. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ensemblo', 'ensemblo', 'ensemblo: grupo de muzikistoj aŭ aktoroj kune ludantaj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('enterigi', 'enterigi', 'enterigi: meti en la teron.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('entombigi', 'entombigi', 'entombigi: meti mortinton en la teron.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('entrepreni', 'entrepreni', 'entrepreni: komenci gravan, grandan taskon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('entrepreno', 'entrepreno', 'entrepreno: ekonomia unuo, ekzemple komerca, industria, bonfara kaj simile, kiu produktas ion aŭ plenumas iun taskon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('entuziasma', 'entuziasma', 'entuziasma: kun granda, emocia ŝato pri iu afero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('entuziasme', 'entuziasme', 'entuziasme: kun granda, emocia ŝato pri iu afero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('entuziasmo', 'entuziasmo', 'entuziasmo: granda, emocia ŝato pri iu afero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('enue', 'enue', 'enue: tre malinterese.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('envia', 'envia', 'envia: malĝoja, ĉar oni ne havas tion, kion alia homo havas.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('epidemio', 'epidemio', 'epidemio: malsano, kiu facile moviĝas de unu homo al alia kaj atakas samtempe multajn homojn en la sama regiono.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('episkopo', 'episkopo', 'episkopo: estro de la kristana komunumo en difinita regiono.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('epoko', 'epoko', 'epoko: aparta tempo-periodo kun siaj propraj ecoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('epopeo', 'epopeo', 'epopeo: grandega verko, ofte poezia, kiu montras la historion kaj spertojn de iu popolo aŭ fama homo. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('erao', 'erao', 'erao: tempo-periodo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('erupcio', 'erupcio', 'erupcio: subita elĵeto de fajro, ŝtonegoj, kaj bolantaj fumoj kaj gasoj, el monto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('escepto', 'escepto', 'escepto: afero kalkulata aparte, kiun oni ne prenas en konsideron.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('esenca', 'esenca', 'esenca: nepre plej grava.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('esenco', 'esenco', 'esenco: la ĉefa, plej baza kaj grava eco de io. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('eseo', 'eseo', 'eseo: mallonga verko en kiu la verkinto detale prezentas sian opinon aŭ esploron. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Esperantio', 'Esperantio', 'Esperantio: Esperantujo, la Esperanta mondo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('esperantologo', 'esperantologo', 'esperantologo: fakulo pri Esperantaj studoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Esperantujo', 'Esperantujo', 'Esperantujo: la Esperanta mondo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('estingi', 'estingi', 'estingi: ĉesigi bruladon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('estrarano', 'estrarano', 'estrarano: membro de la grupo de homoj, kiuj direktas la agadon de asocio aŭ alia organizaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('estraro', 'estraro', 'estraro: la grupo de homoj, kiuj direktas la agadon de asocio aŭ alia organizaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('etaĝo', 'etaĝo', 'etaĝo: unu nivelo de plur-nivela konstruaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('etapo', 'etapo', 'etapo: distanco inter du halt-lokoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('etendi', 'etendi', 'etendi: rektigi, malvolvi, plilongigi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('etendiĝi', 'etendiĝi', 'etendiĝi: malvolviĝi laŭ la longo; okupi pli vastan spacon aŭ tempon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('eterna', 'eterna', 'eterna: daŭronta senfine.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('etikedo', 'etikedo', 'etikedo: papereto fiksita al objekto kun informoj pri ties nomo, adreso, prezo, enhavo kaj simile; tiaj informoj fiksitaj al reta mesaĝo, dokumento, dosiero aŭ simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('etimologio', 'etimologio', 'etimologio: la deveno kaj historio de vorto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('etna', 'etna', 'etna: rilata al aparta hom-grupo malsama de aliaj hom-grupoj ekzemple pro lingvo, religio kaj aliaj kulturaj tradicioj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('etno', 'etno', 'etno: aparta hom-grupo malsama de aliaj hom-grupoj ekzemple pro lingvo, religio kaj aliaj kulturaj tradicioj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('etnologio', 'etnologio', 'etnologio: scienca studado de diversaj homgrupoj, socioj kaj kulturoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('etoso', 'etoso', 'etoso: ĝenerala sento, kiun la ĉirkaŭaĵo prezentas al la ĉeestantoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Eŭritmio', 'Eŭritmio', 'Eŭritmio: sistemo de sin-esprimado per movoj kaj danco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('eŭro (€)', 'eŭro (€)', 'eŭro (€): la mon-unuo uzata en multaj eŭropaj landoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Eŭropa Unio', 'Eŭropa Unio', 'Eŭropa Unio: unuiĝo de 27 eŭropaj landoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('evento', 'evento', 'evento: aparta, sufiĉe grava okazaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('eventuala', 'eventuala', 'eventuala: povanta okazi, depende de necerta situacio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('eventuale', 'eventuale', 'eventuale: kiel povus okazi, depende de necerta situacio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('evidenta', 'evidenta', 'evidenta: klara kaj facile komprenebla.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('eviti', 'eviti', 'eviti: peni ne fari, ne uzi, ne renkonti.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('evito', 'evito', 'evito: peno ne fari, ne uzi, ne renkonti.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fabelo', 'fabelo', 'fabelo: imagata rakonto pri mirindaj okazaĵoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fabo', 'fabo', 'fabo: malgranda aĵo produktita de iuj plantoj, kiun oni povas manĝi, aŭ meti en la teron por produkti novan planton.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fajro-brigadisto', 'fajro-brigadisto', 'fajro-brigadisto: membro de organizita grupo, kiu batalas kontraŭ fajroj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('faktoro', 'faktoro', 'faktoro: unu el la kaŭzoj, kiuj kontribuas al difinita rezulto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('faldi', 'faldi', 'faldi: meti unu flankon de papero aŭ tuko sur la alian flankon, tiel ke unu flanko kuŝu sur la alia. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('falsa', 'falsa', 'falsa: malvera.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('falsi', 'falsi', 'falsi: prezenti malveran aferon tiel ke ĝi ŝajnu vera.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fanatikulo', 'fanatikulo', 'fanatikulo: homo, kun tiel fortegaj opinioj pri religiaj aŭ politikaj aferoj, ke li aŭ ŝi tute ne kapablas aŭskulti aliajn opiniojn. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fandejo', 'fandejo', 'fandejo: laborejo, kie oni varmigas materialon, ekzemple metalon, ĝis ĝi moliĝas kaj fluas kiel akvo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fandi', 'fandi', 'fandi: varmigi materialon, ekzemple metalon, ĝis ĝi moliĝas kaj fluas kiel akvo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fantazio', 'fantazio', 'fantazio: nereala, imagata kreaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fantomo', 'fantomo', 'fantomo: figuro de mortinta homo, kiun eblas vidi, sed ne tuŝi; io ne vera, nur ŝajna; timiga ideo, kiun oni imagas, eĉ se ĝi ne vere ekzistas.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('faraono', 'faraono', 'faraono: reĝo de la egiptoj antaŭ jarmiloj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('farbi', 'farbi', 'farbi: kolorigi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('farĉi', 'farĉi', 'farĉi: plenigi la internon de manĝaĵo per bongusta miksaĵo el viando, legomoj aŭ fruktoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fasado', 'fasado', 'fasado: la antaŭa muro de konstruaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fasko', 'fasko', 'fasko: aro da longaj objektoj, tenataj aŭ ligitaj kune, ekzemple floroj, lignopecoj aŭ simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fasoni', 'fasoni', 'fasoni: krei kaj fari en la praktiko veston aŭ alian artan objekton.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('faŝisto', 'faŝisto', 'faŝisto: membro de naciisma politika movado, kiu perforte subpremas ĉiujn kontraŭstarantojn; ĝi unue aperis en Italujo kaj aliaj landoj dum la 20-aj kaj 30-aj jaroj de la dudeka jarcento.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fatala', 'fatala', 'fatala: malfeliĉa kaj malbonŝanca okazaĵo, kiun ne eblas malhelpi aŭ forturni.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fatamorgano', 'fatamorgano', 'fatamorgano: imagata vidaĵo, kiu ŝajnas reala al la rigardanto; nereala situacio, kiun oni kredas reala, ĉar oni forte deziras ĝin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('faŭko', 'faŭko', 'faŭko: timiga buŝo de besto, kiu mortigas kaj manĝas aliajn bestojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('favora', 'favora', 'favora: bonvola, helpopreta, helpotaŭga, faciliga, sukcesiga.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('favore', 'favore', 'favore: prezentante aferon kiel bonan kaj utilan.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('favori', 'favori', 'favori: agi en maniero, kiu estas aparte helpa por iu afero, por ke ĝi sukcesu. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('favoro', 'favoro', 'favoro: bonvolemo, preteco helpi, helpo al sukceso, faciligo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fazo', 'fazo', 'fazo: ĉiu el la sinsekvaj partoj en la evoluado de iu afero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('febri', 'febri', 'febri: havi tro varmegan korpon pro malsano.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('federacio', 'federacio', 'federacio: unuiĝo aŭ kungrupiĝo de ŝtatoj, asocioj aŭ organizaĵoj por komuna celo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Fejsbuko (Facebook)', 'Fejsbuko (Facebook)', 'Fejsbuko (Facebook): nomo de populara retejo, kie la homoj interŝanĝas informojn, opiniojn, fotojn ktp.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('feko', 'feko', 'feko: malpuraĵo, kiun homo aŭ besto forigas el sia korpo post manĝado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fekunda', 'fekunda', 'fekunda: naskanta grand-kvante, frukto-dona, tre produktema.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fendo', 'fendo', 'fendo: truo mallarĝa sed longa.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fenikso', 'fenikso', 'fenikso: birdo ne reale ekzistanta, kiu laŭ la rakontoj mortas kaj renaskiĝas en fajro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fenomeno', 'fenomeno', 'fenomeno: natura okazaĵo aparte priparolata kaj nomata; tre speciala okazaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('feo', 'feo', 'feo: homforma estaĵo kutime kun flugiloj, kiu aperas ĉefe en infanrakontoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fervojisto', 'fervojisto', 'fervojisto: homo, kiu laboras ĉe la fer-vojo, tio estas la sistemo de feraj vojoj, sur kiuj veturas vagonaroj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fer-vojo', 'fer-vojo', 'fer-vojo: sistemo de feraj vojoj, sur kiuj veturas vagonaroj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fervora', 'fervora', 'fervora: kun tre forta, plen-kora interesiĝo pri iu afero, kiun oni penas prezenti ankaŭ al aliaj homoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('festivalo', 'festivalo', 'festivalo: granda festa kunveno, ofte kun aparta temo, ekzemple pri arto, filmo, muziko aŭ simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fest-parolado', 'fest-parolado', 'fest-parolado: la ĉefa parolado farata de grava homo dum la malferma kunveno de kongreso.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fi-', 'fi-', 'fi-: tre malbona, tre malbone.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fiasko', 'fiasko', 'fiasko: plena malsukceso.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fidela', 'fidela', 'fidela: restanta ĉiam ĉe la sama amik(in)o, edz(in)o, familio, ŝtato, reĝ(in)o, promeso, idealo aŭ simile, neniam forlasanta tiun, eĉ en malfacila situacio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fidi', 'fidi', 'fidi: plene kredi je la kapablo, servo, helpo de iu, aŭ je la efiko kaj taŭgeco de iu aŭ io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fidinda', 'fidinda', 'fidinda: tia, ke aliaj homoj povas plene kredi je la kvalito, kapablo, efiko, vereco, taŭgeco de iu aŭ io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fiera', 'fiera', 'fiera: kontenta pri siaj propraj meritoj kaj faroj; kontenta esti plene merita. fierigi: veki en alia homo senton de fiero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fi-fama', 'fi-fama', 'fi-fama: fama pro sia malboneco; kun tre malbona famo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fikcia', 'fikcia', 'fikcia: imagata, ne reala.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fikcio', 'fikcio', 'fikcio: romano aŭ rakonto pri afero, kiu ne vere okazis.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('filio', 'filio', 'filio: loka oficejo de asocio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('filozofia', 'filozofia', 'filozofia: kun rilato al pensado pri ĝeneralaj kaj bazaj demandoj, ekzemple pri ekzistado, scioj, valoroj, menso kaj lingvo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('filozofio', 'filozofio', 'filozofio: la studo de ĝeneralaj kaj bazaj demandoj, ekzemple rilate al ekzistado, scioj, valoroj, menso kaj lingvo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('filozofo', 'filozofo', 'filozofo: pensisto, amanto de saĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('finalo', 'finalo', 'finalo: la fina, decidofara ero en konkurso.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('financa', 'financa', 'financa: rilata al la monaj rimedoj de organizaĵo aŭ de homo, aŭ al la stato de la enspezoj kaj elspezoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('finance', 'finance', 'finance: rilate al la monaj rimedoj de organizaĵo aŭ de homo, aŭ al la stato de la enspezoj kaj elspezoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('financi', 'financi', 'financi: havigi mon-rimedojn (por iu agado).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('financo', 'financo', 'financo: monaj rimedoj de organizaĵo aŭ de homo; la stato de la enspezoj kaj elspezoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('firma', 'firma', 'firma: tiel fiksita, ke ĝi ne povas moviĝi; malmola, ne moviĝanta sub premo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('firmao', 'firmao', 'firmao: asocio kun komerca celo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fizike', 'fizike', 'fizike: korpe, ne mense aŭ virtuale.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fiziko', 'fiziko', 'fiziko: scienco pri la movado de la korpoj en la naturo kaj ties inter-agoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fjordo', 'fjordo', 'fjordo: longa, mallarĝa brako de la maro, kiu tranĉas la apudan bordon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('flamigi', 'flamigi', 'flamigi: igi ion ekbruli.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('flamo', 'flamo', 'flamo: hela brilo de brulantaj gasoj en fajro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('flari', 'flari', 'flari: senti odoron per la nazo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('flaro', 'flaro', 'flaro: kapablo senti odoron per la nazo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('flegi', 'flegi', 'flegi: prizorgi malsanulon aŭ malfortulon; ame prizorgi iun aŭ ion.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('flikaĵo', 'flikaĵo', 'flikaĵo: peco de ŝtofo kudrita sur truo en vesto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('flor-fraŭlino', 'flor-fraŭlino', 'flor-fraŭlino: knabino aŭ junulino, kiun en britaj vilaĝoj oni tradicie elektis la 1-an de majo kiel reĝinon de la monato majo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('floso', 'floso', 'floso: aro da tranĉitaj arboj, kunligitaj kaj metitaj en riveron aŭ maron por transporti homojn aŭ materialojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('flug-roboto', 'flug-roboto', 'flug-roboto: aviadilo sen homo interne direktata de malproksime, uzata interalie por foti aŭ por porti aĵojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('flustri', 'flustri', 'flustri: paroli subvoĉe (por ke ne ĉiuj aŭdu).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('foiro', 'foiro', 'foiro: granda perioda kunveno por elmontro de komercaĵoj aŭ aliaj interesaĵoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('foliumi', 'foliumi', 'foliumi: turni la paĝojn de libroj por rapide trarigardi ĝin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('folkloro', 'folkloro', 'folkloro: la popolaj tradicioj kaj kulturo de aparta loko aŭ popolo, ekzemple rakontoj, vestoj, kantoj, dancoj kaj simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fona', 'fona', 'fona: malantaŭ la aferoj, kiuj ĉefe trafas la atenton de la rigardanto aŭ aŭskultanto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fondaĵo', 'fondaĵo', 'fondaĵo: organizaĵo kreita kun apartaj celoj, kiu disdonas monon al homoj aŭ organizaĵoj por helpi projektojn, kiuj realigas la celojn de la fondaĵo.  ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fonetika', 'fonetika', 'fonetika: rilata al la sonoj de lingvo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fono', 'fono', 'fono: la malantaŭa parto de io, videbla aŭ aŭdebla malantaŭ la aferoj, kiuj ĉefe trafas la atenton. (ekzemple en la suba bildo la konstruaĵoj estas en la fono).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fonografo', 'fonografo', 'fonografo: frua formo de aparato por aŭdigi muzikon aŭ voĉon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fontano', 'fontano', 'fontano: arta konstruaĵeto, kiu elĵetas akvon, por beligi ĝardenon aŭ parkon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fonua', 'fonua', 'fonua: la lingvo parolata precipe en Benino.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('forĝi', 'forĝi', 'forĝi: prilabori metalon per fajro kaj frapado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('for-ĵeti', 'for-ĵeti', 'for-ĵeti: ĵeti for ion, kion oni ne volas konservi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('formala', 'formala', 'formala: laŭkutima, laŭregula, laŭleĝa.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('formularo', 'formularo', 'formularo: dokumento, en kiun oni skribas la necesajn detalojn por fari peton aŭ sendi informojn. [Ilustraĵo]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('formulo', 'formulo', 'formulo: skriba maniero esprimi rezulton de nombra kalkulado aŭ scienca leĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('for-pasi', 'for-pasi', 'for-pasi: morti.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('for-paso', 'for-paso', 'for-paso: morto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('for-peli', 'for-peli', 'for-peli: forsendi, forpuŝi, forigi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fortepiano', 'fortepiano', 'fortepiano: frua formo de muzikilo, kiun oni ludas per klavaro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('forumo', 'forumo', 'forumo: loko, kie oni diskutas pri publikaj aferoj; kunveno, kie oni interŝanĝas opiniojn pri iu temo. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('for-velki', 'for-velki', 'for-velki: perdi siajn koloron kaj brilon, malfortiĝi, sekiĝi, ĝis fina mortiĝo kaj neniiĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fragmento', 'fragmento', 'fragmento: peco de rompita objekto; malgranda parto de literatura verko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('franca', 'franca', 'franca: rilata al Francujo, lando en okcidenta Eŭropo kun ĉefurbo Parizo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('frandi', 'frandi', 'frandi: kun plezuro manĝi aŭ trinki bongustaĵon. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('frap-frazo', 'frap-frazo', 'frap-frazo: mallonga, trafa, facile memorebla frazo uzata ekzemple en reklamado aŭ por esprimi politikan opinion.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('frekvenco', 'frekvenco', 'frekvenco: la rapideco laŭ kiu la ondoj de sono aŭ lumo moviĝadas supren-malsupren dum sekundo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fromaĝo', 'fromaĝo', 'fromaĝo: manĝaĵo farita el lakto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fronte al', 'fronte al', 'fronte al: kontraŭrigarde al, vid-al-vide al.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('frukto-dona', 'frukto-dona', 'frukto-dona: donanta multe da fruktoj; donanta bonan rezulton.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('frunto', 'frunto', 'frunto: la supra parto de vizaĝo inter la okuloj kaj la hararo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('frustriĝi', 'frustriĝi', 'frustriĝi: ne povi kontentigi siajn dezirojn aŭ bezonojn pro ekstera malhelpo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fuĝi', 'fuĝi', 'fuĝi: forkuri por savi sin de danĝero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fundamento', 'fundamento', 'fundamento: la bazo de konstruaĵo; la plej necesa parto, kiu subtenas la ceteron; la Fundamento: la plej baza libro pri Esperanto, kiu aperis en 1905. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fundo', 'fundo', 'fundo: plej profunda, malalta loko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('funebra', 'funebra', 'funebra: malĝojega pro ies morto; rilata al la aranĝoj post ies morto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('fungo', 'fungo', 'fungo: ne-verda kreskaĵo; kelkaj specoj estas bongusta manĝaĵo, sed aliaj povas mortigi tiun, kiu manĝas ilin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('furiozo', 'furiozo', 'furiozo: kolerego.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('furora', 'furora', 'furora: afero, kiu subite estas aparte sukcesa, kaj kiun ĉiuj samtempe deziras fari, aĉeti, partopreni.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Gaĝarida', 'Gaĝarida', 'Gaĝarida: la nomo de reganta familio en Persujo (nuntempe Irano) de 1794 ĝis 1925.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('galaksio', 'galaksio', 'galaksio: grandega stel-amaso, observebla kiel aparta grupo, kiel ekzemple la Lakta Vojo, en kiu troviĝas nia propra Tero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('gamo', 'gamo', 'gamo: tuta serio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ganto', 'ganto', 'ganto: vesto por la mano.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('gapi', 'gapi', 'gapi: rigardi iom stulte, kun la buŝo kaj okuloj larĝe malfermitaj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('garantianto', 'garantianto', 'garantianto: homo, kiu promesas, ke iu afero certe okazos, kaj kiu zorgas, ke ĝi okazu. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('gardi', 'gardi', 'gardi: zorgi, por ke ne okazu danĝero aŭ malbono al iu aŭ io; teni aferon ĉe si.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('gastronomio', 'gastronomio', 'gastronomio: la arto kaj scienco pri la plezurigo de la gusto per lerta kaj sperta elektado, preparado kaj aranĝado de manĝaĵoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('gaŭlo', 'gaŭlo', 'gaŭlo: ano de popolo loĝanta en Gaŭlujo (pli-malpli la nuntempaj Francujo kaj Belgujo), antaŭ proksimume 1000-1500 jaroj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('geja', 'geja', 'geja: sekse al-logata de homoj de la sama sekso.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('generacio', 'generacio', 'generacio: tuto de la homoj pli-malpi samaĝaj, vivantaj dum la sama tempo-periodo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('generalo', 'generalo', 'generalo: plej grava estro de soldatoj, kiu planas iliajn agadojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('genio', 'genio', 'genio: brila, ekster-ordinara kapablo krei, verki aŭ fari aferojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('geno', 'geno', 'geno: instrukcioj pri la personaj korpaj propraĵoj, kiujn gepatroj transdonas antaŭ la nasko al siaj idoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('gento', 'gento', 'gento: popolo sam-devena; aro da familioj devenantaj de la samaj prauloj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('genui', 'genui', 'genui: stari sur la genuoj (la meza punkto de la kruroj).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('genuo', 'genuo', 'genuo: la meza punkto de la kruro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('geografio', 'geografio', 'geografio: scienco pri nia Tero, pri ĝia aspekto kaj pri ĝiaj regionoj kaj landoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Gestapo', 'Gestapo', 'Gestapo: tre timata polico en Germanujo dum la nazia periodo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('geto', 'geto', 'geto: parto de urbo, kie en la pasinteco la judoj estis devigataj loĝi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('giganta', 'giganta', 'giganta: grandega, nenormale granda. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('giganto', 'giganto', 'giganto: homo nenormale granda; stelo pli granda kaj hela ol la ordinaraj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('gimnastiko', 'gimnastiko', 'gimnastiko: arto pri ekzercado de la korpo, por ĝin plifortigi kaj lertigi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('gimnazio', 'gimnazio', 'gimnazio: supera lernejo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('gitaro', 'gitaro', 'gitaro: muzikilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('glacea', 'glacea', 'glacea: prilaborita por ricevi aparte brilan aspekton.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('glaciaĵo', 'glaciaĵo', 'glaciaĵo: frostigita dolĉaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('glaci-hokeo', 'glaci-hokeo', 'glaci-hokeo: sporto ludata sur glacio kun longaj lignaj iloj, per kiuj oni frapas pezan diskon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('glata', 'glata', 'glata: sen ia elstaraĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('glazuro', 'glazuro', 'glazuro: dolĉa kovraĵo sur kuko el sukero miksita kun akvo, lakto aŭ simile. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('glitistaro', 'glitistaro', 'glitistaro: aro da homoj, kiuj glitas sur glacio per specialaj ŝuoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('gloro', 'gloro', 'gloro: la plej brila atingo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('glubendo', 'glubendo', 'glubendo: longa mallarĝa peco de papero aŭ plasto, kiu forte fiksiĝas al objektoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('glueca', 'glueca', 'glueca: tia, ke la eroj fiksiĝas unu al la alia.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('golfo', 'golfo', 'golfo: vastega parto de maro eniĝanta en la teron.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('golo', 'golo', 'golo: poento en piedpilka ludo aŭ alia sporto, ricevita kiam ludanto sukcesas trafi la celon per la pilko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('gradigita', 'gradigita', 'gradigita: progresanta iom post iom, paŝon post paŝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('grado', 'grado', 'grado: unu el difinitaj dividoj de progresado, rango, laborloko, studrezultoj aŭ simile; mezurunuo de varmo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('grado (˚)', 'grado (˚)', 'grado (˚): mezurunuo de varmo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('grafikaĵo', 'grafikaĵo', 'grafikaĵo: desegno kiu pli detale prezentas la ideojn diskutatajn en la ĉefa teksto per bildoj, numeroj, teksto kaj aliaj signoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('grafikisto', 'grafikisto', 'grafikisto: homo, kiu okupiĝas pri la aranĝo de la paĝoj kaj la ĝenerala aspekto de revuo, retejo, reklamilo aŭ simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('grafikumi', 'grafikumi', 'grafikumi: okupiĝi pri desegnado uzante komputilan programon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Granda Ursino', 'Granda Ursino', 'Granda Ursino: stelaro proksima al la Norda Stelo, konata per diversaj nomoj en malsamaj kulturoj. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('grandioza', 'grandioza', 'grandioza: forte trafanta pro sia grandeco aŭ pro aliaj okul-frapaj kvalitoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('granito', 'granito', 'granito: speco de ŝtono aparte malmola.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('graveda', 'graveda', 'graveda: portanta idon interne de sia korpo; naskonta.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('gravuraĵo', 'gravuraĵo', 'gravuraĵo: desegnaĵo sur ligno, ŝtono aŭ metalo per iu akra ilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('greke', 'greke', 'greke: en la greka lingvo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('grilo', 'grilo', 'grilo: insekto aktiva kutime nokte, kiu aŭdigas fortan bruon per siaj kruroj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('grimpi', 'grimpi', 'grimpi: supreniri malfacile, ekzemple sur arbo aŭ monto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('groto', 'groto', 'groto: natura aŭ artefarita profunda malplena spaco sub la tero aŭ en la flanko de monto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('grundo', 'grundo', 'grundo: la supraĵo de la tero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('gubernio', 'gubernio', 'gubernio: unu el la 47 regionoj en Japanujo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('gufo', 'gufo', 'gufo: speco de birdo, kiu plej ofte aktivas nokte.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('gufujo', 'gufujo', 'gufujo: trankvila dumnokta trinkejo en Esperantaj junularaj aranĝoj, kie oni trinkas teon kaj babilas.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Guglo (Google)', 'Guglo (Google)', 'Guglo (Google): komerca organizaĵo, kies plej fama servo estas samnoma interreta serĉilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('guto', 'guto', 'guto: unu akvero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('gvarania', 'gvarania', 'gvarania: sud-amerika lingvo parolata precipe en Paragvajo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĝemelaj urboj', 'ĝemelaj urboj', 'ĝemelaj urboj: paro de similaj urboj en malsamaj landoj, kiuj havas specialan rilaton kun komunaj vizitoj kaj kulturaj interŝanĝoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĝemeloj', 'ĝemeloj', 'ĝemeloj: du (aŭ pli da) gefratoj, naskitaj en la sama tago, kaj ofte tre similaj inter si.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĝenro', 'ĝenro', 'ĝenro: kategorio de verkoj, ekzemple poezio, teatraĵo, romano, sed ankaŭ ridiga, malgaja, terura kaj simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĝis-osta', 'ĝis-osta', 'ĝis-osta: tre profunda, per la tuta koro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('hajko', 'hajko', 'hajko: tre mallonga japana poemo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('haki', 'haki', 'haki: dispecigi objekton per forta frapo de akra ilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('halo', 'halo', 'halo: granda kaj kutime publika ĉambro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Haloveno', 'Haloveno', 'Haloveno: tradicia festo dum la nokto inter la 31-a de oktobro kaj la 1-a de novembro, populara precipe en anglalingvaj landoj, kiam la mortintoj eliras, kaj infanoj iras de domo al domo por peti dolĉaĵojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('halto-streko', 'halto-streko', 'halto-streko: skribsigno (–).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('hamburgero', 'hamburgero', 'hamburgero: populara manĝaĵo, konsistanta el rondforma bovaĵtranĉaĵo inter du panoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('handikapita', 'handikapita', 'handikapita: havanta korpan aŭ mensan problemon, kiu malhelpas la normalajn agadojn de la vivo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('handikapo', 'handikapo', 'handikapo: korpa aŭ mensa problemo, kiu malhelpas la normalajn agadojn de la vivo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('hardi', 'hardi', 'hardi: pretigi metalon, metante ĝin unue en fajron kaj poste en malvarman akvon, por ke ĝi fariĝu malmola; trakti homon tiel, ke post suferoj li aŭ ŝi estu pli forta kaj mense kapabla.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('harmonie', 'harmonie', 'harmonie: kun bela aranĝo de samtempaj, tre agrablaj, muzikaj sonoj aŭ koloroj; montrante samecon de sentoj inter pluraj personoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('harmonio', 'harmonio', 'harmonio: bela aranĝo de samtempaj, tre agrablaj, muzikaj sonoj aŭ koloroj ; sameco de sentoj inter pluraj personoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('hazarda', 'hazarda', 'hazarda: neantaŭvidebla, okazanta sen plano, volo, intenco, reguleco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('hazarde', 'hazarde', 'hazarde: neantaŭvideble, okazinte sen plano aŭ intenco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('hazardo', 'hazardo', 'hazardo: afero neantaŭvidebla, okazanta sen plano, volo, intenco, reguleco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('hegemonio', 'hegemonio', 'hegemonio: superregado de unu homgrupo, nacio aŭ simile super aliaj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('heredaĵo', 'heredaĵo', 'heredaĵo: tio, kion oni laŭleĝe trans-donas post sia morto al siaj gefiloj aŭ al aliaj homoj; tio, kion la nuntempaj homoj trans-donas al la homoj, kiuj vivos en la estonteco. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('heredi', 'heredi', 'heredi: ricevi laŭleĝe la posedaĵojn de la gepatroj aŭ aliaj homoj post ties morto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('heredonto', 'heredonto', 'heredonto: la homo, kiu laŭleĝe ricevos la posedaĵojn de la gepatroj aŭ aliaj homoj post ties morto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Herkulo', 'Herkulo', 'Herkulo: fortega duon-dio, pri kiu la malnovaj grekoj kaj romanoj rakontis tradiciajn rakontojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('heroeco', 'heroeco', 'heroeco: farado de tre grandaj kaj kuraĝaj agoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('heroldo', 'heroldo', 'heroldo: homo kun la tasko anonci gravajn informojn kaj novaĵojn; tiu vorto estas ofte uzata en la nomoj de gazetoj; nomo de grava Esperanta gazeto ekde 1925.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('heroo', 'heroo', 'heroo: homo kiu faris eksterordinare grandajn aŭ kuraĝajn agojn; ĉefa persono de rakonto, teatraĵo kaj simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('heziti', 'heziti', 'heziti: ne esti certa; ne scii, ĉu fari aŭ ne fari; ne kuraĝi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('hibrida', 'hibrida', 'hibrida: du-forma; konsistanta el du malsamaj aferoj, ekzemple ĉeesta kongreso kaj virtuala kongreso.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('himno', 'himno', 'himno: kanto, en kiu oni esprimas respekton kaj amon al iu idealo, aŭ al Dio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('hinda', 'hinda', 'hinda: rilata al grava lando en suda Azio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('hiphopo', 'hiphopo', 'hiphopo: kultura, artisma kaj muzika movado, kreita ĉefe de nigraj kaj latinaj usonanoj ekde la 1970-aj jaroj ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('hipnoto', 'hipnoto', 'hipnoto: stato simila al dormado, en kiu oni perdas la propran volon kaj obeas al la volo de hipnotisto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('hirundo', 'hirundo', 'hirundo: birdo, kiu ofte konstruas sian hejmon sub la tegmento de domo; ekzistas pri ĝi la Esperanta diraĵo "Unu hirundo printempon ne alportas".') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('hoko', 'hoko', 'hoko: metalpeco kun aparta formo, kiun oni uzas por pendigi aŭ por altiri objektojn, aŭ por kapti fiŝojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('hologramo', 'hologramo', 'hologramo: foto de objekto, kiu ŝajnas reala, kvazaŭ videbla de ĉiuj flankoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Holokaŭsto', 'Holokaŭsto', 'Holokaŭsto: la amasa mortigo de la juda popolo kaj aliaj homgrupoj fare de la germanoj dum la Dua Mondmilito.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('honesta', 'honesta', 'honesta: aganta laŭ la sociaj preferoj, devoj, kaj imagoj de ĝusta kaj bona agmaniero.  ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('honora', 'honora', 'honora: traktata kun granda respekto pro la gravaj aferoj, kiujn tiu homo faris aŭ faras.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('honore', 'honore', 'honore: montrante respekton pro la gravaj aferoj, kiujn iu homo faris aŭ faras.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('honori', 'honori', 'honori: trakti iun kun granda respekto pro la gravaj aferoj, kiujn tiu homo faris aŭ faras; trakti iun aferon kun granda respekto por publike montri ĝian gravecon al ĉiuj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('honoro', 'honoro', 'honoro: signo de respekto pro la gravaj aferoj, kiujn iu homo faris aŭ faras.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('horaro', 'horaro', 'horaro: listo de horoj de foriro de trajnoj, aviadiloj aŭ simile; horoj de servado, oficejo, lernejo aŭ simile. [Ilustraĵo]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('horizontala', 'horizontala', 'horizontala: iranta de unu flanko al la alia, ne supren aŭ malsupren. [Ilustraĵo]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('horizonto', 'horizonto', 'horizonto: la limo inter ĉielo kaj tero, vidata de malproksime; la plej malproksima limo atingebla de la pensoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('hor-zono', 'hor-zono', 'hor-zono: ĉiu el la disdividoj de la tero, kie ĉiuj lokoj havas la saman horon laŭ la horloĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('hospitalo', 'hospitalo', 'hospitalo: malsanulejo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('HTML', 'HTML', 'HTML: sistemo de instrukcioj, kiuj klarigas al la retumilo kiel montri la tekston kaj kie aperigi la bildojn en retpaĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('humila', 'humila', 'humila: opinianta sian propran situacion malalta, kaj montranta tion per sia agmaniero; aganta kvazaŭ la propraj kapabloj kaj atingoj estus malgrandaj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('humoro', 'humoro', 'humoro: situacio de la interna mensa kaj emocia stato.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('humura', 'humura', 'humura: amuza, ŝerca, ridiga.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('humuro', 'humuro', 'humuro: amuza aŭ ŝerca parolmaniero, kiu celas ridigi aliajn homojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('hungara', 'hungara', 'hungara: rilata al Hungarujo, lando en centra Eŭropo kun ĉefurbo Budapeŝto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('hura!', 'hura!', 'hura!: ĝoja krio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĥoro', 'ĥoro', 'ĥoro: grupo da homoj, kiuj kantas kune unu-sone aŭ plur-voĉe; grupo de homoj, kiuj kantas aŭ parolas ĉiuj kune.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ial', 'ial', 'ial: pro iu kialo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('identeco', 'identeco', 'identeco: la maniero, laŭ kiu oni vidas sin; la bildo, kiun homo havas pri si mem; la eco de persono, kiu efektive estas tia, kia li/ŝi vidas sin; la fakto esti difinita homo, kaj neniu alia; memeco, personeco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('identigi', 'identigi', 'identigi: malkovri aŭ ekscii, kiu estas iu aŭ io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('identiĝi', 'identiĝi', 'identiĝi:  konsideri sin esti parto de grupo, aŭ senti sin simila al difinita homo kaj ties ideoj.  ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ideologio', 'ideologio', 'ideologio: idearo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('idiotismo', 'idiotismo', 'idiotismo: aparta esprimo en iu lingvo, kun senco ne facile komprenebla.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ignori', 'ignori', 'ignori: ne atenti.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ILEI', 'ILEI', 'ILEI: Internacia Ligo de Esperantistaj Instruistoj') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ilustraĵo', 'ilustraĵo', 'ilustraĵo: desegnaĵo aŭ bildo aldonita al teksto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ilustri', 'ilustri', 'ilustri: aldoni desegnaĵojn aŭ bildojn al teksto; klarigi ideon per ekzemploj, same kiel oni aldonas bildon al teksto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('imperiestro', 'imperiestro', 'imperiestro: reĝo de grandega ŝtato, kiu konsistas el pluraj venkitaj landoj sub la rego de unu pli forta lando.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('imperiismo', 'imperiismo', 'imperiismo: agado de ŝtato kun la celo vastiĝi kaj regi super aliaj malpli fortaj ŝtatoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('imperio', 'imperio', 'imperio: granda ŝtato, kiu konsistas el pluraj landoj kutime regataj de unu tre forta lando.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('impona', 'impona', 'impona: elstare granda kaj brila.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('importi', 'importi', 'importi: enporti komercajn produktojn en iun landon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('imposto', 'imposto', 'imposto: deviga pago de ŝtatanoj kiel kontribuo al la bezonoj de sia ŝtato aŭ urbo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('impresa', 'impresa', 'impresa: tia, ke ĝi tre forte tuŝas la menson aŭ la emociojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('impresi', 'impresi', 'impresi: forti tuŝi la sentumojn, la menson aŭ la emociojn. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('impreso', 'impreso', 'impreso: efiko trafanta la sentumojn, la menson aŭ la emociojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('improvizi', 'improvizi', 'improvizi: sen antaŭa preparado tuj produkti aŭ organizi ion.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('inaŭguri', 'inaŭguri', 'inaŭguri: komenci ion novan.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('inaŭguro', 'inaŭguro', 'inaŭguro: malferma kunveno de kongreso; komenco aŭ malfermo de io nova.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('incendio', 'incendio', 'incendio: granda fajro, kiu atakas domon, urbon, arbaron aŭ simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('incidento', 'incidento', 'incidento: flanka kaj neĉefa okazaĵo, kutime iom malhelpa, kiu okazas dum la irado de pli grava afero; inter-okazaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('indiĝena', 'indiĝena', 'indiĝena: rilata al la praloĝantoj de iu loko; rilate al popolo, kies antaŭuloj jam loĝis en iu loko, longe antaŭ ol alvenis la postaj homoj por loĝi tie.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('indiĝeno', 'indiĝeno', 'indiĝeno: praloĝanto; homo, kies antaŭuloj jam loĝis en loko, antaŭ ol postaj homoj ekloĝis en tiu sama loko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('indiki', 'indiki', 'indiki: montri; doni bezonatan informon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('indiko', 'indiko', 'indiko: la ago montri ion aŭ doni bezonatajn informojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('individua', 'individua', 'individua: unuopa, persona, kiel unu aparta membro de grupo. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('individuo', 'individuo', 'individuo: unuopulo, unu aparta membro de grupo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('infekti', 'infekti', 'infekti: transdoni malsanon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('infektiĝi', 'infektiĝi', 'infektiĝi: estis trafita de malsano transdonita de alia homo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('infero', 'infero', 'infero: terura loko, kie post la morto homoj suferas punojn pro la malbonaj agoj, kiujn ili faris dum la vivo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('inflamo', 'inflamo', 'inflamo: malsana stato de parto de la korpo, kiu spertas varmiĝon, ruĝiĝon kaj doloron.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('influi', 'influi', 'influi: havi efikon al la pensoj kaj agoj de alia(j) homo(j).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('influo', 'influo', 'influo: efiko al iu aŭ io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ingredienco', 'ingredienco', 'ingredienco: unu ero en miksaĵo, manĝaĵo aŭ trinkaĵo, ekzemple ovo kaj sukero estas ingrediencoj de kuko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('inĝeniero', 'inĝeniero', 'inĝeniero: homo, kiu per helpo de sciencaj metodoj kondukas kaj direktas teknikajn laborojn, ekzemple konstruadon de maŝinoj, vojoj, pontoj kaj simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('iniciati', 'iniciati', 'iniciati: esti la unua, kiu proponas aŭ faras ion.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('iniciatinto', 'iniciatinto', 'iniciatinto: la unua homo, kiu proponis aŭ faris ion.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('iniciato', 'iniciato', 'iniciato: nova agado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('inkluzive de', 'inkluzive de', 'inkluzive de: enhavante en si.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('inkluzivi', 'inkluzivi', 'inkluzivi: enhavi en si.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('inko', 'inko', 'inko: kolora akvo uzata por skribado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('insigno', 'insigno', 'insigno: rekonilo portata de homo, ekzemple por montri sian membrecon en iu asocio, por montri ke oni estas esperantisto, aŭ simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('inspira', 'inspira', 'inspira: vekanta en aliaj homoj ideojn pri la bona maniero agi, fari, verki, aŭ krei artaĵon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('inspiri', 'inspiri', 'inspiri: estigi, en la menso de alia homo, ideon por art-verko; estigi ideojn kaj pensojn en la menso de aliaj homoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('instanco', 'instanco', 'instanco: grava organizaĵo posedanta juĝan aŭ decidan povon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('instigi', 'instigi', 'instigi: diri “Jes! Faru tion!”') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('instigo', 'instigo', 'instigo: aktiva premado al iu homo, por ke tiu faru ion.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('institucio', 'institucio', 'institucio: socia aŭ politika organizaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('instituto', 'instituto', 'instituto: organizaĵo kun aparta celo, okupiĝanta kutime pri scienco, edukado aŭ iu profesio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('instrumento', 'instrumento', 'instrumento: fabrikita ilo kun difinita celo; muzikilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('insulti', 'insulti', 'insulti: esprimi malafablan opinion pri iu homo, parolante rekte al tiu homo en malĝentila maniero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('insulto', 'insulto', 'insulto: malafabla opinio pri iu homo, kiun oni esprimas parole aŭ skribe en malĝentila maniero, ĉu rekte al tiu homo, ĉu al pli vasta publiko. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('integriĝi', 'integriĝi', 'integriĝi: kun-unuiĝi, tiel ke oni fariĝas parto de la tuto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('intelektulo', 'intelektulo', 'intelektulo: inteligenta homo, kiu okupas sin ĉefe pri mensaj aferoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('intensa', 'intensa', 'intensa: farata aŭ funkcianta energie, vigle, fortostreĉe.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('intensa (kurso)', 'intensa (kurso)', 'intensa (kurso): kurso, kiu okazas seninterrompe dum kelkaj tagoj por atingi altan nivelon tre rapide.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('interlingvistiko', 'interlingvistiko', 'interlingvistiko: scienca studado de planlingvoj (kiel ekzemple Esperanto) kaj de lingva justeco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('interplektiĝo', 'interplektiĝo', 'interplektiĝo: ordigita kuntirado de multaj fadenoj aŭ aliaj aferoj, tiel ke ili formas unuiĝon (ekzemple ŝtofon), kaj ne eblas facile apartigi ilin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('intima', 'intima', 'intima: tre persona, nepublika, inter malmultaj homoj, kiuj bone konas unu la alian kaj havas komunajn sentojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('intrigo', 'intrigo', 'intrigo: serio de okazaĵoj, kiuj formas la rakonton en romano, filmo, teatra verko aŭ simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('inundo', 'inundo', 'inundo: nenormala superfluo de akvo, kiu kovras la teron.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('invadanto', 'invadanto', 'invadanto: homo aŭ grupo de homoj, kiu per-forte eniras alian landon kun la celo transpreni ĝin por la propra ŝtato.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('invadi', 'invadi', 'invadi: per-forte eniri alian landon kun la celo regi ĝin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('inventi', 'inventi', 'inventi: elpensi novan solvon de teknika tasko; elpensi novan ilon aŭ aferon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('investi', 'investi', 'investi: doni sian monon al iu komerca projekto, esperante poste rericevi pli da mono ol oni elspezis komence.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('investo', 'investo', 'investo: verŝado de mono al iu komerca projekto, kun la espero poste rericevi pli da mono ol oni elspezis komence.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Irlando', 'Irlando', 'Irlando: insula ŝtato de okcidenta Eŭropo, okcidente de Britujo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ironio', 'ironio', 'ironio: maniero esprimi la proprajn pensojn, dirante la malon de tio, kion oni vere opinias. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('izoladisto', 'izoladisto', 'izoladisto: homo, kiu okupiĝas pri la izolado de konstruaĵo, tio estas pri traktado de la muroj kaj tegmento por ke ne estu kontakto kun la ekstera varmo aŭ malvarmo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('izolita', 'izolita', 'izolita: apartigita de la aliaj, sen kontaktoj kaj ebleco komuniki.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('izoliteco', 'izoliteco', 'izoliteco: la stato de homo, kiu vivas aparte de aliaj, sen kontaktoj kaj ebleco komuniki.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('jarcento', 'jarcento', 'jarcento: cent-jara periodo, ekzemple de la jaro 1900 ĝis 1999.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('jogo', 'jogo', 'jogo: hind-devena metodo por atingi apartan menso-staton, uzante korpajn ekzercojn kaj spiradon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ju...des...', 'ju...des...', 'ju...des...:  la du vortoj kune montras, ke dum la unua afero ŝanĝas sian valoron, ankaŭ la alia ŝanĝas sian valoron samtempe.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('jubilea', 'jubilea', 'jubilea: speciala pro aparta dat-reveno, ekzemple la 50-a, la 100-a aŭ simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('jubileo', 'jubileo', 'jubileo: festo pro speciala dat-reveno, ekzemple la 50-a, la 100-a aŭ simile. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('judo', 'judo', 'judo: membro de religia grupo, kiu nun loĝas ĉefe en Israelo sed ankaŭ en multaj aliaj landoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('jungi', 'jungi', 'jungi: ligi beston al veturilo aŭ alia ilo, kiun ĝi devas tiri; ligi unu ideon al alia.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('jura', 'jura', 'jura: rilata al la leĝaro de ŝtato. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('juro', 'juro', 'juro: la aro da reguloj kaj leĝoj, kiuj difinas la rajtojn kaj devojn de homo aŭ de organizaĵoj. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Jutubo (YouTube)', 'Jutubo (YouTube)', 'Jutubo (YouTube): populara retejo por alŝuto kaj rigardado de filmetoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('juvelo', 'juvelo', 'juvelo: brila, bel-kolora, kaj tre valora ŝtono.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĵargono', 'ĵargono', 'ĵargono: aparta lingvaĵo de difinita grupo; faklingvo, kaŝlingvo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĵipo', 'ĵipo', 'ĵipo: aŭtomobilo taŭga por veturi sur malebena grundo kaj ekster la vojo. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĵurio', 'ĵurio', 'ĵurio: grupo de homoj ĉe juĝejo, kiuj devas kune decidi, ĉu homo kulpas pri misfaro; grupo de homoj, kiuj aljuĝas premiojn en konkurso.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĵurnalismo', 'ĵurnalismo', 'ĵurnalismo: kolektado kaj disvastigado de informoj per gazetoj kaj aliaj amas-komunikiloj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĵurnalisto', 'ĵurnalisto', 'ĵurnalisto: profesia raportisto por gazeto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ĵurnalo', 'ĵurnalo', 'ĵurnalo: ĉiutaga gazeto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kabaredo', 'kabaredo', 'kabaredo: amuza prezento kun teatraĵetoj, kantoj, dancado kaj simile, kutime en noktejo aŭ trinkejo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kaĉo', 'kaĉo', 'kaĉo: mola pasto farita el tre longe kuiritaj grenoj aŭ legomoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kahelo', 'kahelo', 'kahelo: fabrikita malmola maldika objekto, kiun oni uzas multenombre por kovri kaj beligi plankojn kaj murojn. [') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kadavro', 'kadavro', 'kadavro: korpo de mortinta estaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kajo', 'kajo', 'kajo: longa marŝejo konstruita apud fervojo aŭ apud la maro, de kie la homoj povas eniri vagonaron aŭ ŝipon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kakao', 'kakao', 'kakao: manĝebla materialo farita el la frukto de la kakao-arbo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kalemburo', 'kalemburo', 'kalemburo: vortluda mistranĉo (ekz. amuzo → am/uzo) ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kamarado', 'kamarado', 'kamarado: amiko, kun kiu oni faras multajn aferojn kune.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kameno', 'kameno', 'kameno: loko en ĉambro, kie eblas havi fajron por varmigi aŭ kuiri.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kamerao', 'kamerao', 'kamerao: filmilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kamioneto', 'kamioneto', 'kamioneto: aŭtomobilo kun fermitaj flankoj, kiu portas laborilojn kaj aliajn pezajn aĵojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kampanjo', 'kampanjo', 'kampanjo: laŭplana agado por realigi difinitan celon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kamparano', 'kamparano', 'kamparano: homo, kiu ne loĝas en urbo, kaj vivas prizorgante la kampojn. [Ilus.]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kanalo', 'kanalo', 'kanalo: la vojo por dissendi la programojn de difinita radia, televida, aŭ reta organizaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kanceliero', 'kanceliero', 'kanceliero: ĉefo de la registaro en Germanujo kaj Aŭstrujo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kancero', 'kancero', 'kancero: danĝera malsano kaŭzata de kreskaĵo interne de la korpo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kandelo', 'kandelo', 'kandelo: lumigilo, en la pasinteco ofte farita el besta graso, kiu donas lumon per tre malgranda fajro dum ĝi malrapide forbruliĝas.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kandidato', 'kandidato', 'kandidato: homo, kiu proponas sin por iu ofico, aŭ por ekzameno.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kapoto', 'kapoto', 'kapoto: metala malfermebla antaŭa kovrilo de aŭtomobilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kapro', 'kapro', 'kapro: kvar-krura besto, kiun oni tenas por lakto kaj viando; ĝi ankaŭ vivas libere en la montoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('karaktero', 'karaktero', 'karaktero: la aro da ecoj mensaj, kiuj donas al ĉiu homo apartan manieron pensi kaj agi; la aro da ecoj, kiuj donas al iu okazaĵo apartan manieron prezentiĝi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('karapaco', 'karapaco', 'karapaco: tre malmola kovraĵo, kiu kovras la dorson de iuj bestoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('karavano', 'karavano', 'karavano: organizita grupo de kunvojaĝantoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('karbon-dioksido', 'karbon-dioksido', 'karbon-dioksido: gaso (CO2), kiun ĉiuj bestoj elspiras; ĝi kontribuas al la varmigo de la Tero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('karbono', 'karbono', 'karbono: karbono troviĝas en ĉiuj vivantaj estaĵoj, sed ankaŭ en la gasoj, kiuj kontribuas al ŝanĝiĝo de la vetero kaj pli-varmiĝo de la tero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kardamomo', 'kardamomo', 'kardamomo: parto de planto, kiu donas apartan guston al manĝaĵoj. [Ilustraĵo]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kareo', 'kareo', 'kareo: hinda manĝaĵo kun tre forta gusto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('karesa', 'karesa', 'karesa: delikate kaj ame tuŝanta.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('karesi', 'karesi', 'karesi: delikate kaj ame tuŝi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kares-nomo', 'kares-nomo', 'kares-nomo: nomo uzata ĉefe de familianoj kaj geamikoj, ekzemple Joĉjo anstataŭ Johano.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kargo', 'kargo', 'kargo: la aĵoj portataj de unu loko al alia per ŝipo aŭ aviadilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kariatido', 'kariatido', 'kariatido: virino el ŝtono, kiu subtenas la tegmenton de konstruaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kariero', 'kariero', 'kariero: profesio, okupo; la progreso en la profesio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('karismo', 'karismo', 'karismo: aparta kapablo konvinki homojn kaj trovi sekvantojn pro sia persona ĉarmo aŭ alia ne-ordinara kvalito.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('karnavalo', 'karnavalo', 'karnavalo: popola festo, kiam la homoj amase amuziĝas kaj ofte ankaŭ alivestas sin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('karno', 'karno', 'karno: la mola parto de homo aŭ besto, kiu troviĝas inter la ostoj kaj la haŭto; la mola parto de frukto aŭ legomo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('karpo', 'karpo', 'karpo: granda manĝebla fiŝo vivanta en nesala akvo, kiun oni ofte tenas en lagetoj en ĝardenoj aŭ parkoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Kartago', 'Kartago', 'Kartago: haven-urbo en Nord-Afriko, tre fama kaj grava antaŭ multaj jarcentoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('karuselo', 'karuselo', 'karuselo: turniĝanta amuzilo por infanoj, kiuj sidas sur lignaj ĉevaloj kaj veturiloj. [') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kasedo', 'kasedo', 'kasedo: kesteto entenanta sistemon por aŭskulti muzikon aŭ por rigardi filmon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kaso', 'kaso', 'kaso: mon-rimedoj, mon-havo, ekzemple de asocio; mon-kesto; la ĉambro aŭ alia loko, kie asocio tenas sian monon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kastelo', 'kastelo', 'kastelo: granda loĝloko, defendebla kontraŭ atakoj per altaj muroj; granda konstruaĵo kie loĝas reĝo aŭ alia grava persono.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kaŝ-nomo', 'kaŝ-nomo', 'kaŝ-nomo: nomo, kiun oni uzas, por kaŝi sian veran nomon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('katastrofo', 'katastrofo', 'katastrofo: subita, malfeliĉega okazaĵo, kun teruraj sekvoj por homoj kaj objektoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('katedralo', 'katedralo', 'katedralo: supera preĝejo. [') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('katolika', 'katolika', 'katolika: rilata al granda grupo interne de la kristana religio, kun gvidanto en Romo (Italujo).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kavaliro', 'kavaliro', 'kavaliro: (en la malnovaj tempoj) soldato sur ĉevalo; (nuntempe) homo, kiu ricevis de sia reĝ(in)o aŭ prezidanto la rajton aldoni al sia nomo la vorton “kavaliro” pro siaj grandaj meritoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kaverno', 'kaverno', 'kaverno: natura profunda malplena spaco sub la tero aŭ en la flanko de monto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kavo', 'kavo', 'kavo: malplenaĵo; pli-malpli profunda truaĵo en la tero aŭ en la ekstera flanko de iu objekto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('keĉua', 'keĉua', 'keĉua: lingvo parolata en Peruo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kelnero', 'kelnero', 'kelnero: servisto en manĝejo, kiu alportas manĝaĵojn aŭ trinkaĵojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kelo', 'kelo', 'kelo: subtera parto de domo aŭ alia konstruaĵo, ofte uzata kiel loko por teni aĵojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Kembriĝo', 'Kembriĝo', 'Kembriĝo: fama universitata urbo en Anglujo; aŭ la universitato mem.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('KER: “Komuna Eŭropa Referenckadro”', 'KER: “Komuna Eŭropa Referenckadro”', 'KER: “Komuna Eŭropa Referenckadro”: komuna eŭropa sistemo por lingvaj ekzamenoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kerno', 'kerno', 'kerno: la centra kaj plej grava parto de io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kikero', 'kikero', 'kikero: granda manĝebla semo manĝata precipe en Hindujo kaj la Mediteraneo regiono.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Kimrujo', 'Kimrujo', 'Kimrujo: lando en Britujo, okcidente de Anglujo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kiosko', 'kiosko', 'kiosko: malgranda surstrata vendejeto de gazetoj, floroj kaj simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Kirgizujo', 'Kirgizujo', 'Kirgizujo: ŝtato en centra Azio, inter Kazaĥujo, Uzbekujo, Taĝikujo kaj Ĉinujo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('klasika', 'klasika', 'klasika: laŭ tradicia maniero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('klasikaĵo', 'klasikaĵo', 'klasikaĵo: grava, fama art-verko de pasinta periodo, kiun oni ankoraŭ nun konsideras koninda kaj imitinda.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('klematito', 'klematito', 'klematito: planto kun belaj floroj, kiu ofte fiks-tenas sin al ligna kadro por supreniri.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('klera', 'klera', 'klera: kapabla pro siaj edukado kaj kulturo tre bone juĝi aferojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('klifo', 'klifo', 'klifo: mar-bordo en la formo de altega natura ŝton-muro. [') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('klimatizi', 'klimatizi', 'klimatizi: reguligi la varmecon kaj sekecon de la aero interne de konstruaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('klimatizilo', 'klimatizilo', 'klimatizilo: maŝino, kiu reguligas la varmecon kaj sekecon de la aero interne de konstruaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('klimatizisto', 'klimatizisto', 'klimatizisto: homo, kiu okupiĝas pri la sistemo por reguligi la varmecon kaj sekecon de la aero interne de konstruaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('klimato', 'klimato', 'klimato: veteraj kondiĉoj en difinita regiono, aŭ en la tuta Tero, dum longa periodo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kliniko', 'kliniko', 'kliniko: kuracejo; speciala malsanulejo aŭ fako de malsanulejo por aparta malsano.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kloako', 'kloako', 'kloako: fosaĵo, kutime sub la tero, kie forfluas ĉiuj malpuraĵoj de la necesejoj kaj la malpura akvo el domoj aŭ el urbo. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('km', 'km', 'km: kilometro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('knaro', 'knaro', 'knaro: seka kaj akra bruo, ofte kaŭzata de du aĵoj, kiuj moviĝas unu kontraŭ la alia.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('koalicio', 'koalicio', 'koalicio: kuniĝo de malsamaj asocioj, politikaj grupoj aŭ simile, por atingi komunajn celojn. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kolegio', 'kolegio', 'kolegio: aparta lernejo interne de brita universitato.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kolego', 'kolego', 'kolego: homo kun la sama profesio aŭ membro de la sama asocio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kolesterolo', 'kolesterolo', 'kolesterolo: grasaĵo trovata en la korpo; se estas tro multe en la sango, tio povus kaŭzi kor-atakon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kolibro', 'kolibro', 'kolibro: tre malgranda amerika birdo, kiu flugas de floro al floro por trinketi la dolĉan fluaĵon el ĉiu floro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kolizii', 'kolizii', 'kolizii: interfrapiĝi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kolombo', 'kolombo', 'kolombo: birdo kun plaĉa mola voĉo, foje uzata por porti mesaĝojn, kaj ankaŭ kiel signo de paco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kolonii', 'kolonii', 'kolonii: fondi loĝlokon en lando ekster la limoj de la propra ŝtato.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('koloniismo', 'koloniismo', 'koloniismo: sistemo de regado, laŭ kiu iu ŝtato fondas loĝlokojn interne de alia lando.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kolonio', 'kolonio', 'kolonio: lando, al kiu fremda ŝtato sendas siajn proprajn ŝtatanojn por loĝi tie kaj regi ĝin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kolono', 'kolono', 'kolono: alta, rekta parto de konstruaĵo, kutime el ŝtono.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('komandanto', 'komandanto', 'komandanto: militista ĉefo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kombinaĵo', 'kombinaĵo', 'kombinaĵo: kunmetaĵo, miksaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('komedio', 'komedio', 'komedio: amuza teatraĵo aŭ alia verko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kometo', 'kometo', 'kometo: malgranda ĉiela objekto, ofte plejparte el glacio, kiu vojaĝas ĉirkaŭ suno elĵetante gasojn malantaŭ si.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('komika', 'komika', 'komika: amuza, ŝerca, ridiga.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('komisaro', 'komisaro', 'komisaro: ŝtata oficisto aŭ policano kun aparta funkcio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('komisii', 'komisii', 'komisii: doni al elektita persono la taskon plenumi iun laboron.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('komisiono', 'komisiono', 'komisiono: malgranda grupo formita interne de pli granda organizaĵo kun la celo plenumi difinitan taskon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('komitato', 'komitato', 'komitato: grupo de personoj elektitaj por fari organizajn taskojn; gvidantaro de asocio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kompakta disko (KD)', 'kompakta disko (KD)', 'kompakta disko (KD): lum-disko per kiu eblas aŭskultigi muzikon aŭ aliajn sonojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kompanio', 'kompanio', 'kompanio: komerca aŭ industria societo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kompato', 'kompato', 'kompato: kompreno kaj kunsento pri la malfeliĉo de alia persono.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kompensi', 'kompensi', 'kompensi: doni ion por anstataŭi perdon; doni aŭ okazigi ion plezuran, ĉar okazis malagrablaĵoj; pagi (ne nepre per mono) pro ies penoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kompetenta', 'kompetenta', 'kompetenta: kapabla bone fari sian laboron, havante la necesajn sciojn, konojn kaj spertojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kompili', 'kompili', 'kompili: kunmeti materialojn el diversaj fontoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kompleta', 'kompleta', 'kompleta: en kiu mankas nenio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kompletigi', 'kompletigi', 'kompletigi: fin-fari ion, por ke nenio manku en ĝi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kompliki', 'kompliki', 'kompliki: malsimpligi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('komponi', 'komponi', 'komponi: verki muzikon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('komunismo', 'komunismo', 'komunismo: politika idearo laŭ kiu la fontoj de riĉeco kaj la produkto-rimedoj apartenas al la popolo; la politika sistemo de la iama Sovet-Unio kaj iuj aliaj landoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('komunisto', 'komunisto', 'komunisto: proponanto de la politika idearo laŭ kiu la fontoj de riĉeco kaj la produkto-rimedoj apartenas al la popolo; proponanto de la politika sistemo de la iama Sovet-Unio kaj iuj aliaj landoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('komunumo', 'komunumo', 'komunumo: malgranda regiono, kies centro estas urbo aŭ vilaĝo; societo bazita sur komuneco de vivo kaj interesoj; grupo de homoj kune vivantaj kaj kun komunaj interesoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konatiĝi', 'konatiĝi', 'konatiĝi: iĝi konato de iu; iĝi konanto de io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('koncentrejo', 'koncentrejo', 'koncentrejo: malliberejo, kie multegaj homoj estas tenataj en tre malbonaj kondiĉoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('koncentri', 'koncentri', 'koncentri: direkti sian atenton aŭ siajn penojn al centra punkto; kunigi dense ĉirkaŭ komuna centro, alcentrigi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('koncentriĝi', 'koncentriĝi', 'koncentriĝi: direkti sian plenan atenton al io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('koncentriĝo', 'koncentriĝo', 'koncentriĝo: kapablo direkti sian plenan atenton al tio, kion oni faras.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('koncepto', 'koncepto', 'koncepto: ĝenerala ideo pri nekonkreta afero, mensa bildo pri io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('koncerto', 'koncerto', 'koncerto: muzika prezento.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konciza', 'konciza', 'konciza: mallonga, sen nenecesaj vortoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kondimento', 'kondimento', 'kondimento: io kun forta gusto, kiun oni aldonas al manĝaĵo kiam oni manĝas ĝin, por doni al ĝi pli bonan guston.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konduto', 'konduto', 'konduto: maniero agi en siaj rilatoj kun aliaj homoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konekti', 'konekti', 'konekti: kunligi elektre aŭ interrete.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konekto', 'konekto', 'konekto: elektra aŭ interreta kunligo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konferenco', 'konferenco', 'konferenco: renkontiĝo de fakuloj, kiuj diskutas gravajn aferojn rilate al sia fako.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konfidenco', 'konfidenco', 'konfidenco: informo, kiun oni sciigas nur al malmultaj elektitaj personoj, ĉar oni ne deziras publikigi ĝin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konfido', 'konfido', 'konfido: certeco pri la boneco, ĝusteco, praveco, valoro de iu aŭ io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konfirmi', 'konfirmi', 'konfirmi: certigi, ke io estas vera; diri, ke estas tiel.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konfirmilo', 'konfirmilo', 'konfirmilo: dokumento per kiu oni anoncas, ke io estas vera aŭ ĝusta.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konfirmo', 'konfirmo', 'konfirmo: certigo, ke dokumento aŭ peto estas ricevita.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konfiski', 'konfiski', 'konfiski: forpreni aĵon malpermesitan aŭ senrajte posedatan.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konflikto', 'konflikto', 'konflikto: forta malkonsento inter homoj aŭ ŝtatoj, kaŭzata de kontraŭeco de iliaj deziroj kaj opinioj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konformi', 'konformi', 'konformi: havi similan formon kiel alia afero, regulo aŭ ideo, kiun oni konsideras dezirinda.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konfronto', 'konfronto', 'konfronto: aranĝita kunveno de pluraj homoj kun malsamaj opinioj kaj kompari siajn spertojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konfuza', 'konfuza', 'konfuza: miksanta kaj malordiganta la ideojn de homo, tiel ke li aŭ ŝi ne plu komprenas la situacion.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konfuzi', 'konfuzi', 'konfuzi: miksi kaj malordigi la ideojn de homo, tiel ke li aŭ ŝi ne plu komprenas la situacion; tiom miksi aferojn, ke ne plu eblas ordigi ilin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konfuziĝi', 'konfuziĝi', 'konfuziĝi: havi tiel miksitajn kaj senordajn ideojn, ke oni ne plu komprenas la situacion.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konfuzo', 'konfuzo', 'konfuzo: amaso da senordaj ideoj, tiel ke oni ne plu komprenas la situacion.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konkludi', 'konkludi', 'konkludi: aŭskultinte la faktojn kaj opinion pri iu demando, decidi pri la ĝusta respondo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konkludo', 'konkludo', 'konkludo: decido pri la ĝusta respondo al iu demando, atingita post esplorado de la faktoj kaj opinioj pri tiu afero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konkurenci', 'konkurenci', 'konkurenci: konkursi, precipe rilate al komercaj kaj ekonomiaj aferoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konkuri', 'konkuri', 'konkuri: peni atingi pli bonan rezulton ol alia(j) homo(j). ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konscia', 'konscia', 'konscia: kun klara scio pri la propraj agoj kaj spertoj. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konscienco', 'konscienco', 'konscienco: scio, kiun oni havas, pri la boneco aŭ malboneco de la propraj agoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konscii', 'konscii', 'konscii: havi klaran scion pri la propraj agoj kaj spertoj. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konsekvenca', 'konsekvenca', 'konsekvenca: aganta laŭ maniero, kiu havas sencon, kaj nature sekvas el antaŭaj agoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konservi', 'konservi', 'konservi: zorge teni aferon, por ke ĝi ne malboniĝu aŭ perdiĝu, sed daŭre restu same kiel antaŭe.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konsilio', 'konsilio', 'konsilio: gvidanta grupo, kiu plenumas diversajn funciojn en organizaĵo, ekzemple doni konsilojn, fari rekomendojn kaj proponojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konsonanto', 'konsonanto', 'konsonanto: parolsono, kiun oni formas per interrompo de la aer-fluo en la buŝo; ekzemple B, K, N, S, T estas konsonantoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konspiri', 'konspiri', 'konspiri: kaŝe interkonsenti kun aliaj homoj por forigi la gvidantojn aŭ fari aliajn malbonajn agojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konstati', 'konstati', 'konstati: ekscii, eltrovi, aŭ rimarki ion kiel fakton aŭ kiel gravan informon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konstato', 'konstato', 'konstato: rekono, ke io estas nedubebla fakto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konsulo', 'konsulo', 'konsulo: funkciulo de iu ŝtato, kiu en fremda lando okupiĝas pri la aferoj de siaj samŝtatanoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konsultejo', 'konsultejo', 'konsultejo: loko aŭ retejo, kie eblas peti opiniojn pri iu demando aŭ problemo. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konsulti', 'konsulti', 'konsulti: demandi specialiston por ekscii ties opinion pri io; serĉi informojn en faka libro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konsultisto', 'konsultisto', 'konsultisto: specialisto, kiu profesie donas konsilojn pri sia fako.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konsumi', 'konsumi', 'konsumi: uzi aŭ manĝi komercan produkton.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konsumismo', 'konsumismo', 'konsumismo: la deziro aĉeti kaj posedi ĉiajn aferojn, ankaŭ senutilajn, proponatajn en vendejoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konsumo', 'konsumo', 'konsumo: uzado aŭ manĝado de komerca produkto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kontinento', 'kontinento', 'kontinento: Afriko, Ameriko, Azio, Eŭropo kaj Oceanio estas kontinentoj; granda regiono de la tero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kontinua', 'kontinua', 'kontinua: sen-interrompa.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konto', 'konto', 'konto: (en banko) aparta enskribiĝo de ĉiu persono aŭ organizaĵo, kiu posedas monon ĉe iu banko, kun informoj pri ties pagoj, spezoj, pruntoj kaj simile; (en komputado) la persona enskribiĝo de ĉiu unuopa uzanto en komputilo aŭ retejo, normale atingebla per uzanto-nomo kaj pasvorto. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kontrakto', 'kontrakto', 'kontrakto: skriba interkonsento, leĝe valida, kiu devigas ambaŭ subskribintojn plenumi iun agadon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kontraste', 'kontraste', 'kontraste: malsame, male.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kontraŭ-oksida', 'kontraŭ-oksida', 'kontraŭ-oksida: aganta por malrapidigi nedeziratajn efikojn interne de la korpo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konvencia', 'konvencia', 'konvencia: starigita per esprimita aŭ neesprimita konsento inter la homoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konversacii', 'konversacii', 'konversacii: agrable interparoli.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konversacio', 'konversacio', 'konversacio: interparolado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('konverti', 'konverti', 'konverti: ŝanĝi de unu formo al alia.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kooperativa', 'kooperativa', 'kooperativa: celanta ekonomian gajnon en vendejo aŭ alia asocio per komuna interhelpado de la membroj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kooperativo', 'kooperativo', 'kooperativo: asocio kies celo estas ekonomia gajno per komuna interhelpado de la membroj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kopi-rajto', 'kopi-rajto', 'kopi-rajto: la rajto multobligi kaj publikigi originalan verkon dum difinita periodo; aro da rajtoj por reguligi kaj limigi la uzon kaj aperigon de originala verko dum difinita periodo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kor-favoro', 'kor-favoro', 'kor-favoro: helpo kaj amo al alia homo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('koridoro', 'koridoro', 'koridoro: longa tra-irejo en domo aŭ alia konstruaĵo, de kie oni atingas plurajn ĉambrojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('korno', 'korno', 'korno: longa, malmola elstaraĵo sur la kapo de iuj bestoj, ekzemple sur la kapo de bovo estas du kornoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Korsiko', 'Korsiko', 'Korsiko: granda insulo en la okcidenta Mediteranea maro, apartenanta al Francujo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kortego', 'kortego', 'kortego: konstanta loĝejo de reĝo aŭ reĝino, kun ĉiuj gravaj homoj, kiuj loĝas tie.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('koruso', 'koruso', 'koruso: grupo da homoj, kiuj kantas kune unu-sone aŭ plur-voĉe.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kosmo', 'kosmo', 'kosmo: la vastega spaco ekster nia Tero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kosmonaŭto', 'kosmonaŭto', 'kosmonaŭto: vojaĝanto en la vastega spaco ekster nia Tero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kosmopolitismo', 'kosmopolitismo', 'kosmopolitismo: sento de aparteno al la tuta homaro, ne al aparta nacio aŭ popolo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('KOVIM-19 (kovimo)', 'KOVIM-19 (kovimo)', 'KOVIM-19 (kovimo): tre serioza malsano disvastiĝanta tra la tuta mondo ekde la jaro 2020.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kraĉi', 'kraĉi', 'kraĉi: forte elĵeti akvon el la buŝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kranio', 'kranio', 'kranio: la ostoj, kiu protektas la kapon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('krano', 'krano', 'krano: turnebla fermilo, per kiu oni permesas aŭ haltigas la elfluadon de akvo (aŭ de gaso aŭ alia aĵo).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kreditpoentoj', 'kreditpoentoj', 'kreditpoentoj: poentoj ricevitaj de studento fine de kurso ĉe lernejo aŭ universitato, kiujn oni poste kalkulos je la fino de la studprogramo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kremacii', 'kremacii', 'kremacii: forbruligi la korpon de mortinto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kreolo', 'kreolo', 'kreolo: lingvo bazita sur la eŭropaj kaj afrikaj lingvoj, parolata de afrikanoj portitaj al Ameriko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('krepusko', 'krepusko', 'krepusko: duon-lumo en la komenco aŭ fino de la tago. [') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('krestomatio', 'krestomatio', 'krestomatio: kolekto de tekstoj de unu aŭ pluraj verkintoj, kunmetita por ke lernantoj studu ĝin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('krima', 'krima', 'krima: serioze kontraŭ-leĝa.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('krimo', 'krimo', 'krimo: grava kontraŭ-leĝa ago.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('krimulo', 'krimulo', 'krimulo: homo, kiu faras gravajn kontraŭ-leĝajn agojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kriptaĵo', 'kriptaĵo', 'kriptaĵo: mesaĝo skribita per sistemo de signoj, kiun la homoj normale ne komprenas, se ili ne scias la sistemon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kristano', 'kristano', 'kristano: membro de la religio, kiu sekvas la instruojn de Jesuo Kristo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Krist-nasko', 'Krist-nasko', 'Krist-nasko: festotago (la 25-a de decembro), kiam kristanoj festas la naskiĝon de Jesuo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kriterio', 'kriterio', 'kriterio: principo aŭ fakto laŭ kiu oni decidas aferon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kritiki', 'kritiki', 'kritiki: paroli pri la mankoj kaj malbonaj aspektoj de homo aŭ afero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kritiko', 'kritiko', 'kritiko: komento pri la mankoj kaj malbonaj aspektoj de homo aŭ afero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kriza', 'kriza', 'kriza: rilata al periodo serioze danĝera pro tre malbona evoluo en situacio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('krizo', 'krizo', 'krizo: grava danĝera periodo; subita kaj tre malbona ŝanĝiĝo en situacio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kroata', 'kroata', 'kroata: apartenanta al Kroatujo, lando en sud-orienta Eŭropo, sur la Balkana duon-insulo, kun ĉeefurbo Zagrebo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kroĉetado', 'kroĉetado', 'kroĉetado: speco de man-laboro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('krokodili', 'krokodili', 'krokodili: paroli kun aliaj esperantistoj ĉe Esperanto-renkontiĝo en sia nacia lingvo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('krokodilo', 'krokodilo', 'krokodilo: danĝera besto kun longa buŝo kaj multaj dentoj, vivanta en varmaj landoj, ĉefe en riveroj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('krom-leciono', 'krom-leciono', 'krom-leciono: neregula kroma leciono.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('krom-nomo', 'krom-nomo', 'krom-nomo: plia nomo aldonita al la normala nomo de iu homo, kun la celo montri amikecon, moki, aŭ priskribi tiun homon; plia nomo aldonita al la normala nomo de iu loko, kun la celo priskribi la apartaĵon de tiu loko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('krono', 'krono', 'krono: ronda kapvesto portata de reĝo aŭ reĝino.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kron-viruso', 'kron-viruso', 'kron-viruso: tre malgranda kaj nevidebla portanto de serioza malsano disvastiĝanta tra la tuta mondo ekde la jaro 2020.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kruc(vort)-enigmo', 'kruc(vort)-enigmo', 'kruc(vort)-enigmo: ludo laŭ kiu necesas enskribi vortojn en kadron surbaze de ties difinoj aŭ aliaj helpiloj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('krucumi', 'krucumi', 'krucumi: fiksi homon al kruco por puni aŭ mortigi; aŭ por rememori la mortigon de Kristo en religia okazo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kruda', 'kruda', 'kruda: en natura stato antaŭ prilaborado, preparado aŭ kuirado; malĝentila, senkultura.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ktp', 'ktp', 'ktp: kaj tiel plu.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kubo', 'kubo', 'kubo: ses-flanka objekto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kuglo', 'kuglo', 'kuglo: malgranda malmola metala objekto kiu estas elĵetata tre forte kaj rapide el portebla militilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kukolo', 'kukolo', 'kukolo: birdo, kiu demetas siajn ovojn ĉe aliaj birdoj, por ke ili prizorgu ĝiajn idojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kulmino', 'kulmino', 'kulmino: la plej alta nivelo, kiun io povas atingi. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kultivaĵo', 'kultivaĵo', 'kultivaĵo: plantaro, kiun oni kreskigas kun atento al la necesaj kondiĉoj, por ke ĝi kresku bone.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kultivi', 'kultivi', 'kultivi: kreskigi plantojn, prizorgante iliajn bezonojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kulto', 'kulto', 'kulto: agado per kiu la homoj esprimas sian religian respekton al dio, al diaĵoj, aŭ al personoj aparte elektitaj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kuniklo', 'kuniklo', 'kuniklo: timema besto, kiu rapide kuras, kaj loĝas en longaj truoj sub la tero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kun-labori', 'kun-labori', 'kun-labori: labori kune en komuna laboro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kun-ordigi', 'kun-ordigi', 'kun-ordigi: aranĝi la diversajn partojn de afero, por ke ili bone funkciu kune.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kun-sido', 'kun-sido', 'kun-sido: kunveno, kiam grupo de homoj, ekzemple membroj de asocio aŭ komerca organizaĵo, renkontiĝas por diskutadi kaj por fari proponojn aŭ decidojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kun-teksto', 'kun-teksto', 'kun-teksto: la ĉirkaŭa teksto; la ĉirkaŭa situacio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kun-urbaĵo', 'kun-urbaĵo', 'kun-urbaĵo: aro da urboj, kiuj kunkreskis por formi unu grandan urbon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kupli', 'kupli', 'kupli: funkciigi kune du aŭ plurajn maŝinojn aŭ elektrajn ilojn por la sama kaj komuna laboro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kupono', 'kupono', 'kupono: bileto, kiu donas la rajton je iu servo. [Ilustraĵo]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kurda', 'kurda', 'kurda: hind-eŭropa lingvo parolata en la okcidenta parto de Irano kaj en la apudaj regionoj de Irako, Turkujo, Sirio kaj kelkaj aliaj proksimaj landoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kuriero', 'kuriero', 'kuriero: homo, kies okupo estas rapide porti korespondaĵojn aŭ pakaĵojn. La vorto kuriero ofte estas uzata kiel nomo de gazeto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kurioza', 'kurioza', 'kurioza: stranga, nekutima, rimarkinda.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kuriozaĵo', 'kuriozaĵo', 'kuriozaĵo: afero stranga, nekutima, rimarkinda.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kvaranteno', 'kvaranteno', 'kvaranteno: deviga restado en la hejmo, aŭ en difinita loko, dum difinita tempo, por malhelpi la disvastiĝon de malsano.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kvar-latero', 'kvar-latero', 'kvar-latero: kvar-flanka formo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kvaron-dolaro', 'kvaron-dolaro', 'kvaron-dolaro: la plej uzata monero en Usono. [Ilustraĵo]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kvartalo', 'kvartalo', 'kvartalo: parto de urbo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kvarteto', 'kvarteto', 'kvarteto: grupo de kvar homoj, kiuj kantas aŭ muzikas kune.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kvereli', 'kvereli', 'kvereli: kolere kaj brue malkonsenti.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kvieta', 'kvieta', 'kvieta: tute trankvila, paca, ne montranta fortajn emociojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Kvinslando', 'Kvinslando', 'Kvinslando: nordorienta ŝtato de Aŭstralio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('kvizo', 'kvizo', 'kvizo: konkursa demandado pri diversaj scioj, kutime kun amuza celo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('labirinto', 'labirinto', 'labirinto: neregula sinsekvo de vojoj, aranĝitaj tiel ke estas malfacile trovi la elirejon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('lacerto', 'lacerto', 'lacerto: kvar-pieda besto kun longa maldika vosto, naskanta per ovo, rapide kuranta.  ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('lad-skatolo', 'lad-skatolo', 'lad-skatolo: skatolo el maldika metalo uzata por konservi manĝaĵojn aŭ aliajn aĵojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('laktuko', 'laktuko', 'laktuko: verda legomo kun manĝeblaj folioj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('lanĉi', 'lanĉi', 'lanĉi: prezenti la unuan fojon novaĵon por ĝenerala uzado (ekzemple novan agadon, novan verkon, aŭ simile).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('lango-rompilo', 'lango-rompilo', 'lango-rompilo: amuza, malfacile elparolebla frazo kun multaj ripetitaj sonoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('lanterno', 'lanterno', 'lanterno: lampo en tenilo kun fermitaj flankoj, por ke oni povu porti aŭ pendigi ĝin ekstere.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('larmo', 'larmo', 'larmo: akvero kiu fluas el la okuloj, kiam oni ploras.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('latina (lingvo)', 'latina (lingvo)', 'latina (lingvo): la lingvo parolata de la Romanoj antaŭ multaj jarcentoj, la antaŭulo de la modernaj itala, hispana kaj franca lingvoj inter aliaj, kaj ankoraŭ nun uzata por krei sciencajn vortojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('latuno', 'latuno', 'latuno: flava metalo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('laŭdi', 'laŭdi', 'laŭdi: esprimi tre bonan opinion pri iu aŭ io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('laŭdo', 'laŭdo', 'laŭdo: esprimo de tre bona opinio pri iu aŭ io. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('laŭro', 'laŭro', 'laŭro: speco de arbo; la folioj de kelkaj specoj estas uzataj en kuirado. Laŭro estas ankaŭ esprimo de grandaj merito kaj sukceso precipe rilate al arto, literaturo aŭ scienco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('laŭta', 'laŭta', 'laŭta: forte aŭdebla de malproksime.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('laŭteco', 'laŭteco', 'laŭteco: forteco de sono, tiel ke aŭskultanto pli aŭ malpli facile aŭdas ĝin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('lavango', 'lavango', 'lavango: amasego de neĝo rulfalanta de monto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('lazura', 'lazura', 'lazura: hel-blua koloro de la ĉielo aŭ maro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('legendo', 'legendo', 'legendo: rakonto pri malnovaj okazaĵoj, en kiu la historiaj faktoj estas intermiksitaj kun imagitaj mirindaĵoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('legio', 'legio', 'legio: granda grupo de soldatoj, kiuj konsistigas apartan grupon en pli granda militistaro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('lenso', 'lenso', 'lenso: vitra disko, uzata ekzemple en fotilo, filmilo aŭ simile, tra kiu oni rigardas la objekton, kiun oni fotos aŭ filmos.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('leono', 'leono', 'leono: granda besto el la kato-familio, la reĝo de la bestoj; la vira leono havas grandan hararon ĉirkaŭ la kapo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('lerta', 'lerta', 'lerta: kapabla facile kaj sukcese fari ion pro la rapideco de siaj movoj aŭ de sia pensomaniero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('leŭkanto', 'leŭkanto', 'leŭkanto: ano de familio de blankaj floroj kun flava centro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('liberal-demokrata', 'liberal-demokrata', 'liberal-demokrata: politika idearo, malsama en malsamaj landoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('licenco', 'licenco', 'licenco: permesata nesekvado de la normala gramatika aŭ poezia regulo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('lim-dato', 'lim-dato', 'lim-dato: lasta dato por iu agado, post kiu ĝi ne plu eblos.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('lingvistiko', 'lingvistiko', 'lingvistiko: lingvoscienco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('lio (里, lĭ)', 'lio (里, lĭ)', 'lio (里, lĭ): ĉina mezurunuo de longeco, egala al duona kilometro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('lip-haroj', 'lip-haroj', 'lip-haroj: haroj kiuj kreskas super la buŝo de viro kaj de multaj bestoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('lipoj', 'lipoj', 'lipoj: la ekstera parto de la buŝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('litro', 'litro', 'litro: difinita kvanto de akvo, lakto, biero aŭ simile. [Ekzistas ilustraĵo.]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('liveri', 'liveri', 'liveri: havigi aĉetitan objekton al la aĉetinto; alporti menditan aĵon aŭ poŝtaĵon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('logika', 'logika', 'logika: tia, ke unu afero sekvas nature de alia.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('lojala', 'lojala', 'lojala: ĉiam preta helpi kaj defendi sian amikon, sian idealon, sian ŝtaton aŭ simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('lordo', 'lordo', 'lordo: en Anglujo, homo el la plej alta nivelo de la socio, aŭ pro familia deveno aŭ pro premio de la reĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('loti', 'loti', 'loti: fari decidon surbaze de ŝanco, ekzemple per tirado de paperetoj el ĉapelo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('luksa', 'luksa', 'luksa: videble multe-kosta kaj alt-kvalita.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('lukti', 'lukti', 'lukti: korpe batali kontraŭ alia homo; peni, klopodi por venki malhelpon aŭ atingi malfacilan rezulton.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('lulilo', 'lulilo', 'lulilo: lito de malgranda infano, kiun eblas movi tien-reen por endormigi la infanon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('m', 'm', 'm: metro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('magia', 'magia', 'magia: uzanta la arton fari mirindaĵojn per neklarigeblaj super-naturaj rimedoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('magio', 'magio', 'magio: la arto fari (aŭ ŝajnigi fari) mirindaĵojn per neklarigeblaj super-naturaj rimedoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('magistriĝi', 'magistriĝi', 'magistriĝi: studi ĉe universitato pri iu specialaĵo post la baza nivelo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('magistro', 'magistro', 'magistro: homo, kiu sukcese finis la unversitatajn studojn pri iu specialaĵo post la baza nivelo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('majstreco', 'majstreco', 'majstreco: la eco de persono, kiu perfekte regas iun fakon, arton aŭ manlaboron.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('majstro', 'majstro', 'majstro: persono lerta kaj sperta en iu fako, arto aŭ manlaboro; la Majstro: Zamenhof, la kreinto de Esperanto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('maksimuma', 'maksimuma', 'maksimuma: plej granda aŭ alta.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('maksimume', 'maksimume', 'maksimume: plej grande, plej alte.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('makuli', 'makuli', 'makuli: fari malpuran aŭ miskoloran lokon sur veston aŭ alian objekton. [Ilustraĵo]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('malagordaj', 'malagordaj', 'malagordaj: (pri muziko) malagrabla miksaĵo de du aŭ pli da sonoj, kiuj ne bone rilatas inter si.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('malaprobo', 'malaprobo', 'malaprobo: opinio, ke tio farita aŭ dirita de alia homo, estas malbona kaj nefarinda.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('malavantaĝo', 'malavantaĝo', 'malavantaĝo: tio, kio alportas pli malbonan situacion, malgajnon aŭ malutilon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('malavara', 'malavara', 'malavara: tre preta doni monon kaj aliajn valoraĵojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('malbeni', 'malbeni', 'malbeni: al-voki al Dio, ke alia homo suferu kaj spertu malfeliĉon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('malhela', 'malhela', 'malhela: kun malmulte da lumo; kun malmulte da blanko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('malneto', 'malneto', 'malneto: unua provo pri verkata teksto, ankoraŭ ne korektita kaj perfektigita.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('malplimulto', 'malplimulto', 'malplimulto: malpli granda homgrupo interne de regiono aŭ lando, kiu diferencas de la ĉefa parto de la loĝantaro pro malsama deveno, religio, lingvo aŭ simile; (dua difino) neĉefa homgrupo loĝanta en iu ŝtato.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('malŝalti', 'malŝalti', 'malŝalti: ĉesigi funkciadon de elektro, lampo, maŝino, komputilo aŭ simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('malvarmumo', 'malvarmumo', 'malvarmumo: negrava kaj tre ofta malsaneto de la spir-sistemo, pli ofta dum malvarma vetero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mamoj', 'mamoj', 'mamoj: du elstaraĵoj sur la brusto de virino, kiuj produktas lakton por manĝigi ŝiajn infanojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mam-suĉi', 'mam-suĉi', 'mam-suĉi: trinki lakton, tirante ĝin el la korpo de sia patrino.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mamulo', 'mamulo', 'mamulo: varm-sanga besto, kiu manĝigas siajn idojn per la propra lakto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('manifestacio', 'manifestacio', 'manifestacio: okazo, kiam amaso da homoj kuniĝas sur-strate por publike montri sian opinion, kutime pri socia aŭ politika afero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('manipuli', 'manipuli', 'manipuli: funkciigi per la mano.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('man-libro', 'man-libro', 'man-libro: libro kun ofte bezonataj informoj pri iu temo, aŭ kun instrukcioj pri uzado de maŝino, programo aŭ simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mantro', 'mantro', 'mantro: vorto aŭ frazo, kiun oni ripetadas ĝis ĝi kaŭzas ne-kutiman mensan staton.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mantuko', 'mantuko', 'mantuko: tuko uzata por sekigi la manojn kaj vizaĝon post lavado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mapo', 'mapo', 'mapo: desegno montranta la detalojn de regiono, ekzemple de urbo aŭ lando, aŭ de la tuta mondo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('maratono', 'maratono', 'maratono: tre longdistanca kurado, kutime je 42,2 km; longedaŭra kaj seninterrompa postula sperto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('marĉo', 'marĉo', 'marĉo: loko kie estas tre mola tero miksita kun akvo; malbona situacio, el kiu oni malfacile povas eliri.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('marioneto', 'marioneto', 'marioneto: pupo uzata en pup-teatro, kies brakojn kaj krurojn oni movas mane aŭ per fadenoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mar-kolo', 'mar-kolo', 'mar-kolo: mallarĝa peco de maro inter du proksimaj landoj, ekzemple inter Francujo kaj Britujo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('marmoro', 'marmoro', 'marmoro: bela malmola ŝtono uzata por fari artverkojn kaj en konstruaĵoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('martiro', 'martiro', 'martiro: homo, kiu spertas morton aŭ terurajn suferojn pro siaj idealoj aŭ sia religio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('masaĝi', 'masaĝi', 'masaĝi: tuŝadi kaj premi la korpon per la manoj por kuracaj celoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('masko', 'masko', 'masko: vizaĝ-kovrilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('masonisto', 'masonisto', 'masonisto: homo, kiu konstruas murojn kaj faras aliajn konstru-laborojn. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mastiko', 'mastiko', 'mastiko: mola aĵo, kiu venas el mastik-arbo, uzata en kuraciloj kaj por aldoni apartan guston al manĝaĵoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('matĉo', 'matĉo', 'matĉo: sportludo inter du homoj aŭ du grupoj de homoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('matematiko', 'matematiko', 'matematiko: scienco pri nombroj kaj formoj, kaj ties propraĵoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('matura', 'matura', 'matura: atinginta sian plenan kreskadon, forton, kapablon; plene evoluinta.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('maturigo', 'maturigo', 'maturigo: evoluigo ĝis plena kreskado kaj kapablo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mecenato', 'mecenato', 'mecenato: riĉa homo, kiu donas mon-helpon al arta, literatura, scienca aŭ alia kultura agado. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('medalo', 'medalo', 'medalo: metala disketo surhavanta bildon aŭ skribaĵon memore al iu grava okazintaĵo aŭ por montri respekton al merita homo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('medicina', 'medicina', 'medicina: rilate al la scienco pri sano, malsano kaj kuracado') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('medicino', 'medicino', 'medicino: scienco pri sano, malsano kaj kuracado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('medikamento', 'medikamento', 'medikamento: kuracilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('medio', 'medio', 'medio: viv-ĉirkaŭaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Mediteraneo', 'Mediteraneo', 'Mediteraneo: maro fermita inter Eŭropo, Afriko kaj Azio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mediti', 'mediti', 'mediti: longe kaj profunde fiksi sian penson al io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Mefisto', 'Mefisto', 'Mefisto: nomo de malbona spirito, kontraŭulo de Dio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mekaniko', 'mekaniko', 'mekaniko: la arto konstrui maŝinojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('meksikano', 'meksikano', 'meksikano: loĝanto de Meksiko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('melankolia', 'melankolia', 'melankolia: malgaja.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('melodio', 'melodio', 'melodio: serio de muzikaj sonoj, formantaj kanteblan frazon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('memeo', 'memeo', 'memeo: amuza afiŝo, ofte bildo kun malmultaj vortoj, kopiata de unu homo al alia en socia retejo. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mem-fido', 'mem-fido', 'mem-fido: kredo pri sia propra kapablo fari ion.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mem-stara', 'mem-stara', 'mem-stara: staranta, aganta, pensanta, vivanta per si mem, sen helpo de aliaj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mem-stare', 'mem-stare', 'mem-stare: starante, agante, vivante per si mem, sen helpo de aliaj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mencii', 'mencii', 'mencii: diri kelkajn vortojn pri io aŭ iu.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mensogi', 'mensogi', 'mensogi: diri malveron.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('menuo', 'menuo', 'menuo: listo de manĝaĵoj en manĝejo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('merkato', 'merkato', 'merkato: la ebleco aĉeti kaj vendi aĵojn, konsiderante kiom la aĉetontoj deziras ilin, kaj kiom ili pretas pagi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('metio', 'metio', 'metio: manlabora profesio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('metroo', 'metroo', 'metroo: rapida kaj ofta sistemo de vagonaroj interne de urbo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mez-epoko', 'mez-epoko', 'mez-epoko: historia periodo meze inter la tre malnovaj kaj modernaj tempoj. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mezume', 'mezume', 'mezume: mez-nombre.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mezumo', 'mezumo', 'mezumo: mez-nombro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mielo', 'mielo', 'mielo: dolĉa manĝaĵo produktita de insektoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('migri', 'migri', 'migri: vojaĝi de unu loko al alia. Iuj bestoj ĉiu-jare migras al alia lando.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mikronovelo', 'mikronovelo', 'mikronovelo: tre mallonga rakonto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('milda', 'milda', 'milda: ne akra por la sentoj; (pri vetero) varmeta.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('miliardo', 'miliardo', 'miliardo: mil milionoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('minaci', 'minaci', 'minaci: montri al alia homo, ke oni intencas fari malbonon al ŝi/li; endanĝerigi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('minimuma', 'minimuma', 'minimuma: la plej malgranda.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ministo', 'ministo', 'ministo: homo kiu laboras sub la tero, elfosante metalojn kaj aliajn valoraĵojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ministro', 'ministro', 'ministro: estro de unu el la fakoj de ŝtata regado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mino', 'mino', 'mino: loko sub la tero, kie oni elfosas metalojn kaj aliajn valoraĵojn. [') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('misio', 'misio', 'misio: la tasko aŭ celo diskonigi religion; grava tasko donita de ŝtato al unu aŭ pluraj personoj, kiu(j ) eksterlande faru interkonsentojn, observojn aŭ aliajn aranĝojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mistera', 'mistera', 'mistera: enhavanta ion neklarigeblan, kaŝitan, malklaran.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mistero', 'mistero', 'mistero: neklarigebla kaj kaŝita fakto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mistikismo', 'mistikismo', 'mistikismo: religia idearo kaj metodo, celanta ekkoni la veron pri Dio kaj la postmorta vivo per sentoj kaj imagado, sed ne per la pensanta menso.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mito', 'mito', 'mito: tradicia rakonto pri la dioj en malnovaj religioj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('modela', 'modela', 'modela: tiel perfekte farita, ke ĝi estos imitinda en postaj okazoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('modelo', 'modelo', 'modelo: objekto farita por esti imitata; afero farita por esti imitata.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('modifi', 'modifi', 'modifi: iom ŝanĝi aferon por ke ĝi estu pli taŭga por iu bezono.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('modo', 'modo', 'modo: nedaŭra kutimo, precipe rilate al vestoj, sed ankaŭ al aliaj aferoj, kiuj rapide ŝanĝiĝas.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('monaĥo', 'monaĥo', 'monaĥo: religiulo, loĝanta en religia komunumo kun specialaj reguloj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('monstro', 'monstro', 'monstro: terura kaj timiga vivanta aŭ nereala estaĵo kun nenatura aspekto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('monumento', 'monumento', 'monumento: konstruaĵo aŭ ŝtona artaĵo konstruita memore al grava homo aŭ okazaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('morala', 'morala', 'morala: aganta laŭ reguloj, kiujn oni mem konsideras bonaj. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('moralo', 'moralo', 'moralo: instruo aŭ reguloj por difini la diferencon inter bono kaj malbono.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('moro', 'moro', 'moro: kutima vivmaniero kaj pensomaniero ĉe iu homgrupo aŭ popolo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('moskeo', 'moskeo', 'moskeo: islama preĝejo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('motivo', 'motivo', 'motivo: tio, kio igas iun agi aŭ opinii en difinita maniero; kialo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('movado', 'movado', 'movado: komuna agado de homgrupo (organizita en asocio aŭ ne) por atingi iun celon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mozaiko', 'mozaiko', 'mozaiko: bildo el diverskoloraj ŝtonetoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('mueli', 'mueli', 'mueli: rompi grenon aŭ aliajn materialojn en tre malgrandajn erojn; necesas mueli grenon antaŭ ol uzi ĝin por fari panon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('muĝi', 'muĝi', 'muĝi: fari fortan, profundan, longedaŭran sonon; krii kiel virbovo aŭ bovino.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('munti', 'munti', 'munti: kunmeti la diversajn partojn de programo, filmo, aparato, maŝino aŭ simile, por ke ĉio estu en la ĝusta loko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('murdi', 'murdi', 'murdi: kontraŭleĝe mortigi; kruele kaj senbezone mortigi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('murdo', 'murdo', 'murdo: kontraŭleĝa mortigo de homo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('muskolo', 'muskolo', 'muskolo: parto de la korpo de homo aŭ besto, per kiu oni kaŭzas movojn de la korpo aŭ interne de la korpo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('muti', 'muti', 'muti: ne povi paroli, silenti.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('nafto', 'nafto', 'nafto: natura oleo, prenita el sub la tero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('najbara', 'najbara', 'najbara: loĝanta aŭ troviĝanta apude aŭ tre proksime.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('najbaro', 'najbaro', 'najbaro: homo loĝanta apude; lando, urbo aŭ simile kiu troviĝas proksime.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('najlo', 'najlo', 'najlo: malgranda metalo ilo, longa kaj maldika, akra ĉe unu fino kaj kun kapo ĉe la alia, kiun oni enbatas por kunfiksi du objektojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('naŭatla', 'naŭatla', 'naŭatla: familio de lingvoj parolata plejparte en Meksiko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('navigi', 'navigi', 'navigi: moviĝi per veturilo sur akvo aŭ tra la aero, rekoni sian pozicion kaj direkti la veturilon; moviĝi kaj trovi sian vojon tra la Interreto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('naziismo', 'naziismo', 'naziismo: la ideoj kaj opinioj de la politika movado, kiu regis Germanujon de 1933 ĝis 1945, proponitaj de ĝia estro Adolf Hitler.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('nazio', 'nazio', 'nazio: membro de politika movado, kiu regis Germanujon de 1933 ĝis 1945; ĝia estro estis Adolf Hitler.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Nederlando', 'Nederlando', 'Nederlando: lando en okcidenta Eŭropo kun ĉefurbo Amsterdamo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ne-eviteble', 'ne-eviteble', 'ne-eviteble: tiel, ke oni nepre devas renkonti ĝin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ne-formala', 'ne-formala', 'ne-formala: sen nenecesaj ĝentilaĵoj, amika, natura.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ne-formale', 'ne-formale', 'ne-formale: en hejmeca maniero, kvazaŭ inter amikoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('negativa', 'negativa', 'negativa: nea, malakcepta, malkonsenta, malpermesa, malfaciliga, minusa.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ne-identigita', 'ne-identigita', 'ne-identigita: tia, ke oni ne sukcesis ekscii aŭ malkovri, kio ĝi estas.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('nekrologo', 'nekrologo', 'nekrologo: artikolo kun informoj pri ĵus mortinta persono kaj mallonga priskribo de ties vivo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('neolitiko', 'neolitiko', 'neolitiko: prahistoria periodo antaŭ 10 000 jaroj, kiam la homoj produktis ŝtonajn ilojn, ekhavis bestojn kaj komencis kreskigi plantojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('neologismo', 'neologismo', 'neologismo: nova vorto, kiu antaŭe ne estis uzata; netradicia vorto uzata en Esperanto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ne-racia', 'ne-racia', 'ne-racia: bazita ne sur inteligenta pensado kaj saĝa juĝado, sed sur malbone elpensitaj konsideroj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('nerva', 'nerva', 'nerva: maltrankvila kaj streĉata en nekutima situacio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('nervo', 'nervo', 'nervo: fadenforma elektra ligilo en la korpo de homo aŭ besto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ne-vundebla', 'ne-vundebla', 'ne-vundebla: tia, ke ne eblas serioze rompi, tranĉi, ŝiri aŭ sangigi ĝin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('nikotino', 'nikotino', 'nikotino: aĵo trovebla en cigaredoj, kiu kaŭzas, ke fumanto deziregas plu fumi kaj ne povas facile ĉesi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Nilo', 'Nilo', 'Nilo: longa riverego en Afriko, unu el la plej longaj en la mondo, kiu enfluas en Mediteraneon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('nobelo', 'nobelo', 'nobelo: homo el la pli alta nivelo de la socio, kutime pro sia familia deveno.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('nobla', 'nobla', 'nobla: havanta altajn kaj admirindajn kvalitojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('nomado', 'nomado', 'nomado: membro de grupo, kiu ne loĝas fikse en la sama loko, sed vojaĝas ĉiam de loko al loko, ofte laŭ la sezonoj aŭ laŭ la havebleco de manĝaĝoj por si mem kaj siaj bestoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('normigado', 'normigado', 'normigado: kreado de reguloj, por ke ĉiuj faru la saman aferon laŭ la sama maniero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('novelo', 'novelo', 'novelo: mallonga literatura (sed ne poezia) verko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('n-ro', 'n-ro', 'n-ro: numero') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('nuanco', 'nuanco', 'nuanco: delikata, apenaŭ sentebla diferenco inter samspecaj aferoj, ideoj, sentoj aŭ koloroj. [Ilustraĵo]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('nuda', 'nuda', 'nuda: sen-vesta; ne havanta la ordinarajn kovraĵojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('nudeloj', 'nudeloj', 'nudeloj: longaj, mallarĝaj, maldikaj ŝnuroj el pasto, ofta manĝaĵo en multaj aziaj landoj kaj en Italujo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('nukleo', 'nukleo', 'nukleo: la centra parto de atomo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('nukso', 'nukso', 'nukso: frukto kun ligneca eksteraĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('nutra', 'nutra', 'nutra: donanta al vivanta estaĵo la manĝaĵojn necesajn por la vivo; donanta al iu afero la necesajn materialojn por ke ĝi funkciu.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('nutri', 'nutri', 'nutri: doni al vivanta estaĵo la manĝaĵojn necesajn por la vivo; doni al iu afero la necesajn materialojn por ke ĝi funkciu.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('obsedo', 'obsedo', 'obsedo: fiksa ideo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('obskura', 'obskura', 'obskura: malluma.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('obstino', 'obstino', 'obstino: la kapablo resti tre forte ĉe sia propra volo aŭ opinio, malgraŭ la premoj de aliaj homoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('oceano', 'oceano', 'oceano: vastega maro inter la teraj mondopartoj, ekzemple Pacifiko, Atlantiko kaj simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ofendi', 'ofendi', 'ofendi: malĝentile esprimi sian opinion en maniero, kiu malrespektas la sentojn de alia homo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('oferi', 'oferi', 'oferi: donaci al dio aŭ al iu idealo; fordoni ion tre valoran, ĉar oni deziras ricevi gravan servon aŭ objekton interŝanĝe.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ofero', 'ofero', 'ofero: donaco al dio aŭ al iu idealo; fordono de iu tre valora afero, ĉar oni deziras ricevi gravan servon aŭ objekton interŝanĝe.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('oferto', 'oferto', 'oferto: propono vendi au aĉeti ion je difinita prezo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('oficiala', 'oficiala', 'oficiala: laŭregule akceptita de iu grava persono aŭ oficejo, kiu havas la rajton decidi pri tiu afero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('oficiale', 'oficiale', 'oficiale: laŭregule akceptite de iu grava persono aŭ oficejo, kiu havas la rajton decidi pri tiu afero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('oficialigi', 'oficialigi', 'oficialigi: anonci, ke iu vorto devas aparteni al Esperanto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('oficiro', 'oficiro', 'oficiro: estro de soldatoj. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('oksigeno', 'oksigeno', 'oksigeno: gaso, O2, kiun ni bezonas por spiri.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Olimpia', 'Olimpia', 'Olimpia: rilata al la moderna aro de internaciaj sport-konkursoj okazantaj aŭ somere aŭ vintre ĉiun duan jaron; la nomo devenas de la urbo Olimpio, en Grekujo, kie en la pasinteco okazis famaj ludoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Olimpio', 'Olimpio', 'Olimpio: urbo en Grekujo, kie en la pasinteco okazis famaj ludoj; nuntempe tiu urbo donas sian nomon ankaŭ al la modernaj internaciaj ludoj okazantaj en ĉiu kvara jaro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('omaĝe', 'omaĝe', 'omaĝe: respektoplene, memore al la grandaj meritoj de iu homo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('omaĝo', 'omaĝo', 'omaĝo: publika montro de granda respekto al iu homo pro ties rimarkindaj atingoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ombro', 'ombro', 'ombro: loko, kie mankas la lumo, kaj tial estas malhela. [Foto. Fonto nekonata.]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('operacii', 'operacii', 'operacii: kuraci malsanulon, plej ofte en malsanulejo, per fortranĉo de malsana parto de la korpo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('opero', 'opero', 'opero: muzika teatraĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('oportuna', 'oportuna', 'oportuna: facila, konvena, taŭga, utila.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('optimisma', 'optimisma', 'optimisma: havanta emon trovi ĉion bona en la vivo kaj ĉiam esperanta sukceson kaj feliĉon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('optimismo', 'optimismo', 'optimismo: emo trovi ĉion bona en la vivo kaj ĉiam esperi sukceson kaj feliĉon. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('oranĝo', 'oranĝo', 'oranĝo: frukto, kiu donas sian nomon ankaŭ al koloro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('orbito', 'orbito', 'orbito: linio sekvata de astro (ĉiela korpo) dum ĝia irado ĉirkaŭ alia astro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('orfo', 'orfo', 'orfo: infano, kies gepatroj jam mortis.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('organo', 'organo', 'organo: parto de besto aŭ planto kun speciala funkcio, ekzemple la koro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('orientiĝo', 'orientiĝo', 'orientiĝo: eltrovo, kie oni estas kaj en kiu direkto oni iru; klara kompreno pri sia propra situacio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('orientiĝo (seksa)', 'orientiĝo (seksa)', 'orientiĝo (seksa): direkto de la seksa interesiĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('origine', 'origine', 'origine: rilate al la loko aŭ situacio, kie io ekestis, naskiĝis, evoluis.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('origino', 'origino', 'origino: ekesto, komenciĝo, naskiĝo, ekevoluo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('orkestro', 'orkestro', 'orkestro: granda grupo de muzikistoj, ludantaj diversajn muzikilojn, sub la gvidado de estro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ornami', 'ornami', 'ornami: aldoni detalojn al objekto por plibeligi ĝian aspekton.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ortangulo', 'ortangulo', 'ortangulo: kvar-angula formo en kiu ĉiuj anguloj estas 90º (naŭdek-gradaj). [') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('otomanoj', 'otomanoj', 'otomanoj: parto de la turka popolo, kiu kreis grandan ŝtaton, kiu regis vastan regionon en centra kaj suda Eŭropo de 1290 ĝis 1923.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pacienca', 'pacienca', 'pacienca: kapabla trankvile atendi. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pacienco', 'pacienco', 'pacienco: la kapablo trankvile atendi. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('paciento', 'paciento', 'paciento: homo prizorgata de kuracisto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('paĉjo', 'paĉjo', 'paĉjo: ama vorto por patro (= pa[tro] + -ĉjo).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pafi', 'pafi', 'pafi: ĵeti tre forte per ilo, kun la celo trafi aŭ mortigi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pala', 'pala', 'pala: senkolora, blanketa, kun malforta koloro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('palaco', 'palaco', 'palaco: grandega kaj tre brila domo de reĝo aŭ alia homo de tre alta socia nivelo; domego de grava ŝtata oficejo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('palpebrumi', 'palpebrumi', 'palpebrumi: rapide fermi kaj malfermi la okulojn, aŭ nur unu okulon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pampelmuso', 'pampelmuso', 'pampelmuso: granda flava frukto manĝata ĉefe en Azio, kun iom maldolĉa gusto kaj tre dika eksteraĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pandemio', 'pandemio', 'pandemio: tutmonda malsano.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pando', 'pando', 'pando: granda besto blanka kaj nigra, kiu devenas el Ĉinujo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('panelo', 'panelo', 'panelo: tabulo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('paneo', 'paneo', 'paneo: subita malfunkcio de maŝino, ekzemple aŭto, ŝipo, aviadilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('panjo', 'panjo', 'panjo: amema maniero alparoli sian patrinon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('panoramo', 'panoramo', 'panoramo: vasta vidaĵo, rigardata de alta loko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('papavo', 'papavo', 'papavo: ruĝa kampara floro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('papo', 'papo', 'papo: ĉefa gvidanto de la katolikaj kristanoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('paradizo', 'paradizo', 'paradizo: loko, kie ĉio estas neimagebla bona kaj bela; tia loko imagata laŭ religia ideo, kie oni troviĝos post la morto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('parado', 'parado', 'parado: festa marŝado de soldatoj aŭ aliaj homoj, por montri sin al la publiko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('paradokso', 'paradokso', 'paradokso: opinio, kontraŭa al tiu komune akceptata, kiu tial ofte povas ŝajne nekredinda, kvankam ĝi povas finfine montriĝi ĝusta.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('parenco', 'parenco', 'parenco: familiano.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('parfuma', 'parfuma', 'parfuma: bel-odora.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('parkerigi', 'parkerigi', 'parkerigi: en-memorigi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('parlamento', 'parlamento', 'parlamento: grupo de homoj, elektitaj de la popolo, kiuj kreas la leĝojn de ŝtato.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Parnaso', 'Parnaso', 'Parnaso: monto en Grekujo, kie loĝis diinoj de la poezio kaj aliaj artoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('partio', 'partio', 'partio: grupo da homoj kun samaj politikaj aŭ sociaj opinioj; unu el la kontraŭstarantoj en diskuto aŭ batalo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('partituro', 'partituro', 'partituro: la skriba formo de muzika verko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('partizano', 'partizano', 'partizano: membro de grupo, kiu batalas kontraŭ fremda okupado. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('partnero', 'partnero', 'partnero: kunulo, kun-aganto en ludo, komerca afero aŭ alia projekto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('parto-prenanto', 'parto-prenanto', 'parto-prenanto: ĉe-estanto en iu aranĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('parto-preni', 'parto-preni', 'parto-preni: esti unu el la homoj, kiuj kune faras ion.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('parto-preno', 'parto-preno', 'parto-preno: ĉe-estado aŭ kunfarado en iu komuna aranĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pasaĝero', 'pasaĝero', 'pasaĝero: vojaĝanto portata en veturilo. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pasio', 'pasio', 'pasio: tre forta kaj apenaŭ regebla emocio; fortega amo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pasodoblo', 'pasodoblo', 'pasodoblo: energia hispana para danco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Pasporta servo', 'Pasporta servo', 'Pasporta servo: gastiga servo por esperantistoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pasporto', 'pasporto', 'pasporto: grava dokumento nepre kunportenda dum eksterlanda vojaĝado. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pastaĵo', 'pastaĵo', 'pastaĵo: itala manĝaĵo el pasto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pastro', 'pastro', 'pastro: religia funkciulo, kiu prizorgas religiajn aferojn kaj faras aŭ gvidas di-servojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('paŝtisto', 'paŝtisto', 'paŝtisto: homo, kiu prizorgas bestojn, ekzemple ŝafojn aŭ bovinojn, dum ili restas en la kampo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('patrono', 'patrono', 'patrono: protektanta gravulo aŭ sanktulo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('patrujo', 'patrujo', 'patrujo: la lando de la gepatroj, kie oni naskiĝis kaj sentas sin hejme.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pavilono', 'pavilono', 'pavilono: libere staranta, ne tre granda konstruaĵo, plej ofte lokita en ĝardeno aŭ parko, kutime servanta por amuzaj celoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('PDF: Portebla Dokument-Formo', 'PDF: Portebla Dokument-Formo', 'PDF: Portebla Dokument-Formo: aranĝo de dosiero, kiu enhavas tekston aŭ bildon por surpapera presado aŭ por montrado sur komputila ekrano, kiun oni povas legi per preskaŭ ĉia komputila sistemo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pejzaĝo', 'pejzaĝo', 'pejzaĝo: regiono konsiderata kiel bela aŭ interesa rigardaĵo por homaj okuloj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pensio', 'pensio', 'pensio: sumo, kiun maljunulo regule ricevadas por viv-teni sin, kiam li aŭ ŝi ĉesis labori.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('percepto', 'percepto', 'percepto: scio, kiun ni ekhavas pri la ekstera mondo pere de niaj kapabloj vidi, aŭdi, tuŝi, gustumi kaj tiel plu.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('perdriko', 'perdriko', 'perdriko: manĝebla birdo el la sama familio kiel la kokoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('perei', 'perei', 'perei: perdi la vivon pro iu malfeliĉa okazo; ĉesi ekzisti, nuliĝi, neniiĝi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('perfidi', 'perfidi', 'perfidi: agi malamike kontraŭ amiko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('perfido', 'perfido', 'perfido: malamika ago kontraŭ amiko, aŭ kontraŭ grupo aŭ ŝtato, al kiu oni mem apartenas.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('perfidulo', 'perfidulo', 'perfidulo: homo, kiu donas informojn al la malamikoj de la propra grupo aŭ ŝtato.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('per-forta', 'per-forta', 'per-forta: uzanta korpan forton por misuzi alian homon aŭ por devigi iun aŭ ion kontraŭ ties volo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('per-forto', 'per-forto', 'per-forto: uzo de korpa forto por misuzi alian homon aŭ por devigi iun aŭ ion kontraŭ ties volo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('periodaĵo', 'periodaĵo', 'periodaĵo: gazeto aŭ alia eldonaĵo, kiu aperadas laŭ regulaj periodoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('persa', 'persa', 'persa: hind-eŭropa lingvo, parolata en Irano, Afganujo kaj Taĝikujo; rilata al tiu lando, kiu nuntempe nomiĝas Irano.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('persekuti', 'persekuti', 'persekuti: konstante postsekvi iun homon, kun la celo mistrakti lin aŭ ŝin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('persekuto', 'persekuto', 'persekuto: konstanta kruela mistraktado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('persiste', 'persiste', 'persiste: plu farante aferon malgraŭ malhelpoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('persisti', 'persisti', 'persisti: plu fari aferon malgraŭ malhelpoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('personaro', 'personaro', 'personaro: la tuto de la personoj laborantaj en iu organizaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('perspektivo', 'perspektivo', 'perspektivo: aspekto prezentata de malproksimaj objektoj, rilate al la punkto, de kie oni rigardas; aspekto prezentata de malproksima, estinta aŭ estonta okazo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('persvadi', 'persvadi', 'persvadi: per emoci-vekaj vortoj puŝi iun fari ion aŭ konsenti pri io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('perturba', 'perturba', 'perturba: kaŭzanta malagrablan senton pro sia nenormaleco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pesimisme', 'pesimisme', 'pesimisme: rigardante la estontecon sen multaj esperoj; ne atendante bonajn rezultojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('petalo', 'petalo', 'petalo: unu ero el la plej bela parto de floro, ofte kun rimarkindaj koloroj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('peticio', 'peticio', 'peticio: pet-skribo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pet-skribo', 'pet-skribo', 'pet-skribo: dokumento kun iu peto, subskribita de multaj membroj de la publiko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pia', 'pia', 'pia: tre atenta kaj respekto-plena pri religiaj aferoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('piano', 'piano', 'piano: muzikilo, kiun oni ludas per klavaro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pied-noto', 'pied-noto', 'pied-noto: klariga noto en skriba verko, kiu aperas en la malsupra parto de paĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('piĝino', 'piĝino', 'piĝino: simpligita lingvo, kiu estiĝas, kiam malsamlingvanoj devas kunlabori aŭ interrilati, ne konante la lingvon unu de la aliaj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pilgrimanto', 'pilgrimanto', 'pilgrimanto: homo, kiu vojaĝas kun religia celo al sankta loko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pilgrimo', 'pilgrimo', 'pilgrimo: vojaĝo kun religia celo al sankta loko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pilolo', 'pilolo', 'pilolo: malgranda malmola kuracilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pint-horo', 'pint-horo', 'pint-horo: la horo, kiam la plejmulto da homoj veturas al aŭ de siaj laborejoj, tiel ke la urbaj veturiloj estas tre plenaj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pinto', 'pinto', 'pinto: plej alta punkto; la plej trafa aŭ grava momento aŭ punkto; la lasta parto aŭ la plej supra parto de iu objekto, ekzemple de krajono aŭ de nazo, kiu pli kaj pli mallarĝiĝas ĝis la fino. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pioniro', 'pioniro', 'pioniro: homo, kiu sola aŭ kiel membro de grupo komencas novan aferon, montrante la vojon al postaj homoj; tiu, kiu unue konigis Esperanton en sia propra lando aŭ medio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('piramido', 'piramido', 'piramido: grandega konstruaĵo en Egiptujo kun kvar-angula bazo kaj tri-angulaj flankoj; objekto kun kvar-angula bazo kaj tri-angulaj flankoj') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pisi', 'pisi', 'pisi: “maltrinki”; forigi akvon el sia korpo post trinkado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pistilo', 'pistilo', 'pistilo: metala, ligna aŭ ŝtona ilo uzata por ripete bati ion, ĝis ĝi rompiĝas en tre malgrandajn aŭ molajn pecetojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pizo', 'pizo', 'pizo: malgranda verda ronda legometo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('placebo', 'placebo', 'placebo: ŝajna kuracilo, tamen sen reala kuraca enhavo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('placo', 'placo', 'placo: libera spaco ĉirkaŭata de konstruaĵoj en urbo aŭ vilaĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('plado', 'plado', 'plado: unuopa manĝaĵo, kiel parto de pli granda manĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('plagiato', 'plagiato', 'plagiato: ŝtelado de artisma ideo, aŭ de teksto verkita de alia homo, prezentante ĝin kvazaŭ oni mem kreis ĝin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('plaĝo', 'plaĝo', 'plaĝo: marbordo, kie feriantoj naĝas, sunbruniĝas, kaj amuziĝas. [') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('planedo', 'planedo', 'planedo: granda ĉiela objekto sen propra lumo, kiu rondiras ĉirkaŭ stelo; ekzemple nia Tero estas planedo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('planlingvo', 'planlingvo', 'planlingvo: lingvo planita kaj kreita de homo aŭ homoj, anstataŭ evolui nature.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('platformo', 'platformo', 'platformo: ebena bazo, parto de konstruaĵo aŭ ŝipo, sur kiu staras pezaj aĵoj; (en komputado) retejo, kiu ebligas al siaj uzantoj interagi kaj dividi enhavon (ekzemple filmetojn) kun la aliaj uzantoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pledi', 'pledi', 'pledi: paroli antaŭ juĝisto, reganto, aŭ la publiko, por defendi sian propran aferon aŭ tiun de alia homo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('plenumi', 'plenumi', 'plenumi: plene fari tion, kio necesas; efektivigi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('plum-nomo', 'plum-nomo', 'plum-nomo: kaŝnomo de verkisto, kiun li/ŝi uzas anstataŭ la vera nomo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pluralo', 'pluralo', 'pluralo: multenombro (-aj aŭ -oj en Esperanto).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pluŝo', 'pluŝo', 'pluŝo: mola ŝtofo uzata por fari vestojn kaj ludil-bestojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pluŝ-urso', 'pluŝ-urso', 'pluŝ-urso: ludil-besto el mola ŝtofo en la formo de urso.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('podkasto', 'podkasto', 'podkasto: programo trovebla en Interreto, kiun interesatoj povas kopii kaj aŭskulti per propra telefono, komputilo aŭ alia ilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('poeto', 'poeto', 'poeto: verkisto de poezio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pokalo', 'pokalo', 'pokalo: valora taso el multekosta metalo, donata kiel premio al la venkinto de sporta konkurso.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('polento', 'polento', 'polento: simpla, tradicia manĝaĵo el norda Italujo. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('poligloto', 'poligloto', 'poligloto: homo kun ekster-ordinara kapablo paroli multajn lingvojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('politekniko', 'politekniko', 'politekniko: plej supera teknika lernejo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('poluso (norda)', 'poluso (norda)', 'poluso (norda): la plej norda punkto de la mondo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('polvo', 'polvo', 'polvo: tre malgrandaj kaj malpezaj eretoj foje videblaj en la aero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('polvo-suĉi', 'polvo-suĉi', 'polvo-suĉi: purigi plankon per maŝino, kiu “en-spiras” malgrandajn malpuraĵojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('polvo-suĉilo', 'polvo-suĉilo', 'polvo-suĉilo: maŝino kiu purigas la plankon, en-spirante malgrandajn malpuraĵojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pompa', 'pompa', 'pompa: bela kaj brila, tiel ke ĝi ŝajnas al la homoj tre grava.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ponardo', 'ponardo', 'ponardo: tre akra mallonga tranĉilo portata ĉe la korpo por ataki homojn aŭ por defendi sin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pop-kanto', 'pop-kanto', 'pop-kanto: populara kanto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pornografia', 'pornografia', 'pornografia: rilata al tekstoj, fotoj, filmoj kaj simile, kiuj detale montras seksan agadon en maniero konsiderata neakceptebla laŭ la sociaj kutimoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('portretito', 'portretito', 'portretito: la homo, kies bildo estas pentrita de artisto, aŭ fotita de fotisto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('portreto', 'portreto', 'portreto: bildo aŭ foto, kiu prezentas la personan aspekton de homo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('posteno', 'posteno', 'posteno: loko, kie soldato estas starigita; ofico, laborfunkcio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('post-lasaĵo', 'post-lasaĵo', 'post-lasaĵo: tio, kio restis post ies foriro aŭ post la morto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('poŝ-legilo', 'poŝ-legilo', 'poŝ-legilo: malgranda ilo kun ekrano per kiu eblas legi librojn kaj aliajn dokumentojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('potenca', 'potenca', 'potenca: tre forta, kun la kapablo regi aliajn homojn aŭ objektojn kaj devigi ilin obei.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('potenco', 'potenco', 'potenco: granda forto, kun la kapablo regi aliajn homojn aŭ objektojn kaj devigi ilin obei.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pozi', 'pozi', 'pozi: resti en aparta star-maniero por esti fotata, desegnata aŭ pentrata.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pozitiva', 'pozitiva', 'pozitiva: jesa, akcepta, permesa, konsenta, plusa, ĝusta, certa, esperiga, kuraĝiga.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('praa', 'praa', 'praa: kvazaŭ de la pra-homoj kiuj vivis en antaŭ-historia periodo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pra-epoko', 'pra-epoko', 'pra-epoko: antaŭhistoria periodo, kiam la homoj uzis ŝtonajn ilojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pragmata', 'pragmata', 'pragmata: rigardanta la faktojn nur el la vidpunkto de ilia praktika valoro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('predanto', 'predanto', 'predanto: besto, kiu atakas aliajn por manĝi ilin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('prediki', 'prediki', 'prediki: parole komuniki al publiko sciojn religiajn; doni konsilojn ne deziratajn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('prediko', 'prediko', 'prediko: parolado en preĝejo aŭ alia loko per kiu religia gvidanto komunikas al la publiko religiajn sciojn aŭ konsilojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('prefikso', 'prefikso', 'prefikso: vortero, kiun oni aldonas antaŭ Esperanta kapvorto por krei novan vorton, ekzemple mal-, re-, dis-.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('premio', 'premio', 'premio: donaco al gajninto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('prestiĝa', 'prestiĝa', 'prestiĝa: tre fama, konsiderata havi altan valoron pro merito kaj sukcesa agado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('preteksto', 'preteksto', 'preteksto: ŝajna kialo por ne fari ion, proponita por kaŝi la veran kialon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('primitiva', 'primitiva', 'primitiva: montranta la praformon de afero ankoraŭ ne plene evoluinta.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('princino', 'princino', 'princino: filino de reĝo kaj/aŭ reĝino.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('princo', 'princo', 'princo: filo de reĝo kaj/aŭ reĝino.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('printi', 'printi', 'printi: presi per komputila presilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('prioritato', 'prioritato', 'prioritato: la rajto esti unua kaj plej grava en listo de farendaj aferoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('privata', 'privata', 'privata: ne publika; ne por ĉiuj, sed nur por iu aparta persono aŭ por aparta grupo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('privateco', 'privateco', 'privateco: stato, en kiu oni tenas siajn proprajn aferojn nepublikaj, kaj ne lasas aliajn homojn scii pri ili.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('privilegio', 'privilegio', 'privilegio: aparta rajto aŭ aparte bona situacio, kiu estas pli bona ol tiu, kiun aliaj homoj normale ricevas.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('probabla', 'probabla', 'probabla: kun plimulto da ŝancoj; havanta plej bonan ŝancon por realiĝi; plej verŝajne okazonta.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('probableco', 'probableco', 'probableco: la kalkulo pri la ŝanco, ke io okazos aŭ realiĝos. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('proceduro', 'proceduro', 'proceduro: serio de paŝoj, kiujn necesas plenumi, por fari iun aferon laŭ la ĝusta maniero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('procento', 'procento', 'procento: centono (%).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('procesio', 'procesio', 'procesio: marŝado de homoj, unu post alia, kutime en speciala okazo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('proceso', 'proceso', 'proceso: juĝ-afero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('profesoro', 'profesoro', 'profesoro: alt-nivela instruisto en supera lernejo; estro de universitata fako.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('profeto', 'profeto', 'profeto: homo aganta kaj parolanta laŭ instrukcio de iu dio; homo kiu antaŭvidas la estontecon kaj alportas mesaĝon de dio al la homaro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('profilo', 'profilo', 'profilo: sinprezento, preferoj kaj aliaj personaj informoj, kiujn uzanto aperigas publike aŭ kaŝe en iu retejo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('profiti', 'profiti', 'profiti: ricevi utilon aŭ gajnon el io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('profito', 'profito', 'profito: utilo aŭ gajno ricevita el vendo aŭ alia agado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('projekcii', 'projekcii', 'projekcii: sendi filmon aŭ alian luman bildon sur ekranon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('proklami', 'proklami', 'proklami: klare anonci, por ke la publiko sciu.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('prokrasti', 'prokrasti', 'prokrasti: ne fari nun, sed malfruigi ĝis posta momento.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('proksimume', 'proksimume', 'proksimume: ne tute ĝuste, sed nur proksime al la ĝusta; ne precize, pli-malpli, ĉirkaŭ.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('prononci', 'prononci', 'prononci: elparoli; diri sonojn por formi vortojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('prononco', 'prononco', 'prononco: elparolo; aparta maniero diri sonojn por formi vortojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('propagandi', 'propagandi', 'propagandi: aktive labori por disvastigi ideon, ekzemple politikan opinion aŭ idealon kiel Esperanto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('propagando', 'propagando', 'propagando: klopodado por disvastigi ideon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('proporcio', 'proporcio', 'proporcio: rilato de la partoj inter si kaj kun la tuto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('prospero', 'prospero', 'prospero: sukcesa, kontentiga stato.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('protektado', 'protektado', 'protektado: defendado kontraŭ danĝeroj. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('protekti', 'protekti', 'protekti: defendi kontraŭ danĝeroj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('protesti', 'protesti', 'protesti: esprimi sian kontraŭstaron pri afero, kiun oni opinias nejusta aŭ neakceptebla.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('protesto', 'protesto', 'protesto: kontraŭstaro kontraŭ afero, kiun oni opinias nejusta aŭ neakceptebla.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('proverbo', 'proverbo', 'proverbo: popola diraĵo, kiu ofte enhavas ian saĝan ideon aŭ konsilon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('provinco', 'provinco', 'provinco: regiono de lando aŭ ŝtato, kiu mem prizorgas siajn publikajn servojn, sub direktado de la centra registaro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('provizi', 'provizi', 'provizi: aranĝi, ke iu aŭ io ricevu iujn utilajn aŭ necesajn aferojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('provizo', 'provizo', 'provizo: kolekto de aferoj por estonta uzo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('provizora', 'provizora', 'provizora: ne daŭra, ne konstanta, por nur iom da tempo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('provizore', 'provizore', 'provizore: ne daŭre, ne konstante, por nur iom da tempo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('prov-legi', 'prov-legi', 'prov-legi: legi tekston por kontroli, ĉu ĝi estas en ordo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('prozo', 'prozo', 'prozo: ne-poezia parolo aŭ skribaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pruvi', 'pruvi', 'pruvi: montri, ke io estas vera.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pruvo', 'pruvo', 'pruvo: afero kiu eksterdube montras, ke io estas vera.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pseŭdonimo', 'pseŭdonimo', 'pseŭdonimo: nomo, kiun oni uzas, por kaŝi sian veran nomon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('psikologio', 'psikologio', 'psikologio: scienco pri la homa menso.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('psikologo', 'psikologo', 'psikologo: sciencisto pri la homa menso. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pulmo', 'pulmo', 'pulmo: en la brusto bestoj kaj homoj havas du pulmojn, necesajn por spirado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pulovero', 'pulovero', 'pulovero: varma vesto por la supra parto de la korpo kaj la brakoj, kiun oni surmetas, tirante ĝin super la kapon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pulvoro', 'pulvoro', 'pulvoro: multaj tre malgrandaj eroj de io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('punto', 'punto', 'punto: speco de ŝtofo en la formo de reto, kies fadenoj prezentas desegnaĵon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('pup-teatro', 'pup-teatro', 'pup-teatro: teatraĵo prezentata de pupoj anstataŭ homoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('puŝ-levo', 'puŝ-levo', 'puŝ-levo: korpa ekzerco, laŭ kiu oni levas la supran parton de la korpo puŝante per la brakoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('putri', 'putri', 'putri: malboniĝi dum la tempo pasas, ekzemple frukto aŭ mortinta besto post iom da tempo putras.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rabato', 'rabato', 'rabato: malaltigo de prezo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rabi', 'rabi', 'rabi: per forto forpreni la posedaĵojn de aliaj homoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('racia', 'racia', 'racia: aganta laŭ inteligenta pensado, ne surbaze de emocioj sed de saĝa juĝado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('racio', 'racio', 'racio: la kapablo fari decidojn per inteligenta pensado, ne surbaze de emocioj sed de saĝa juĝado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('radikala', 'radikala', 'radikala: atinganta ĝis la bazo, trafanta la bazajn principojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rajdi', 'rajdi', 'rajdi: veturi sidante sur la dorso de ĉevalo aŭ alia besto; sidi sur biciklo aŭ alia veturilo kvazaŭ sur ĉevalo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rano', 'rano', 'rano: malgranda besto, kies idoj vivas unue en akvo, sed poste povas vivi ankaŭ sur la tero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rasismo', 'rasismo', 'rasismo: idearo, laŭ kiu videblaj korpaj ecoj, ekzemple haŭtkoloro, apartigas unu homgrupon de aliaj; la kredo, ke iuj homoj estas pli aŭ malpli valoraj pro sia haŭtkoloro aŭ sia deveno.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('raso', 'raso', 'raso: tre malpreciza divido de la homaro laŭ kelkaj facile videblaj ecoj (koloro de la haŭto, formo de la okuloj, kaj simile).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ravi', 'ravi', 'ravi: ĉarmi iun pro sia nekredebla beleco aŭ alia mirinda eco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('reagi', 'reagi', 'reagi: agi responde al ekstera afero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('reago', 'reago', 'reago: tio kion oni faras, sentas aŭ pensas responde al situacio aŭ okazaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('recepto', 'recepto', 'recepto: detalaj instrukcioj pri la preparado de manĝaĵo aŭ trinkaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('reciproka', 'reciproka', 'reciproka: de la unua homo al la dua, kaj tute same, de la dua homo al la unua.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('reciprokeco', 'reciprokeco', 'reciprokeco: egala interŝanĝado inter du aŭ pli da homoj, laŭ kiu unu donas al la alia, kaj la dua donas laŭ la sama maniero al la unua.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('redakcio', 'redakcio', 'redakcio: la labora organizaĵo (homoj kaj ejoj) de gazeto, revuo kaj simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Reddit', 'Reddit', 'Reddit: populara socia retejo kaj diskutejo kun multaj fakoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('reflekti', 'reflekti', 'reflekti: speguli; resendi bildon kiel per spegulo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('re-formi', 're-formi', 're-formi: ŝanĝi la formon de afero kun la celo plibonigi ĝin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('re-formo', 're-formo', 're-formo: ŝanĝo en la formo de afero kun la celo plibonigi ĝin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('refreno', 'refreno', 'refreno: parto de kanto, kiun oni regule kaj plurfoje ripetas.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('regali', 'regali', 'regali: doni bonan manĝaĵon aŭ trinkaĵon (aŭ ion alian bonan kaj plezurigan).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('registaro', 'registaro', 'registaro: grupo de homoj, kiuj regas ŝtaton.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('registraĵo', 'registraĵo', 'registraĵo: sondosiero, filmo aŭ alia, per kiu estas konservita materialo por posta reaŭskultado aŭ rigardado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('registri', 'registri', 'registri: konservi sonojn (voĉojn aŭ muzikon) aŭ filmi okazaĵon por posta reaŭskultado aŭ rigardado; orde kaj metode skribi ciferojn, notojn aŭ aliajn informojn en tiu-cela libro aŭ kajero pri faktoj, pri kiuj oni volas konservi memoron.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('registriĝi', 'registriĝi', 'registriĝi: enskribiĝi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('registriĝo', 'registriĝo', 'registriĝo: enskribiĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('regno', 'regno', 'regno: ŝtato, lando, reĝlando.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('reĝisori', 'reĝisori', 'reĝisori: direkti la artan produktadon de teatraĵo aŭ filmo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('reĝisoro', 'reĝisoro', 'reĝisoro: persono, kiu direktas la artan produktadon de teatraĵo aŭ filmo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rekoni', 'rekoni', 'rekoni: koni iun aŭ ion, ĉar oni jam renkontis lin/ŝin/ĝin pli frue; anonci la pravecon de iu fakto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rekono', 'rekono', 'rekono: la ago akcepti ion kiel validan aŭ valoran.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rekordo', 'rekordo', 'rekordo: plej supera rezulto iam ajn atingita, kutime en sportaj konkursoj, sed ankaŭ en aliaj aferoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rektoro', 'rektoro', 'rektoro: direktoro de universitato.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('relative', 'relative', 'relative: laŭ komparo kun aliaj similaj aferoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('reliefo', 'reliefo', 'reliefo: elstaranta art-verko sur muro aŭ simile; elstaranta parto en komparo kun la cetero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rendevuo', 'rendevuo', 'rendevuo: interkonsento, laŭ kiu du aŭ pluraj personoj renkontiĝos en sama loko je sama horo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('renesanco: “renaskiĝo”', 'renesanco: “renaskiĝo”', 'renesanco: “renaskiĝo”: nomo de historia periodo, kiam socio moderniĝas.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('reno', 'reno', 'reno: interne de la korpo estas du renoj, kiuj purigas la sangon kaj forigas nebezonatajn aĵojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('renversi', 'renversi', 'renversi: turni objekton por ke ĝia supro estu malsupra.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('reprezentado', 'reprezentado', 'reprezentado: la bildo aŭ maniero, laŭ kiu grupo prezentas iun aŭ ion alian, aŭ kiel tiu prezentas sin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('reprezentanto', 'reprezentanto', 'reprezentanto: homo parolanta aŭ aganta nome de iu asocio aŭ organizaĵo; homo elektita de la popolo por prezenti ties opiniojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('reprezenti', 'reprezenti', 'reprezenti: prezenti, anstataŭi; prezenti sin nome de iu asocio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('reputacio', 'reputacio', 'reputacio: opinio de la publiko pri iu homo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('respektive', 'respektive', 'respektive: rilata al nur unu el la priparolataj aferoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('respondeci', 'respondeci', 'respondeci: zorgi pri plenumado de iu agado kaj respondi al plendoj aŭ aliaj komentoj pri ĝia realigo. respondeco: la devo okupiĝi pri plenumado de iu agado kaj respondi al plendoj aŭ aliaj komentoj pri ĝia realigo; la devo zorgi pri la rezulto de iu ago aŭ faro, aŭ pri la taŭga plenumo de iu afero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('respondeculo', 'respondeculo', 'respondeculo: la homo kun la tasko zorgi pri plenumado de iu agado; kaj respondi al komentoj pri ĝia realigo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('respubliko', 'respubliko', 'respubliko: ŝtato, kies estro ne estas reĝo, sed homo elektita de la popolo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('restoracio', 'restoracio', 'restoracio: manĝejo, kie oni pagas por manĝi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('resume', 'resume', 'resume: mallonge redonante la ĉefan enhavon de artikolo, parolado aŭ simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('resumo', 'resumo', 'resumo: mallonga priskribo de la ĉefaj temoj de artikolo, parolado aŭ simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('re-tiriĝi', 're-tiriĝi', 're-tiriĝi: reiri malantaŭen; ĉesigi sian agadon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('retroiri', 'retroiri', 'retroiri: reiri malantaŭen.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('retumilo', 'retumilo', 'retumilo: komputila programo, kiu helpas moviĝon en Interreto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('revi', 'revi', 'revi: imagi estontan realigon de tio, kion oni forte deziras.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('revizii', 'revizii', 'revizii: kontroli tekston aŭ alian aferon, kun la celo korekti kaj laŭbezone plibonigi ĝin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('revo', 'revo', 'revo: imago de feliĉigaj, dezirataj aferoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('revoluciisto', 'revoluciisto', 'revoluciisto: homo, kiu laboras, plejofte kontraŭleĝe, por realigi subitan grandegan ŝanĝon en la regado de iu ŝtato.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('revolucio', 'revolucio', 'revolucio: subita grandega ŝanĝo en la formo de regado, ofte per amasa popola agado aŭ interna milito; subita grandega ŝanĝiĝo en la irado de aferoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rezervejo', 'rezervejo', 'rezervejo: regiono, kie la lokaj bestoj kaj kreskaĵoj rajtas vivi sub naturaj kondiĉoj en plena libereco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rezigni', 'rezigni', 'rezigni: forlasi iun esperatan aŭ deziratan celon; decidi ne plu fari ion, uzi ion.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rezisti', 'rezisti', 'rezisti: ne subiĝi; kontraŭstari de-eksteran forton.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rezisto', 'rezisto', 'rezisto: kontraŭstaro kontraŭ ekstera forto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rezolucio', 'rezolucio', 'rezolucio: anonco, kiun faras asocio aŭ kunveno, pri sia pozicio aŭ opinio pri iu demando.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ribeli', 'ribeli', 'ribeli: intence ne obei al superulo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rifuĝinto', 'rifuĝinto', 'rifuĝinto: homo, kiu estis devigata forlasi sian propran loĝlokon pro milito aŭ alia serioza situacio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rifuzi', 'rifuzi', 'rifuzi: malakcepti, ne konsenti.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rigida', 'rigida', 'rigida: ne moliĝanta sub premo; malema ŝanĝi formon aŭ ideon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rigora', 'rigora', 'rigora: tre precize sekvanta ĉiujn regulojn. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rikolto', 'rikolto', 'rikolto: prenado de la fruktoj aŭ plantoj, kiujn oni kreskigis, por manĝi, uzi aŭ vendi ilin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rimo', 'rimo', 'rimo: pluraj vortoj, kutime en poeziaĵo, kiuj finiĝas ĉiuj per la sama songrupo, ekzemple “besto” , “festo” kaj “vesto”.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ringo', 'ringo', 'ringo: cirklo-forma objekto, kiun oni portas ĉirkaŭ la fingro; cirklo-forma objekto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rinocero', 'rinocero', 'rinocero: peza, dik-haŭta besto el Afriko kaj Azio, kun unu aŭ du elstaraĵoj sur la nazo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ripari', 'ripari', 'ripari: rebonigi rompitan aŭ nefunkciantan aferon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('riparo', 'riparo', 'riparo: rebonigo de rompita aŭ nefunkcianta afero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('riski', 'riski', 'riski: meti en danĝeran situacion.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('risko', 'risko', 'risko: ebleco de danĝera situacio; ebleco de malgajno aŭ perdo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ritmo', 'ritmo', 'ritmo: en muziko aŭ poezio, regula interŝanĝo de fortaj kaj malfortaj sonoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rito', 'rito', 'rito: serio de agoj regule farataj dum religia aŭ alia tradicia okazo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('roboto', 'roboto', 'roboto: maŝino kapabla agi kvazaŭ ĝi estus homo aŭ besto, kaj plenumi ties funkciojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rokenrolo', 'rokenrolo', 'rokenrolo: speco de populara muziko, kiu ekestis en Usono dum la malfruaj 1940-aj kaj fruaj 50-aj jaroj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('roko', 'roko', 'roko: ŝtonego; tre malmola, ŝtona parto de la tera supraĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rok-muziko', 'rok-muziko', 'rok-muziko: speco de populara muziko, kiu ekestis en Usono dum la 1950-aj kaj 60-aj jaroj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rolanto, rolulo', 'rolanto, rolulo', 'rolanto, rolulo: aganto en teatraĵo, filmo aŭ libro, kaj ankaŭ en ludoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('roli', 'roli', 'roli: esti unu el la agantoj en teatraĵo aŭ filmo, kaj ankaŭ en ludoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rolo', 'rolo', 'rolo: tio, kion diras kaj faras aganto en teatraĵo aŭ filmo; la funkcio aŭ agado, kiun iu aŭ io devas plenumi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('romanco', 'romanco', 'romanco: difinita speco de muzika aŭ poezio verko. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('romantika', 'romantika', 'romantika: rilata al arta, literatura kaj muzika movado de la malfrua 18-a kaj la 19-a jarcentoj, laŭ kiu emocioj pli gravas ol precizeco kaj scienco; (pri rakonto aŭ libro) rilata al emocioj kaj sentoj, precipe amo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('romia', 'romia', 'romia: rilata al la vasta regiono regata de la urbo Romo antaŭ multaj jarcentoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('romiano', 'romiano', 'romiano: ano de la regiono regata de la urbo Romo antaŭ multaj jarcentoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Romio', 'Romio', 'Romio: la vasta regiono regata de la urbo Romo antaŭ multaj jarcentoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ronĝulo', 'ronĝulo', 'ronĝulo: grupo de bestoj kun tre fortaj antaŭdentoj, per kiuj ili povas formanĝi eĉ malmolan lignon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('roso', 'roso', 'roso: akvo, kiu fru-matene troviĝas sur la herbo kaj aliaj kreskaĵoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rosti', 'rosti', 'rosti: per varmego aŭ fajro kuiri manĝaĵon sen aldono de akvo aŭ graso.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rotacio', 'rotacio', 'rotacio: turniĝo ĉirkaŭ sia propra centro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Ruando', 'Ruando', 'Ruando: lando en la orienta parto de centra Afriko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rubaĵoj', 'rubaĵoj', 'rubaĵoj: senvaloraj, nedezirataj restaĵoj por forĵetado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rubando', 'rubando', 'rubando: longa, mallarĝa peco de ŝtofo, uzata por beligi objektojn aŭ por bele ligi ion.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rumana', 'rumana', 'rumana: apartenanta al Rumanujo, lando en sud-orienta Eŭropo ĉe la Nigra Maro, kun ĉefurbo Bukareŝto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rusa', 'rusa', 'rusa: rilata al Rusujo, grandega lando en Eŭropo kaj Azio kun ĉefurbo Moskvo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rusto', 'rusto', 'rusto: brun-ruĝa malpuraĵo, kiu aperas sur feraj objektoj, kiam ili restas en malseketa aero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rutena', 'rutena', 'rutena: la lingvo de regiono en la nuntempa Ukrainujo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('rutino', 'rutino', 'rutino: regula kutimo, pro kiu oni konstante kaj senpense ripetas ĉiam la samajn agojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ruza', 'ruza', 'ruza: kapabla elpensi lertajn rimedojn por atingi ion.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sago', 'sago', 'sago: militilo, kiun oni sendas fluge longan distancon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sak-strato', 'sak-strato', 'sak-strato: strato, kiu estas fermita ĉe unu fino, tiel ke ne eblas eliri; senrezulta agado, sensolva problemo aŭ situacio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('salato', 'salato', 'salato: manĝaĵo el freŝaj miksitaj legomoj, kutime nekuiritaj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sam-ide-ano', 'sam-ide-ano', 'sam-ide-ano: homo kun la sama ideo, esperantisto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sandviĉo', 'sandviĉo', 'sandviĉo: du pan-tranĉaĵoj inter kiuj estas metitaj viando, legomoj, ovaĵo aŭ simile. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sanskrito', 'sanskrito', 'sanskrito: la nomo de tre frua membro de la hind-eŭropa lingvo-familio, kaj antaŭulo de kelkaj el la modernaj hindaj lingvoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sapo', 'sapo', 'sapo: aĵo per kiu oni lavas la korpon aŭ purigas vestojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('satelito', 'satelito', 'satelito: ĉiela korpo, kiu rondiras ĉirkaŭ alia pli granda ĉiela korpo, ekzemple Luno estas satelito de Tero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('satiro', 'satiro', 'satiro: verko, per kiu la verkinto moke atakas la agojn de aliaj homoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('scenaro', 'scenaro', 'scenaro: ĉiuj okazaĵoj en filma rakonto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sceno', 'sceno', 'sceno: seninterrompa peco de teatraĵo, filmo aŭ romano, pri unu situacio, kaj okazanta kutime en unu loko; vidindaĵo prezentata al la rigardanto en bildo aŭ foto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sceptro', 'sceptro', 'sceptro: bastono portata de reĝo aŭ reĝino kiel signo de ties povo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('scienc-fikcio', 'scienc-fikcio', 'scienc-fikcio: rakonto pri la estonteco, ofte kun imago pri la scienco kaj teknikoj de estonta mondo, vojaĝado ekster nia sun-sistemo, tempo-vojaĝado kaj simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sciuro', 'sciuro', 'sciuro: malgranda besto, kiu facile kuras en la arboj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sekcio', 'sekcio', 'sekcio: parto de asocio, oficejo, laborejo aŭ simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sekreta', 'sekreta', 'sekreta: restanta kaŝita, por ke neniu sciu pri ĝi, aŭ nur malmultaj elektitaj personoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sekrete', 'sekrete', 'sekrete: restante kaŝita, por ke neniu sciu pri ĝi, aŭ nur malmultaj elektitaj personoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sekreto', 'sekreto', 'sekreto: kaŝita informo, kiun neniu rajtas scii, aŭ nur malmultaj elektitaj personoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sekundo', 'sekundo', 'sekundo: estas 60 sekundoj en unu minuto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('semestro', 'semestro', 'semestro: duon-jara periodo, precipe ĉe lernejo aŭ universitato') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('semi', 'semi', 'semi: disĵeti aŭ meti en la teron semojn (la aĵetojn, el kiuj kreskos novaj plantoj).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('seminario', 'seminario', 'seminario: praktika kurso dum mallonga periodo, en kiu la instruado estas miksata kun diskutado en malgrandaj laborgrupoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('semo', 'semo', 'semo: parto de planto, el kiu kreskos nova planto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sen-brida', 'sen-brida', 'sen-brida: senlima, tute libera.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sen-dependa', 'sen-dependa', 'sen-dependa: memstara, funkcianta sen la neceso ricevi permeson aŭ helpon de iu aŭ io alia; funkcianta memstare kiel aparta sistemo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sen-dependeco', 'sen-dependeco', 'sen-dependeco: la fakto regi sin mem. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sen-dependiĝi', 'sen-dependiĝi', 'sen-dependiĝi: el-iri el situacio en kiu oni ne rajtas regi sin mem.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sen-drata', 'sen-drata', 'sen-drata: kunligita sen bezono je drato (metala ŝnuro).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sen-fadena telefonio (esprimo ne plu uzata)', 'sen-fadena telefonio (esprimo ne plu uzata)', 'sen-fadena telefonio (esprimo ne plu uzata): radio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sen-iluziiĝo', 'sen-iluziiĝo', 'sen-iluziiĝo: emocio de forta bedaŭro, kiam tre esperata kaj atendata afero ne okazas.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sen-konscie', 'sen-konscie', 'sen-konscie: sen klara scio pri la propraj agoj kaj spertoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sen-pere', 'sen-pere', 'sen-pere: rekte, mem, sen helpo de alia homo aŭ objekto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('senso', 'senso', 'senso: kapablo vidi, aŭdi, tuŝi, gustumi kaj tiel plu.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sentimentala', 'sentimentala', 'sentimentala: vokanta al la sentemo kaj emocioj, precipe al amaj kaj dolĉaj imagoj. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('serena', 'serena', 'serena: trankvila.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('serpento', 'serpento', 'serpento: longa besto sen kruroj, kiuj moviĝas sur la tero, foje tre danĝera.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('serpentumi', 'serpentumi', 'serpentumi: iri laŭ tre malrekta vojo, laŭ la sama maniero kiel serpento.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sesio', 'sesio', 'sesio: kunsida periodo; difinita serio de kunsidoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sfinkso', 'sfinkso', 'sfinkso: imagita besto kun homa kapo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Siamo', 'Siamo', 'Siamo: eksa nomo de Tajlando.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Siberio', 'Siberio', 'Siberio: grandega regiono en orienta Rusujo. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sidejo', 'sidejo', 'sidejo: ĉefa oficejo de organizaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('silabo', 'silabo', 'silabo: parto de vorto, ekzemple la vorto “saluton” havas tri silabojn: sa-lu-ton.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('simboli', 'simboli', 'simboli: elvoki aŭ prezenti ion alian (ekzemple la signo $ simbolas monon).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('simbolo', 'simbolo', 'simbolo: io, kio elvokas aŭ prezentas ion alian (ekzemple koro estas simbolo de amo).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('simfonio', 'simfonio', 'simfonio: granda kaj longa muzikverko por multaj muzikistoj ludantaj kune.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('simio', 'simio', 'simio: besto la plej proksima kaj simila al homo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('simpatio', 'simpatio', 'simpatio: ŝato al iu homo, pro simileco de sentoj, gustoj, opinioj kaj tiel plu.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('simpozio', 'simpozio', 'simpozio: kunveno de fakuloj por diskutado, prelegado kaj interŝanĝo de informoj pri fakaj aferoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('simptomo', 'simptomo', 'simptomo: ekstera signo aŭ antaŭsigno de iu malsano.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sinagogo', 'sinagogo', 'sinagogo: juda preĝejo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sincere', 'sincere', 'sincere: agante aŭ parolante laŭ siaj veraj emocioj kaj opinioj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sin-dediĉo', 'sin-dediĉo', 'sin-dediĉo: plen-kora donado de si mem por iu celo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sin-deteno', 'sin-deteno', 'sin-deteno: nepartopreno en ia komuna agado; ne doni sian voĉon en voĉdonado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sindromo', 'sindromo', 'sindromo: grupo de eksteraj signoj aŭ antaŭsignoj, kiuj troviĝas kune, kaj montras la ĉeeston de difinita malsano.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('singulto', 'singulto', 'singulto: aparta sono, kiun oni ellasas pro subita movo de la spir-vojoj interne de la korpo. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sin-sekvo', 'sin-sekvo', 'sin-sekvo: serio da aĵoj, regule metitaj unu post alia; serio da okazaĵoj, okazantaj unu post alia.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sintakso', 'sintakso', 'sintakso: parto de la gramatiko, kiu priskribas la regulojn de kunmetado de la diversaj lingvaj unuoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sin-teno', 'sin-teno', 'sin-teno: la maniero laŭ kiu homo agas aŭ pensas.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sireno', 'sireno', 'sireno: estulo duone en la formo de virino, duone kiel fiŝo, kiu logis maristojn per sia bela kantado; senkora virino, kiu logas virojn sen la intenco kontentigi ilin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('situi', 'situi', 'situi: troviĝi, esti en iu loko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('skajpo', 'skajpo', 'skajpo: programo por interparoli voĉe kaj vide per Interreto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('skandalo', 'skandalo', 'skandalo: popola kolero pro malbona ago de respektata publika persono.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('skani', 'skani', 'skani: maŝine ciferecigi skriban dokumenton, foton aŭ desegnon, por ke ĝi estu montrebla per komputilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('skeĉo', 'skeĉo', 'skeĉo: mallonga, amuza teatraĵeto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('skeleto', 'skeleto', 'skeleto: la tuta ostaro de homa aŭ besta korpo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('skii', 'skii', 'skii: gliti sur neĝo uzante longajn mallarĝajn tabulojn fiksitajn al la ŝuoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('skizo', 'skizo', 'skizo: unua rapida provo pri desegnaĵo aŭ verko; rapida prezento, sen detaloj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sklaveco', 'sklaveco', 'sklaveco: situacio, en kiu iuj homoj posedas aliajn kvazaŭ ili estus objektoj, kaj devigas ilin labori senpage.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sklavo', 'sklavo', 'sklavo: homo posedata de alia homo kvazaŭ objekto, kaj devigata labori senpage.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('skulptaĵo', 'skulptaĵo', 'skulptaĵo: artaĵo el ŝtono, ligno aŭ simila materialo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('skulpti', 'skulpti', 'skulpti: krei artaĵon el ŝtono, ligno aŭ simila materialo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('skvamoj', 'skvamoj', 'skvamoj: malgrandaj aĵoj, kiuj multenombre kovras la haŭton de fiŝoj kaj aliaj bestoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('slipo', 'slipo', 'slipo: papera folieto, sur kiu oni skribas noton aŭ alian mallongan informon. [Ilustraĵo memfarita]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('slogano', 'slogano', 'slogano: mallonga, facile memorebla frazo esprimanta ideon aŭ idealon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('slovaka', 'slovaka', 'slovaka: apartenanta al Slovakujo, lando en centra Eŭropo, kun ĉefurbo Bratislavo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('social-demokrato', 'social-demokrato', 'social-demokrato: ano de politika ideo, kiu celas plibonigi la staton de neriĉaj membroj de la socio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('socialismo', 'socialismo', 'socialismo: politika sistemo laŭ kiu la regantoj devus gvidi sociajn aferojn kaj precipe la ekonomion por la komuna bono.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('socialisto', 'socialisto', 'socialisto: proponanto de politika sistemo laŭ kiu la regantoj devus gvidi sociajn aferojn kaj precipe la ekonomion por la komuna bono.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sociologio', 'sociologio', 'sociologio: scienco pri la organizado kaj evoluo de la homa socio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sofisto', 'sofisto', 'sofisto: homo, kiu kapablas lerte diskuti kaj uzi vortojn, eĉ por tre konvinke montri malveraĵojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sofo', 'sofo', 'sofo: longa, komforta sidilo por tri aŭ kvar personoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sojlo', 'sojlo', 'sojlo: ŝtona aŭ ligna tabulo ĉe la bazo de pordo, kiun necesas transiri por eniri en ĉambron, domon aŭ konstruaĵon; komenco-punkto de nova afero, agado aŭ sperto. [Propra ilustraĵo]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sojo', 'sojo', 'sojo: grava legomo en la azia kuirarto, uzata en tre diversaj manĝaĵoj kaj bongustigiloj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('solena', 'solena', 'solena: okazanta laŭ serioza maniero, kiu montras ke la aranĝo estas tre grava kaj atentinda.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('solidara', 'solidara', 'solidara: helpema, spirita komuneco, eĉ en malfacila situacio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('solidareco', 'solidareco', 'solidareco: helpema, spirita komuneco, eĉ en malfacila situacio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('solstico', 'solstico', 'solstico: la plej longa aŭ la plej mallonga tago de la jaro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('soneto', 'soneto', 'soneto: poemo el 14 versoj (linioj).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sonĝo', 'sonĝo', 'sonĝo: bildoj kaj ideoj, kiujn oni vidas aŭ spertas dum la dormo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('son-registraĵo', 'son-registraĵo', 'son-registraĵo: sonoj (voĉoj aŭ muziko) konservitaj por posta aŭskultado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sopiri', 'sopiri', 'sopiri: forte redeziri ion perditan; suferi kaj malĝoji pro iu forta deziro. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sorĉi', 'sorĉi', 'sorĉi: estigi rezulton per supernatura rimedo; logi la homojn per sia persona ĉarmo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sorĉisto', 'sorĉisto', 'sorĉisto: homo, kiu estigas rezulton per super-natura rimedo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sorto', 'sorto', 'sorto: super-natura forto, kiu regas tion, kio okazos aŭ ne okazos en la homaj aferoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sovaĝa', 'sovaĝa', 'sovaĝa: proksima al la naturo, ne hejmigita, akre impresanta la sentojn, kruela.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sovaĝbesto', 'sovaĝbesto', 'sovaĝbesto: besto, kiu vivas en sia natura ĉirkaŭaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('soveta', 'soveta', 'soveta: rilata al Sovet-unio, grandega ŝtato ekzistanta de 1922 ĝis 1991, kiu entenis la nunajn Rusujon, Ukrainujon, Belorusujon, kaj 12 aliajn landojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Sovet-unio', 'Sovet-unio', 'Sovet-unio: grandega ŝtato ekzistanta de 1922 ĝis 1991, kiu entenis la nunajn Rusujon, Ukrainujon, Belorusujon, kaj 12 aliajn landojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('spaco', 'spaco', 'spaco: (speciala signifo) la vastega spaco ekster nia Tero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('spac-ŝipo', 'spac-ŝipo', 'spac-ŝipo: veturilo, kiu vojaĝas tra la vastega spaco ekster nia Tero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Sparto', 'Sparto', 'Sparto: urbo en suda Grekujo, konata en la malnovaj tempoj pro la militisma edukado de la junuloj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('specifa', 'specifa', 'specifa: aparta; tiu, kaj neniu alia.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('specimeno', 'specimeno', 'specimeno: prov-ekzemplero, eta kvanto da vendaĵoj aŭ alia aĵo montrata por informi, reklami, ebligi studadon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('specio', 'specio', 'specio: aparta klaso de plantoj aŭ bestoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('spektaĵo', 'spektaĵo', 'spektaĵo: prezentaĵo kiun la homoj rigardas, ekzemple teatraĵo, filmo, koncerto aŭ televida programo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('spektaklo', 'spektaklo', 'spektaklo: prezentaĵo, ekzemple en teatro aŭ kinejo; ĉia vidaĵo, kiu altiras atenton kaj intereson.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('spektanto', 'spektanto', 'spektanto: homo kiu rigardas filmon, teatraĵon, televidan programon aŭ simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('spekti', 'spekti', 'spekti: rigardi filmon, teatraĵon, televidan programon aŭ simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('spektro', 'spektro', 'spektro: la tuta serio de la diversaj koloroj kaj radioj, el kiuj konsistas lumo; aro de diversaj, samkategoriaj aferoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('spiko', 'spiko', 'spiko: la kapo de greno aŭ alia herbo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('spioni', 'spioni', 'spioni: kaŝe observi la agojn de malamiko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('spiono', 'spiono', 'spiono: homo sendita por kaŝe observi la agojn de malamiko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sponsoro', 'sponsoro', 'sponsoro: riĉa homo aŭ organizaĵo, kiu donas mon-helpon al kultura, sporta, scienca aŭ alia agado. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sprita', 'sprita', 'sprita: povanta rapide elpensi kaj originale esprimi neatenditajn ideojn en amuza maniero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('spuro', 'spuro', 'spuro: postsigno, pied-signo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('s-ro', 's-ro', 's-ro: sinjoro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('stadio', 'stadio', 'stadio: difinita momento en evoluanta situacio, kiam la afero estas klare malsama ol ĝi estis antaŭe.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('stadiono', 'stadiono', 'stadiono: granda loko taŭge aranĝita por sportaj konkursoj, kun multaj vicoj de sidlokoj por la publiko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('standardo', 'standardo', 'standardo: flago, kiu prezentas ian idealon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('stano', 'stano', 'stano: brila metalo (Sn), kiu facile moliĝas per fajro, facile tranĉebla.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('star-punkto', 'star-punkto', 'star-punkto: opinio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('starti', 'starti', 'starti: ekfunkcii.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('statistika', 'statistika', 'statistika: rilata al la scienco pri kolektado kaj studado de nombroj por montri informojn pri diversaj aferoj. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('statistiko', 'statistiko', 'statistiko: scienco pri kolektado kaj studado de nombroj por montri informojn pri diversaj aferoj. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('statuo', 'statuo', 'statuo: artverko, kutime el ŝtono, en la formo de homo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('statuto', 'statuto', 'statuto: baza regularo de asocio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('stilo', 'stilo', 'stilo: la aparta maniero, laŭ kiu estas prezentata verko, artaĵo, vesto aŭ simile. [Dua difino] la aparta maniero laŭ kiu artisma afero aspektas aŭ okazas. [Tria difino] la aparta maniero, laŭ kiu verkisto kunmetas siajn frazojn kaj esprimas siajn ideojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('stimuli', 'stimuli', 'stimuli: plivigligi la aktivecon aŭ mensan staton de iu aŭ io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('stomako', 'stomako', 'stomako: sako interne de la korpo, kiu traktas ricevitajn manĝaĵojn kaj disrompas ilin por ke la korpo poste utiligu ilin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('strategio', 'strategio', 'strategio: lerte preparita plano de milito; plano pri la maniero atingi iun celon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('strebi', 'strebi', 'strebi: energie streĉi la fortojn de la korpo kaj menso por atingi celon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('strigo', 'strigo', 'strigo: birdo kun grandaj rondaj okuloj, kiu manĝas malgrandajn birdojn kaj bestojn; multaj specoj de strigo aktivas ĉefe nokte.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('strio', 'strio', 'strio: longa, mallarĝa kolora linio sur pli granda objekto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('strofo', 'strofo', 'strofo: unu el la dividaĵoj de poezia verko, kutime kun regula aranĝo, konsistanta el pluraj linioj de teksto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('strukturo', 'strukturo', 'strukturo: la maniero, en kiu estas aranĝitaj kaj kunmetitaj la diversaj partoj de iu konstruo, maŝino, verko aŭ alia afero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('stumpo', 'stumpo', 'stumpo: mallonga restanta parto, ekzemple de fumita cigaredo. [Ilus. Liven Dek]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('subjekto', 'subjekto', 'subjekto: (en gramatiko) la aganto kiu plenumas la agon de frazo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sub-premata', 'sub-premata', 'sub-premata: suferanta sub la povo kaj premoj de alia(j) homo(j).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sub-premi', 'sub-premi', 'sub-premi: premi sub sia povo; devigi homojn fari aferojn, kiujn ili ne deziras fari.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sub-skribi', 'sub-skribi', 'sub-skribi: skribi sian nomon fine de dokumento por montri, ke oni mem verkis ĝin, aŭ por konsenti pri la enhavo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('substantivo', 'substantivo', 'substantivo: vorto prezentanta personon, estulon, objekton, aferon aŭ ideon; en Esperanto substantivoj finiĝas per -o.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sub-streki', 'sub-streki', 'sub-streki: skribi linion sub vorto aŭ frazo, por turni al ĝi la atenton de la leganto; paroli pri iu frazo aŭ ideo ofte kaj energie, por turni al ĝi la atenton de la aŭskultantoj. [Ilustraĵo]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sub-tenanto', 'sub-tenanto', 'sub-tenanto: iu, kiu donas sian helpon al homo, asocio, projekto, politiko aŭ simile, por ke ĝi sukcesu.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sub-teni', 'sub-teni', 'sub-teni: helpi homon, asocion, projekton, politikon aŭ simile, por ke ĝi sukcesu.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sub-teno', 'sub-teno', 'sub-teno: helpo al homo, asocio, projekto, politiko aŭ simile, por ke ĝi sukcesu.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sub-teksto', 'sub-teksto', 'sub-teksto: skriba traduko de fremd-lingva filmo, aperanta en la malsupra parto de la ekrano.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('subtila', 'subtila', 'subtila: delikata, malfacile rimarkebla.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sub-titolo', 'sub-titolo', 'sub-titolo: skriba teksto aldonita al filmo en la malsupro de la ekrano.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('subvencii', 'subvencii', 'subvencii: doni monhelpon al iu projekto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('subvencio', 'subvencio', 'subvencio: monhelpo por projekto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sufikso', 'sufikso', 'sufikso: vortero, kiun oni aldonas post Esperanta kapvorto por krei novan vorton, ekzemple -in-, -et-, -ul-.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sugesti', 'sugesti', 'sugesti: venigi en ies penson iun ideon, proponi ideon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sulfura', 'sulfura', 'sulfura: flava materialo, kiu troviĝas nature en la tero, kun forta malbona odoro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sultano', 'sultano', 'sultano: reĝo en la islamaj landoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('supera mez-lernejo', 'supera mez-lernejo', 'supera mez-lernejo: (en Japanujo) lernejo por 15- ĝis 17-jaruloj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('superheroo', 'superheroo', 'superheroo: homo, kiu havas superhomajn povojn, kaj uzas ilin por fari eksterordinarajn agojn kaj plibonigi la mondon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('superi', 'superi', 'superi: esti supera, esti pli bona, venki.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('super-jaro', 'super-jaro', 'super-jaro: jaro kun 366 tagoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('super-natura', 'super-natura', 'super-natura: kaŭzata de, aŭ montranta efikon de io supera al la simplaj naturaj fortoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('supo', 'supo', 'supo: diversaj manĝaĵoj kuiritaj en granda kvanto da akvo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('supraĵe', 'supraĵe', 'supraĵe: restante ĉe la ekstera parto, sen eniri profunde; ne profunde, ne serioze. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sur-bendigo', 'sur-bendigo', 'sur-bendigo: teknika sistemo por konservi kaj reaŭdigi sonojn, ekzemple voĉojn, muzikon, kantojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('surda', 'surda', 'surda: sen aŭdo-kapablo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('surfaco', 'surfaco', 'surfaco: supraĵo; supra aŭ ekstera flanko de io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('surpriza', 'surpriza', 'surpriza: ne-atendita, miriga.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('surprizi', 'surprizi', 'surprizi: mirigi per subita kaj neatendita okazaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('surpriziĝi', 'surpriziĝi', 'surpriziĝi: esti mirigata pro subita kaj neatendita okazaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('surprizo', 'surprizo', 'surprizo: miriga kaj neatendita okazaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('suspekti', 'suspekti', 'suspekti: havi malbonan senton pri homo sen certeco, ke oni pravas; nesuspektema: ne supozanta, ke alia homo povus intence misfari.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('susuri', 'susuri', 'susuri: eligi mallaŭtan sonon, kvazaŭ moviĝado de multaj arbofolioj en malforta vento.   ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('sutro', 'sutro', 'sutro: parolo aŭ teksto de Budho aŭ de unu el liaj ĉefaj sekvantoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('svarmi', 'svarmi', 'svarmi: moviĝi multenombre en ĉiuj flankoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('svastiko', 'svastiko', 'svastiko: signo uzata en hinduismo (hinda religio); la germanoj uzis ĝin inter 1933 kaj 1945.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('svisa', 'svisa', 'svisa: rilata al Svislando, lando en centra Eŭropo kun ĉefurbo Berno.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ŝajnigi', 'ŝajnigi', 'ŝajnigi: prezenti ion en maniero, kiu ne estas vera.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ŝalti', 'ŝalti', 'ŝalti: ekfunkciigi elektron. [Propra ilustraĵo.]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ŝanceliĝi', 'ŝanceliĝi', 'ŝanceliĝi: moviĝi necerte kun danĝero fali; agi laŭ nedecidema maniero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ŝargi', 'ŝargi', 'ŝargi: meti elektron en aparaton, ekzemple en telefonon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ŝarko', 'ŝarko', 'ŝarko: granda, tre danĝera mar-fiŝo kun multaj dentoj, kiu foje eĉ atakas naĝantojn. [') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ŝat-okupo', 'ŝat-okupo', 'ŝat-okupo: neprofesia agado, kiun oni faras pro plezuro kaj intereso.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Ŝava', 'Ŝava', 'Ŝava: rilata al la irlanda verkisto George Bernard Shaw (1856-1950).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ŝelo', 'ŝelo', 'ŝelo: la ekstera parto de frukto aŭ legomo, de ovo, kaj ankaŭ de planto-kapvorto aŭ arbo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ŝelo-zingibro', 'ŝelo-zingibro', 'ŝelo-zingibro: Azia kreskaĵo kun belaj floroj kaj bongustaj folioj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ŝildo', 'ŝildo', 'ŝildo: tabulo, ofte el metalo, kun skribita informo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ŝirmi', 'ŝirmi', 'ŝirmi: stari antaŭ aŭ super io por defendi ĝin kontraŭ ia malbonaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ŝoforo', 'ŝoforo', 'ŝoforo: kondukisto de aŭtomobilo aŭ aŭtobuso.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ŝoko', 'ŝoko', 'ŝoko: subita, neatendita okazaĵo, kiu trafas forte kaj malagrable.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ŝpruci', 'ŝpruci', 'ŝpruci: (pri akvo aŭ simile) rapide, salte kaj fortege elflui eksteren.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ŝtormo', 'ŝtormo', 'ŝtormo: forta danĝera ventego kun pluvo aŭ neĝo; tre maltrankvila situacio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ŝuisto', 'ŝuisto', 'ŝuisto: ŝuo-faristo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ŝuldi', 'ŝuldi', 'ŝuldi: havi la devon esti danka al iu aŭ io pro farita servo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tabako', 'tabako', 'tabako: sekigitaj folioj de tabak-planto, uzataj por fari cigaredojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tabelo', 'tabelo', 'tabelo: aranĝo de informoj laŭ vicoj, por ke oni facile trovu serĉatan informon. [Ilustraĵo]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tabua', 'tabua', 'tabua: nepermesata, ne priparolebla.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tabuleto (tabul-komputilo)', 'tabuleto (tabul-komputilo)', 'tabuleto (tabul-komputilo): malgranda komputilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tabul-ludo', 'tabul-ludo', 'tabul-ludo: ludo farata de malgranda grupo de homoj, movante disketojn aŭ aliajn aĵetojn sur tabulo laŭ difinitaj reguloj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('taĝeto', 'taĝeto', 'taĝeto: flava aŭ oranĝkolora floro el Centra Ameriko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tajdo', 'tajdo', 'tajdo: perioda altiĝo kaj malaltiĝo de la akvo de maro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Tajvano', 'Tajvano', 'Tajvano: insulo kiu troviĝas sud-oriente de la ĉef-tera Ĉinujo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('taksado', 'taksado', 'taksado: provo difini la la valoron aŭ kvanton de iu aŭ io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('taksi', 'taksi', 'taksi: provi difini la valoron aŭ kvanton de iu aŭ io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('takto', 'takto', 'takto: la nombro kaj ofteco de regulaj batoj en muziko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('talenta', 'talenta', 'talenta: kun apartaj, rimarkindaj kapabloj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('talento', 'talento', 'talento: aparta, rimarkinda kapablo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('talio', 'talio', 'talio: parto de la homa korpo, cirkaŭ la mezo de la korpo sub la brusto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('talismano', 'talismano', 'talismano: objekto supozata defendi la posedanton kontraŭ malbonŝanco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tamburo', 'tamburo', 'tamburo: muzikilo, kiu funkcias per frapado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('taoismo', 'taoismo', 'taoismo: ĉina religio aŭ penso-tradicio bazita sur la instruoj de Ĝuangzi k Laŭzi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tapiŝo', 'tapiŝo', 'tapiŝo: dika kovraĵo el ŝtofo, kiu kuŝas sur la planko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tatara', 'tatara', 'tatara: la lingvo de regiono en la nuntempa Rusujo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tavolo', 'tavolo', 'tavolo: larĝa, maldika kvanto de iu materialo kuŝanta sur alia simila. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('TB (terabajto)', 'TB (terabajto)', 'TB (terabajto): unuo (10004) por mezuri la grandecon de memoro aŭ de komputila disko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('t.e.', 't.e.', 't.e.: tio estas') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('teamo', 'teamo', 'teamo: grupo de kunludantoj en sporto aŭ ludo; grupo de homoj, kiuj agas kune por plenumi iun taskon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tedi', 'tedi', 'tedi: malinteresi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('teknologio', 'teknologio', 'teknologio: scienco pri la iloj kaj metodoj uzataj en industrio por fabriki diversajn objektojn pli rapide kaj efike.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('teksisto', 'teksisto', 'teksisto: homo, kiu faras ŝtofon, tirante fadenojn inter fadenoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('telefonio sen-fadena (esprimo ne plu uzata)', 'telefonio sen-fadena (esprimo ne plu uzata)', 'telefonio sen-fadena (esprimo ne plu uzata): radio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Telegramo', 'Telegramo', 'Telegramo: tuj-mesaĝilo per kiu eblas senpage sendi voĉmesaĝojn, bildojn, filmetojn kaj ĉiajn dosierojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('teleporti', 'teleporti', 'teleporti: porti objektojn kaj homojn inter du punktoj tra spaco per metodo, kiu ankoraŭ ne estas science ebla.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('teleskopo', 'teleskopo', 'teleskopo: ilo por observi malproksimajn objektojn, precipe stelojn kaj aliajn ĉielajn korpojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('temperaturo', 'temperaturo', 'temperaturo: kvanto de varmeco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tempesto', 'tempesto', 'tempesto: malbonega vetero kun forta vento.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('templo', 'templo', 'templo: konstruaĵo kun religia celo uzata por la servado de iu dio aŭ diino.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tendaro', 'tendaro', 'tendaro: aro da sub-ĉielaj loĝejoj el ŝtofo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tendenco', 'tendenco', 'tendenco: daŭra emo kaj celo de la menso.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tendo', 'tendo', 'tendo: sub-ĉiela loĝejo el ŝtofo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tendumi', 'tendumi', 'tendumi: dum kelka tempo loĝi en sub-ĉiela loĝejo el ŝtofo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('teniso', 'teniso', 'teniso: sporto en kiu oni ĵetas pilkon per batilo (rakedo) trans reton.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tento', 'tento', 'tento: logo al malbona ago.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('teoria', 'teoria', 'teoria: bazita sur pensado, ne sur praktiko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tereno', 'tereno', 'tereno: terspaco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('teritorio', 'teritorio', 'teritorio: regiono apartenanta al iu ŝtato aŭ popolo, kiu konsideras ĝin propra kaj defendas ĝin kontraŭ enveno de eksteruloj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('terminaro', 'terminaro', 'terminaro: vortaro de la specialaj vortoj uzataj en iu fako aŭ scienco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('termino', 'termino', 'termino: bone difinita vorto de iu fako aŭ scienco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('terminologio', 'terminologio', 'terminologio: scienco pri la kreado de bone difinitaj fakaj aŭ sciencaj vortoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('terorismo', 'terorismo', 'terorismo: uzado de teruro de iuj grupoj por progresigi siajn politikajn aŭ religiajn ideojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('teroristo', 'teroristo', 'teroristo: homo, kiu uzas teruradon por progresigi siajn politikajn idealojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ter-tremo', 'ter-tremo', 'ter-tremo: forta moviĝo de la tero, kiu faligas konstruaĵojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('testamento', 'testamento', 'testamento: skribaĵo per kiu oni anoncas, kio okazu pri la propraj posedaĵoj post la morto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('testi', 'testi', 'testi: kontroli la sciojn de lernanto; kontroli la funkciadon de nova projekto aŭ de iu maŝino.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('testo', 'testo', 'testo: metodo, kiun oni uzas por kontroli sciojn, kapablon, taŭgecon; metodo, kiun oni uzas por kontroli, ĉu iu havas difinitan malsanon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('testudo', 'testudo', 'testudo: besto kiu moviĝas malrapide sur la tero interne de forta kovraĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tezo', 'tezo', 'tezo: detala, faka studaĵo prezentata de universitata studento.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Tibeto', 'Tibeto', 'Tibeto: regiono en okcidenta Ĉinujo, tre alta en la montoj, kun ĉefurbo Lasao.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tifo', 'tifo', 'tifo: danĝera malsano ofte portata de malpura akvo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tigro', 'tigro', 'tigro: granda, danĝera besto el la kato-familio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tikli', 'tikli', 'tikli: tre dolĉe kaj ripete tuŝeti la korpon en maniero, kiu kaŭzas ridojn; agrable tuŝeti.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tiktako', 'tiktako', 'tiktako: la regula sono de horloĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tipa', 'tipa', 'tipa: normala kaj ofta en difinita kulturo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('titoli', 'titoli', 'titoli: doni nomon al libro, poemo, teatraĵo, aŭ simila verko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('titolo', 'titolo', 'titolo: nomo de libro, poemo, teatraĵo, aŭ simila verko; vorto aldonita antaŭ la nomo de homo kiel “sinjoro”, “doktoro”, “prezidanto” aŭ simile; aparta nomo donita al homo pro ties granda merito.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('titol-strio', 'titol-strio', 'titol-strio: la parto de la antaŭa kovrilo de gazeto, kie staras ĝia nomo; simila loko en la hejmpaĝo de retejo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('toleremo', 'toleremo', 'toleremo: akceptemo de opinioj, kredoj aŭ agmanieroj de aliaj homoj aŭ popoloj, eĉ se oni mem ne konsentas pri ili.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('toleri', 'toleri', 'toleri: ne kontraŭstari al malagrabla aŭ dolora situacio, kvankam oni kapablus malhelpi ĝin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tombejo', 'tombejo', 'tombejo: loko kie mortintoj estas enterigitaj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tombo', 'tombo', 'tombo: fosaĵo en la tero aŭ fermita dometo, en kiun oni metas mortinton; memoriga ŝtono starigita ĉe tia loko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tondro', 'tondro', 'tondro: fortega bruo, kiu okazas samtempe aŭ tuj post fulmo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('toskana', 'toskana', 'toskana: rilata al Toskanujo, regiono en centra Italujo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tosto', 'tosto', 'tosto: paroladeto dum festa manĝo, kun propono trinki por la bonfarto de iu homo, aŭ por la sukceso de iu aŭ io.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('trabo', 'trabo', 'trabo: longa dika pecego de ligno aŭ metalo kutime uzata por subteni parton de konstruaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('trafa', 'trafa', 'trafa: tia, ke ĝi ĝuste trafas la celon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tragedia', 'tragedia', 'tragedia: terure malfeliĉa.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('trajno', 'trajno', 'trajno: fer-voja veturilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('trajto', 'trajto', 'trajto: eco de la vizaĝo aŭ de la menso; eco, kvalito.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('traktato', 'traktato', 'traktato: skriba interkonsento inter ŝtatoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tramo', 'tramo', 'tramo: vagona veturilo en urbo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('trans-porto', 'trans-porto', 'trans-porto: portado de homoj aŭ objektoj de unu loko al alia; veturiga sistemo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('trans-vivi', 'trans-vivi', 'trans-vivi: ankoraŭ pluvivi post grava okazaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tra-pasi ekzamenon', 'tra-pasi ekzamenon', 'tra-pasi ekzamenon: ekzameniĝi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('trapezo', 'trapezo', 'trapezo: aparato uzata en cirko, kiu konsistas el longa tenilo fiksita ĉe la du finoj per ŝnuroj, per kiuj la prezentistoj ĵetas ŝin kvazaŭ ili flugus tra la aero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('trejnado', 'trejnado', 'trejnado: instruado kaj ekzercado por konduki al dezirata nivelo de kapablo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('trejni', 'trejni', 'trejni: instrui kaj ekzerci por konduki al dezirata nivelo de kapablo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('treme', 'treme', 'treme: movetante daŭre sian korpon pro malvarmo aŭ timo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('trempi', 'trempi', 'trempi: meti ion en akvon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('treno', 'treno', 'treno: tirado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('treti', 'treti', 'treti: premi sub la piedo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('trezoro', 'trezoro', 'trezoro: amaso da oro, mono kaj aliaj valoraĵoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tribo', 'tribo', 'tribo: homgrupo kun komunaj pragepatroj; subdividaĵo de popolo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('triki', 'triki', 'triki: speco de manlaboro per fadeno inter du iloj por fari ŝtofon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tristeco', 'tristeco', 'tristeco: malfeliĉo, malĝojo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('trompi', 'trompi', 'trompi: intence konvinki iun kredi malveraĵon, erarigi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('trompo', 'trompo', 'trompo: intenca provo konvinki iun kredi malveraĵon aŭ fari malkonsilindan agon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('trono', 'trono', 'trono: speciala seĝo, kie sidas reĝo aŭ reĝino.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('trudi', 'trudi', 'trudi: devigi homon akcepti iun malagrablan aferon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('trud-izoliĝo', 'trud-izoliĝo', 'trud-izoliĝo: deviga restado sola sen kontakto kun aliaj homoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('trud-mesaĝo', 'trud-mesaĝo', 'trud-mesaĝo: nedezirata mesaĝo dissendata al multenombraj ricevantoj sen ilia konsento.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('trunko', 'trunko', 'trunko: la plej forta, dika, ligna parto de arbo, sub kiu kreskas kapvortoj kaj supre la folioj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tuberkulozo', 'tuberkulozo', 'tuberkulozo: grava malsano, iam mortiga, sed nun kuracebla.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tulipo', 'tulipo', 'tulipo: brilkolora, taso-forma floro, kiun oni kreskigas precipe en Nederlando por vendado al ĝardenoj tutmonde.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tumulo', 'tumulo', 'tumulo: monteto el tero aŭ ŝtonoj, kiun la homoj konstruis antaŭ multaj jarcentoj super loko, kie oni enterigis mortintojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tunelo', 'tunelo', 'tunelo: longa truo tra monto aŭ sub la tero, funkcianta kiel pasejo por homoj, aŭtoj aŭ fervojaj veturiloj; similforma pasejo konstruita subakve aŭ en aliaj lokoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('tuno', 'tuno', 'tuno: mil kilogramoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('turkiso', 'turkiso', 'turkiso: valora ŝtono kun bela verd-blua koloro; verd-blua koloro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('turmenti', 'turmenti', 'turmenti: kaŭzi al iu grandajn korpajn aŭ mensajn suferojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('turnei', 'turnei', 'turnei: vojaĝi de loko al loko por montri artan aŭ teatran prezenton, aŭ por prelegi ĉe lokaj Esperanto-grupoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('turo', 'turo', 'turo: konstruaĵo tre alta sed ne tre larĝa.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Tvitero (Twitter)', 'Tvitero (Twitter)', 'Tvitero (Twitter): socia retejo, kie eblas aperigi mallongajn afiŝojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ultrasona', 'ultrasona', 'ultrasona: tre alta sono, ne aŭdebla per la homa orelo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('umi', 'umi', 'umi: fari iun agadon, kiun oni ne klare priskribas; pasigi la tempon farante nenion apartan.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Unesko', 'Unesko', 'Unesko: Organizaĵo de UN por Edukado, Scienco kaj Kulturo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ungego', 'ungego', 'ungego: malmola kreskaĵo ĉe la fino de la fingroj de bestoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ungo', 'ungo', 'ungo: malmola kreskaĵo ĉe la fino de la fingroj de homoj kaj bestoj. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('uniformo', 'uniformo', 'uniformo: vesto portata de ĉiuj membroj de la sama grupo, ekzemple soldatoj, lernejanoj aŭ simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('unika', 'unika', 'unika: sola de sia speco, unu-nura; ne havanta alian egalan aŭ similan.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('unio', 'unio', 'unio: unuiĝo de landoj; unuiĝo de politikaj aŭ sociaj organizaĵoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('universo', 'universo', 'universo: tutaĵo de ĉio, kio ekzistas.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('unua-grada', 'unua-grada', 'unua-grada: de la unua nivelo, ekzemple la unua klaso, baza kurso kaj simile.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('unuope', 'unuope', 'unuope: en unu-persona grupo, sole.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('urb-estraro', 'urb-estraro', 'urb-estraro: la grupo de homoj, kiuj direktas la aferojn de urbo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('urĝe', 'urĝe', 'urĝe: tre baldaŭ, rapide, ne povante atendi.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('urinejo', 'urinejo', 'urinejo: loko, kie viroj “maltrinkas” (forigas akvon el sia korpo).') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('urino', 'urino', 'urino: akvo, kiun homo aŭ besto forigas el sia korpo post trinkado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('urso', 'urso', 'urso: granda, peza, danĝera besto kun dika hararo kaj mallonga kolo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Usono', 'Usono', 'Usono: Unuiĝintaj Ŝtatoj de Ameriko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('uverturo', 'uverturo', 'uverturo: enkonduka muziko komence de pli longa muzika verko; malgranda enkonduko.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vagabondo', 'vagabondo', 'vagabondo: malriĉulo sen hejmo, kiu konstante iras de unu loko al alia.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vagonaro', 'vagonaro', 'vagonaro: fer-voja veturilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vakcini', 'vakcini', 'vakcini: intence enmeti en la korpon specialan preparaĵon kun la celo instrui al la korpa defendo-sistemo kiel defendi sin kontraŭ iu malsano.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vakciniĝi', 'vakciniĝi', 'vakciniĝi: intence akcepti en sia korpo specialan preparaĵon kun la celo instrui al la korpa defendo-sistemo kiel defendi sin kontraŭ iu malsano.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('valizo', 'valizo', 'valizo: kesto por enteni vestojn kaj aliajn utilajn aĵojn, kiun oni kunportas dum vojaĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('valo', 'valo', 'valo: malpli alta loko inter montoj; malmonto. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vana', 'vana', 'vana: senutila, ne-efika, havanta nur ŝajnon, sen realeco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vane', 'vane', 'vane: senutile, sen-efike, senrezulte.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vango', 'vango', 'vango: parto de la vizaĝo, sub la okulo, inter la nazo kaj orelo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('varbi', 'varbi', 'varbi: konvinki homon membriĝi en grupo aŭ movado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('varia', 'varia', 'varia: ne ĉiam sama; divers-speca.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('variaj', 'variaj', 'variaj: tre diversaj kaj malsamaj inter si.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('varii', 'varii', 'varii: esti ne ĉiam sama; esti de diversaj specoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vario', 'vario', 'vario: difinita speco.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('varo', 'varo', 'varo: vendata aŭ vendota objekto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ve!', 've!', 've!: kia malfeliĉo!') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vegana', 'vegana', 'vegana: rilata al manĝo- kaj vivo-maniero sen mistraktado kaj krueleco al bestoj, ĉu por manĝaĵoj, ĉu por vestaĵoj, ĉu por iu ajn alia celo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vegetara', 'vegetara', 'vegetara: rilata al speco de manĝado sen viando kaj fiŝaĵoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vegetarano', 'vegetarano', 'vegetarano: homo kiu manĝas nek viandon nek fiŝaĵojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vegetarismo', 'vegetarismo', 'vegetarismo: manĝado sen viando kaj fiŝaĵoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vejno', 'vejno', 'vejno: kondukilo en la korpo, tra kiu sango fluas al la koro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('velki', 'velki', 'velki: (pri floroj kaj folioj) perdi siajn koloron kaj brilon, malfortiĝi, sekiĝi, ĝis fina mortiĝo kaj neniiĝo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('velo', 'velo', 'velo: granda ŝtofaĵo sur ŝipo por kapti la venton.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('venena', 'venena', 'venena: kapabla mortigi aŭ serioze malsanigi, se oni manĝas aŭ trinkas ĝin, aŭ se ĝi pikas la haŭton.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('veneno', 'veneno', 'veneno: io, kio mortigas, se oni manĝas aŭ trinkas ĝin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('venĝo', 'venĝo', 'venĝo: sufero intence kaŭzata al alia(j) homo(j), por repagi suferon kaŭzitan de li/ŝi/ili.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ventolilo', 'ventolilo', 'ventolilo: aparato aŭ maŝino por refreŝigi la aeron.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ventolisto', 'ventolisto', 'ventolisto: homo, kiu okupiĝas pri la movado kaj refreŝigo de aero interne de konstruaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ventro', 'ventro', 'ventro: parto de la korpo, sub la brusto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ventumilo', 'ventumilo', 'ventumilo: aparato aŭ maŝino por refreŝigi la aeron; ilo el papero aŭ ŝtofo, kiun oni tenas enmane kaj movas tien-reen por malvarmigi sin.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('verbo', 'verbo', 'verbo: ago-vorto, ekzemple: iri, vidas, havis, estos, aŭdus, kuru.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('versio', 'versio', 'versio: aparta formo de teksto/afero, kiu diferencas de aliaj formoj de tiu sama teksto/afero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('verso', 'verso', 'verso: unu linio de poeziaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('ver-ŝajne', 'ver-ŝajne', 'ver-ŝajne: tio ŝajnas esti vera, sed oni ne povas esti certa pri tio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vesperto', 'vesperto', 'vesperto: besto simila al fluganta muso.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('veterano', 'veterano', 'veterano: maljunulo, kiu de multegaj jaroj praktikas sian profesion aŭ alian okupon, ekzemple Esperanton.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vet-kuro', 'vet-kuro', 'vet-kuro: kurado inter pluraj homoj, kiuj ĉiuj provas alveni kiel unua.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vibrado', 'vibrado', 'vibrado: rapida kaj pli-malpli regula moviĝado de aĵo, kiuj iras kaj reiras trans centra punkto. [Ilustraĵo]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('video', 'video', 'video: filmeto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('video-blogisto', 'video-blogisto', 'video-blogisto: tiu, kiu regule preparas kaj alŝutas mallongajn filmetojn al la Interreto pri iu temo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vid-punkto', 'vid-punkto', 'vid-punkto: maniero rigardi aferojn; opinio.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vidvino', 'vidvino', 'vidvino: virino, kies edzo jam mortis.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Vieno', 'Vieno', 'Vieno: la ĉefurbo de Aŭstrujo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vikingo', 'vikingo', 'vikingo: iu el la nord-eŭropaj ŝipvojaĝantoj aktivaj precipe dum la 8-a ĝis la 10-a jarcentoj, kiuj ofte atakis marbordajn vilaĝojn kaj urbojn tra vasta regiono.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('viki-paĝo', 'viki-paĝo', 'viki-paĝo: unu paĝo el kolekto de informaj artikoloj (“vikio”) en Interreto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vikipedio', 'vikipedio', 'vikipedio: kolekto de informaj artikoloj en Interreto, redaktata de la uzantoj mem.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('viktimo', 'viktimo', 'viktimo: persono suferanta aŭ mortinta pro iu okazaĵo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vin-beroj', 'vin-beroj', 'vin-beroj: dolĉaj, molaj fruktetoj, uzataj por fari vinon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('violono', 'violono', 'violono: muzikilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('virto', 'virto', 'virto: konstanta emo fari bonon kaj nepre ne fari malbonon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('viruso', 'viruso', 'viruso: treege malgranda, nevidebla kaŭzanto de malsano.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('viruso (en komputado)', 'viruso (en komputado)', 'viruso (en komputado): danĝera programeto, kiu eniras komputilon sen la scio de la posedanto, multobligas kaj disvastigas sin, kun la celo ŝteli informojn aŭ malhelpi la normalan funkciadon de la komputilo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('viv-resumo', 'viv-resumo', 'viv-resumo: dokumento, kiun oni prezentas, kiam oni serĉas laboron aŭ en simila situacio, kun mallonga priskribo pri siaj edukado kaj labor-oficoj kaj aliaj utilaj informoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('viv-teni', 'viv-teni', 'viv-teni: teni viva, ekzemple per la laboro kaj mon-gajnado.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vizio', 'vizio', 'vizio: imago pri ideala estonteco aŭ celo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('voĉ-doni', 'voĉ-doni', 'voĉ-doni: esprimi sian opinion (voĉon) pri iu demando aŭ propono, por ke ĝi estu nombrata; esprimi sian opinion per signo sur papereto pri la elektado de politikisto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('voĉ-dono', 'voĉ-dono', 'voĉ-dono: opinio (voĉo), kiun oni esprimas rilate al iu demando aŭ propono, por ke ĝi estu nombrata; papereto, sur kiu oni signas sian preferon, kiam oni elektas politikistojn.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vokalo', 'vokalo', 'vokalo: la vokaloj de Esperanto estas A, E, I, O, U.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('volonte', 'volonte', 'volonte: konsente kaj kontente, laŭ volo kaj plaĉo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('volontula', 'volontula', 'volontula: proponanta sin mem por plenumi iun taskon, plej ofte sen-page.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('volontuli', 'volontuli', 'volontuli: mem proponi sin por plenumi taskon aŭ fari laboron, plej ofte sen-page.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('volontulo', 'volontulo', 'volontulo: homo, kiu proponas sin por plenumi taskon aŭ fari laboron, plej ofte sen-page.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('volumo', 'volumo', 'volumo: unu libro el pluraj, kiuj kune konsistigas pli longan verkon. [Propra foto]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vomi', 'vomi', 'vomi: elverŝi el la buŝo tion, kion oni manĝis.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vori', 'vori', 'vori: rapidege manĝi, ŝirante la manĝaĵon per la dentoj, kiel faras besto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vorto-provizo', 'vorto-provizo', 'vorto-provizo: la tuta kvanto de la vortoj, kiuj ekzistas en difinita teksto aŭ lernolibro.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vorto-stoko', 'vorto-stoko', 'vorto-stoko: la tuta kvanto de la vortoj, kiujn iu konas kaj kutime uzas.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vort-trezoro', 'vort-trezoro', 'vort-trezoro: la tuta kvanto de la vortoj, kiujn iu konas kaj kutime uzas.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vortumi', 'vortumi', 'vortumi: elekti la vortojn por esprimi iun ideon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vosto', 'vosto', 'vosto: la malantaŭa korpo-parto, kiun havas multaj bestoj, sed ne homoj.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vualo', 'vualo', 'vualo: delikata tuko, ofte preskaŭ travidebla, kiu kaŝas la vizaĝon aŭ iun objekton.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vulkano', 'vulkano', 'vulkano: monto, kiu elverŝas fajron, kaj bolantajn fumojn kaj gasojn el profundaĵoj sub la tero.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vulpo', 'vulpo', 'vulpo: besto simila al hundo.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vundi', 'vundi', 'vundi: serioze rompi, ŝiri, tranĉi aŭ sangigi la korpon.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('vundo', 'vundo', 'vundo: serioza rompo, ŝiro, tranĉo en la korpo aŭ menso. ') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Vikipedio (Wikipedia)', 'Vikipedio (Wikipedia)', 'Vikipedio (Wikipedia): kolekto de informaj artikoloj en Interreto, redaktata de la uzantoj mem.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('zenito', 'zenito', 'zenito: la plej alta punkto de la ĉielo; la plej alta punkto.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('zigzagi', 'zigzagi', 'zigzagi: iri malrekte, unue en unu direkto, tiam en alia.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('zono', 'zono', 'zono: longa, maldika ligilo el ŝtofo aŭ alia materialo, kiu ĉirkaŭas la mezan parton de la korpo por teni la pantalonon aŭ alian veston; vojo aŭ regiono, kiu ĉirkaŭas kiel zono. [') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('zonzio', 'zonzio', 'zonzio: ĉina manĝaĵo el rizo volvita en folioj. [Ilus.]') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;
INSERT INTO public.difinoj (kapvorto, vorto, difino) VALUES ('Zoom', 'Zoom', 'Zoom: komputila programo per kiu eblas komuniki kaj kunveni interrete anstataŭ samloke.') ON CONFLICT (kapvorto, vorto) DO UPDATE SET difino = excluded.difino;