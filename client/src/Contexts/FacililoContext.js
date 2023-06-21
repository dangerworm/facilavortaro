// Copyright (C) 2013 Magnus Henoch <magnus.henoch@gmail.com>
//
// Permission is hereby granted, free of charge, to any person obtaining
// a copy of this software and associated documentation files (the
// "Software"), to deal in the Software without restriction, including
// without limitation the rights to use, copy, modify, merge, publish,
// distribute, sublicense, and/or sell copies of the Software, and to
// permit persons to whom the Software is furnished to do so, subject to
// the following conditions:
//
// The above copyright notice and this permission notice shall be
// included in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
// LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
// OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
// WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

import React, { createContext, useContext, useEffect } from "react";
import { 
  vortaroTreFacilaj,
  personajPronomoj,
  prefiksojTreFacilaj,
  sufiksojTreFacilaj
} from './treFacilaj';
import {
  vortaroFacilaj,
  prefiksojFacilaj,
  sufiksojFacilaj
} from "./facilaj";
import {
  vortaroMalFacilaj
} from "./malFacilaj";

export const FacililoContext = createContext(null);

export const FacililoContextProvider = ({ children }) => {
  const pronomSufiksoj = ["a", "an", "aj", "ajn", "n", ""];
  const verbSufiksoj = ["i", "as", "is", "os", "us", "u", "anto", "anton", "antoj", "antojn"];
  const substantivSufiksoj = ["o", "on", "oj", "ojn"];
  const adjektivSufiksoj = ["a", "an", "aj", "ajn"];
  const adverbSufiksoj = ["e", "en"];

  const [arbo, setArbo] = React.useState([]);
  const [loading, setLoading] = React.useState(true);
  const [alineoj, setAlineoj] = React.useState([]);
  const [vortoj, setVortoj] = React.useState([]);
  const [treFacilaj, setTreFacilaj] = React.useState([]);
  const [facilaj, setFacilaj] = React.useState([]);
  const [malfacilaj, setMalfacilaj] = React.useState([]);
  const [neEnVortaro, setNeEnVortaro] = React.useState([]);

  const maliksigu = (teksto) => {
    return teksto
      .replace(/Cx/g, "Ĉ")
      .replace(/Gx/g, "Ĝ")
      .replace(/Hx/g, "Ĥ")
      .replace(/Jx/g, "Ĵ")
      .replace(/Sx/g, "Ŝ")
      .replace(/Ux/g, "Ŭ")
      .replace(/cx/g, "ĉ")
      .replace(/gx/g, "ĝ")
      .replace(/hx/g, "ĥ")
      .replace(/jx/g, "ĵ")
      .replace(/sx/g, "ŝ")
      .replace(/ux/g, "ŭ");
  };

  const niveloj = ['treFacila', 'facila', 'malfacila', 'neEnVortaro'];

  const enarbigu = (arbo, vortero, tipo, nivelo) => {
    if (!arbo) arbo = [];
    if (vortero.length === 0) {
      arbo['ekzistas'] = { tipo: tipo, nivelo: nivelo };
      return arbo;
    }
    else {
      const litero = vortero[0];
      arbo[litero] = enarbigu(arbo[litero], vortero.slice(1), tipo, nivelo);
      return arbo;
    }
  }

  const enarbiguLaŭTipoj = (arbo, vortoj, nivelo) => {
    for (let i = 0; i < vortoj.length; i++) {
      let vorto = vortoj[i];
      let tipo;
      if (vorto[vorto.length - 1] === "-") {
        // Vorto kiu bezonas vortoklasan finaĵon.
        // Ni forigu la streketon kaj konservu la radikon.
        vorto = vorto.slice(0, vorto.length - 1);
        tipo = 1;
      }
      else {
        // Vorteto sen vortoklasa finaĵo
        tipo = 2;
      }

      arbo = enarbigu(arbo, vorto, tipo, nivelo);
    }
  }

  const pliAltaNivelo = (a, b) => {
    return (niveloj.indexOf(a) > niveloj.indexOf(b))
      ? a
      : b;
  }

  const trovuVorterojn = (arbo, vorto, komenco, minimumaNivelo) => {
    const vorteroj = [];
    for (let i = komenco; i < vorto.length; i++) {
      if (arbo[vorto[i]]) {
        arbo = arbo[vorto[i]];
        if (arbo['ekzistas']) {
          vorteroj.push(
            {
              fino: i,
              tipo: arbo['ekzistas'].tipo,
              nivelo: pliAltaNivelo(arbo['ekzistas'].nivelo, minimumaNivelo)
            });
        }
      }
      else
        break;
    }
    return vorteroj;
  }

  const akiruNivelon = (vorto, devasEstiVorteto) => {
    let vorteroj = trovuVorterojn(arbo, vorto, 0, 0);
    while (vorteroj.length > 0) {
      let novajVorteroj = [];
      for (let i = 0; i < vorteroj.length; i++) {
        if (vorteroj[i].fino === vorto.length - 1)
          if (vorteroj[i].tipo === 2 || !devasEstiVorteto)
            return vorteroj[i].nivelo;
        // XXX: Nivelo je kombinoj
        novajVorteroj = novajVorteroj.concat(
          trovuVorterojn(arbo, vorto, vorteroj[i].fino + 1, vorteroj[i].nivelo));
        // Permesu unu el la vokaloj A, O, E kaj I, aŭ streketo, inter radikoj.
        // e.g. skribtablo vs skrib`o`tablo, okulvitroj vs okul-vitroj
        if ("aoei-".indexOf(vorto[vorteroj[i].fino + 1]) !== -1)
          novajVorteroj = novajVorteroj.concat(
            trovuVorterojn(arbo, vorto, vorteroj[i].fino + 2, vorteroj[i].nivelo));
      }
      vorteroj = novajVorteroj;
    }

    return 'neEnVortaro';
  }

  // Se 'sufikso' estas ĉe la fino de 'vorto', 
  // redonu 'vorto'n sen 'sufikso', alie redonu null.
  const senSufikso = (vorto, sufikso) => {
    const loko = vorto.indexOf(sufikso, vorto.length - sufikso.length);
    return loko === -1 ? null : vorto.substring(0, loko);
  }

  const senSufiksoj = (vorto, sufiksoj) => {
    const radikoj = sufiksoj
      .map(sufikso => senSufikso(vorto, sufikso))
      .filter(senSufikso => senSufikso !== null);

    if (radikoj.length === 0) {
      return null;
    }

    return radikoj[0];
  }

  const akiruNivelonElArbo = (vorto, sufiksoj) => {
    const vortradiko = senSufiksoj(vorto, sufiksoj);
    if (vortradiko) {
      return akiruNivelon(vortradiko, false);
    }
    return null;
  };

  const kontroluVorton = (vorto) => {
    // Ĉu ĝi estas persona aŭ poseda pronomo?
    // Atentu pri la ordo de sufiksoj!
    const pronomo = senSufiksoj(vorto, pronomSufiksoj);
    if (pronomo && personajPronomoj.indexOf(pronomo) !== -1) {
      return 'treFacila';
    }

    // Ĉu ĝi estas verbo? Aŭ ĉu ĝi estas substantivo finiĝanta je "-anto", 
    // la sola participa finaĵo permesata en la nivelo "tre facila"?
    let rezulto;

    rezulto = akiruNivelonElArbo(vorto, verbSufiksoj);
    if (rezulto && rezulto !== 'neEnVortaro') { return rezulto; }

    // Ĉu ĝi estas substantivo?
    rezulto = akiruNivelonElArbo(vorto, substantivSufiksoj);
    if (rezulto && rezulto !== 'neEnVortaro') { return rezulto; }

    // Ĉu ĝi estas adjektivo?
    rezulto = akiruNivelonElArbo(vorto, adjektivSufiksoj);
    if (rezulto && rezulto !== 'neEnVortaro') { return rezulto; }

    // Ĉu ĝi estas adverbo?
    rezulto = akiruNivelonElArbo(vorto, adverbSufiksoj);
    if (rezulto && rezulto !== 'neEnVortaro') { return rezulto; }

    return akiruNivelon(vorto, true);
  }

  const alineigu = (teksteroj) => {
    if (teksteroj.length === 0) return [];

    let nunaAlineo = [], alineoj = [nunaAlineo];

    for (let i = 0; i < teksteroj.length; i++) {
      let tekstero = teksteroj[i];
      let linioj = tekstero.tekstero.split(/\n+/);
      if (linioj === null || linioj.length <= 1) {
        nunaAlineo.push(tekstero);
      } else {
        for (let j = 0; j < linioj.length; j++) {
          nunaAlineo.push({ tekstero: linioj[j], nivelo: tekstero.nivelo });
          if (j < linioj.length - 1) {
            nunaAlineo = [];
            alineoj.push(nunaAlineo);
          }
        }
      }
    }
    return alineoj;
  }

  const kontrolu = (teksto) => {
    const vortoRe = /[A-ZĈĜĤĴŜŬa-zĉĝĥĵŝŭ-]+/g;
    let rezulto;

    let teksteroj = [], treFacilaj = [], facilaj = [], malfacilaj = [], neEnVortaro = [];
    let ek = 0;

    while ((rezulto = vortoRe.exec(teksto)) !== null) {
      if (ek < rezulto.index) {
        teksteroj.push({ tekstero: teksto.slice(ek, rezulto.index), nivelo: 'treFacila' });
      }
      const vorto = rezulto[0];
      ek = rezulto.index + vorto.length;

      const nivelo = kontroluVorton(vorto.toLowerCase());
      if (nivelo === 'treFacila') {
        treFacilaj.push(vorto);
      }
      else if (nivelo === 'facila') {
        facilaj.push(vorto);
      }
      else if (nivelo === 'malfacila') {
        malfacilaj.push(vorto);
      }
      else {
        neEnVortaro.push(vorto);
      }
      teksteroj.push({ tekstero: vorto, nivelo: nivelo });
    }
    if (teksto.length > ek) {
      teksteroj.push({ tekstero: teksto.slice(ek), nivelo: 'treFacila' });
    }

    setAlineoj(alineigu(teksteroj));
    setVortoj(vortoj);
    setTreFacilaj(treFacilaj);
    setFacilaj(facilaj);
    setMalfacilaj(malfacilaj);
    setNeEnVortaro(neEnVortaro);
  }

  const load = () => {
    let arbo = [];
    setLoading(true);

    enarbiguLaŭTipoj(arbo, vortaroTreFacilaj, 'treFacila');
    prefiksojTreFacilaj.forEach(x => arbo = enarbigu(arbo, x, 1, 'treFacila'));
    sufiksojTreFacilaj.forEach(x => arbo = enarbigu(arbo, x, 1, 'treFacila'));

    enarbiguLaŭTipoj(arbo, vortaroFacilaj, 'facila');
    prefiksojFacilaj.forEach(x => arbo = enarbigu(arbo, x, 1, 'facila'));
    sufiksojFacilaj.forEach(x => arbo = enarbigu(arbo, x, 1, 'facila'));

    enarbiguLaŭTipoj(arbo, vortaroMalFacilaj, 'malfacila');

    setArbo(arbo);
    setLoading(false);
  }

  const purigu = () => {
    setAlineoj([]);
    setVortoj([]);
    setTreFacilaj([]);
    setFacilaj([]);
    setMalfacilaj([]);
    setNeEnVortaro([]);
  }

  useEffect(() => {
    load();
  }, []);

  return (
    <FacililoContext.Provider
      value={{
        loading,
        maliksigu,
        kontrolu,
        alineoj,
        vortoj,
        treFacilaj,
        facilaj,
        malfacilaj,
        neEnVortaro,
        purigu
      }}
    >
      {children}
    </FacililoContext.Provider>
  );
}

export const useFacililoContext = () => {
  const context = useContext(FacililoContext);
  if (context) return context;

  throw Error("Facililo context was not registered");
};