/*
Regex for selecting words from the list below:
[\wĉĝĥĵŝŭ’里$€ĭ˚:!,\.“”;\-(\) ]
*/

CREATE TABLE public.kapvortoj (
	kapvorto TEXT NOT NULL,

  CONSTRAINT pk_kapvortoj_kapvorto PRIMARY KEY (kapvorto)
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