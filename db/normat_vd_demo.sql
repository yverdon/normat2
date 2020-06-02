--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.1
-- Dumped by pg_dump version 9.6.9

-- Started on 2020-06-02 10:53:47

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 89 (class 2615 OID 1804769167)
-- Name: normat_vd_demo; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA normat_vd_demo;


ALTER SCHEMA normat_vd_demo OWNER TO postgres;

--
-- TOC entry 3787 (class 1259 OID 1804769168)
-- Name: t_ili2db_seq; Type: SEQUENCE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE SEQUENCE normat_vd_demo.t_ili2db_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE normat_vd_demo.t_ili2db_seq OWNER TO "sit-admin";

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 3788 (class 1259 OID 1804769170)
-- Name: affectationprimaire_surfacedezones; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.affectationprimaire_surfacedezones (
    t_id bigint DEFAULT nextval('normat_vd_demo.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    publieedepuis date NOT NULL,
    statutjuridique character varying(255) NOT NULL,
    remarques text,
    atype bigint,
    geometrie public.geometry(Polygon,2056)
);


ALTER TABLE normat_vd_demo.affectationprimaire_surfacedezones OWNER TO "sit-admin";

--
-- TOC entry 15765 (class 0 OID 0)
-- Dependencies: 3788
-- Name: TABLE affectationprimaire_surfacedezones; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON TABLE normat_vd_demo.affectationprimaire_surfacedezones IS '@iliname PlansDAffectation_MN95_V1_1.GeodonneesDeBase.AffectationPrimaire_SurfaceDeZones';


--
-- TOC entry 15766 (class 0 OID 0)
-- Dependencies: 3788
-- Name: COLUMN affectationprimaire_surfacedezones.publieedepuis; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.affectationprimaire_surfacedezones.publieedepuis IS '@iliname publieeDepuis';


--
-- TOC entry 15767 (class 0 OID 0)
-- Dependencies: 3788
-- Name: COLUMN affectationprimaire_surfacedezones.statutjuridique; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.affectationprimaire_surfacedezones.statutjuridique IS '@iliname StatutJuridique';


--
-- TOC entry 15768 (class 0 OID 0)
-- Dependencies: 3788
-- Name: COLUMN affectationprimaire_surfacedezones.remarques; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.affectationprimaire_surfacedezones.remarques IS '@iliname Remarques';


--
-- TOC entry 15769 (class 0 OID 0)
-- Dependencies: 3788
-- Name: COLUMN affectationprimaire_surfacedezones.geometrie; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.affectationprimaire_surfacedezones.geometrie IS '@iliname Geometrie';


--
-- TOC entry 3789 (class 1259 OID 1804769177)
-- Name: affectationprincipale_ch; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.affectationprincipale_ch (
    t_id bigint DEFAULT nextval('normat_vd_demo.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    code integer NOT NULL,
    designation character varying(80) NOT NULL,
    CONSTRAINT affectationprincipale_ch_code_check CHECK (((code >= 11) AND (code <= 99)))
);


ALTER TABLE normat_vd_demo.affectationprincipale_ch OWNER TO "sit-admin";

--
-- TOC entry 15771 (class 0 OID 0)
-- Dependencies: 3789
-- Name: TABLE affectationprincipale_ch; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON TABLE normat_vd_demo.affectationprincipale_ch IS '@iliname PlansDAffectation_AffectationPrincipale_V1_1.Affectation_CH.AffectationPrincipale_CH';


--
-- TOC entry 15772 (class 0 OID 0)
-- Dependencies: 3789
-- Name: COLUMN affectationprincipale_ch.code; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.affectationprincipale_ch.code IS '@iliname Code';


--
-- TOC entry 15773 (class 0 OID 0)
-- Dependencies: 3789
-- Name: COLUMN affectationprincipale_ch.designation; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.affectationprincipale_ch.designation IS '@iliname Designation';


--
-- TOC entry 3790 (class 1259 OID 1804769182)
-- Name: autresdocuments; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.autresdocuments (
    t_id bigint DEFAULT nextval('normat_vd_demo.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    origine_document bigint,
    origine_dispositionjuridique bigint,
    document_document bigint,
    document_dispositionjuridique bigint
);


ALTER TABLE normat_vd_demo.autresdocuments OWNER TO "sit-admin";

--
-- TOC entry 15775 (class 0 OID 0)
-- Dependencies: 3790
-- Name: TABLE autresdocuments; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON TABLE normat_vd_demo.autresdocuments IS '@iliname PlansDAffectation_MN95_V1_1.DispositionsJuridiques.autresDocuments';


--
-- TOC entry 3791 (class 1259 OID 1804769186)
-- Name: chcantoncode; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.chcantoncode (
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);


ALTER TABLE normat_vd_demo.chcantoncode OWNER TO "sit-admin";

--
-- TOC entry 3792 (class 1259 OID 1804769192)
-- Name: contenulineaire; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.contenulineaire (
    t_id integer NOT NULL,
    t_ili_tid character varying(200),
    publieedepuis date,
    statutjuridique character varying(255),
    remarques text,
    atype bigint,
    geometrie public.geometry(LineString,2056)
);


ALTER TABLE normat_vd_demo.contenulineaire OWNER TO "sit-admin";

--
-- TOC entry 3793 (class 1259 OID 1804769198)
-- Name: contenulineaire_t_id_seq; Type: SEQUENCE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE SEQUENCE normat_vd_demo.contenulineaire_t_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE normat_vd_demo.contenulineaire_t_id_seq OWNER TO "sit-admin";

--
-- TOC entry 15779 (class 0 OID 0)
-- Dependencies: 3793
-- Name: contenulineaire_t_id_seq; Type: SEQUENCE OWNED BY; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER SEQUENCE normat_vd_demo.contenulineaire_t_id_seq OWNED BY normat_vd_demo.contenulineaire.t_id;


--
-- TOC entry 3794 (class 1259 OID 1804769200)
-- Name: contenuponctuel; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.contenuponctuel (
    t_id integer NOT NULL,
    t_ili_tid character varying(200),
    publieedepuis date,
    statutjuridique character varying(255),
    remarques text,
    atype bigint,
    geometrie public.geometry(Point,2056)
);


ALTER TABLE normat_vd_demo.contenuponctuel OWNER TO "sit-admin";

--
-- TOC entry 3795 (class 1259 OID 1804769206)
-- Name: contenuponctuel_t_id_seq; Type: SEQUENCE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE SEQUENCE normat_vd_demo.contenuponctuel_t_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE normat_vd_demo.contenuponctuel_t_id_seq OWNER TO "sit-admin";

--
-- TOC entry 15781 (class 0 OID 0)
-- Dependencies: 3795
-- Name: contenuponctuel_t_id_seq; Type: SEQUENCE OWNED BY; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER SEQUENCE normat_vd_demo.contenuponctuel_t_id_seq OWNED BY normat_vd_demo.contenuponctuel.t_id;


--
-- TOC entry 3796 (class 1259 OID 1804769208)
-- Name: dispositionjuridique; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.dispositionjuridique (
    t_id bigint DEFAULT nextval('normat_vd_demo.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    titre character varying(80) NOT NULL,
    titreofficiel text,
    abreviation character varying(12),
    noofficiel character varying(20),
    canton character varying(255),
    commune integer,
    publiedepuis date NOT NULL,
    statutjuridique character varying(255) NOT NULL,
    remarques text,
    CONSTRAINT dispositionjuridique_commune_check CHECK (((commune >= 1) AND (commune <= 9999)))
);


ALTER TABLE normat_vd_demo.dispositionjuridique OWNER TO "sit-admin";

--
-- TOC entry 15782 (class 0 OID 0)
-- Dependencies: 3796
-- Name: TABLE dispositionjuridique; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON TABLE normat_vd_demo.dispositionjuridique IS '@iliname PlansDAffectation_MN95_V1_1.DispositionsJuridiques.DispositionJuridique';


--
-- TOC entry 15783 (class 0 OID 0)
-- Dependencies: 3796
-- Name: COLUMN dispositionjuridique.titre; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.dispositionjuridique.titre IS '@iliname Titre';


--
-- TOC entry 15784 (class 0 OID 0)
-- Dependencies: 3796
-- Name: COLUMN dispositionjuridique.titreofficiel; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.dispositionjuridique.titreofficiel IS '@iliname TitreOfficiel';


--
-- TOC entry 15785 (class 0 OID 0)
-- Dependencies: 3796
-- Name: COLUMN dispositionjuridique.abreviation; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.dispositionjuridique.abreviation IS '@iliname Abreviation';


--
-- TOC entry 15786 (class 0 OID 0)
-- Dependencies: 3796
-- Name: COLUMN dispositionjuridique.noofficiel; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.dispositionjuridique.noofficiel IS '@iliname NoOfficiel';


--
-- TOC entry 15787 (class 0 OID 0)
-- Dependencies: 3796
-- Name: COLUMN dispositionjuridique.canton; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.dispositionjuridique.canton IS '@iliname Canton';


--
-- TOC entry 15788 (class 0 OID 0)
-- Dependencies: 3796
-- Name: COLUMN dispositionjuridique.commune; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.dispositionjuridique.commune IS '@iliname Commune';


--
-- TOC entry 15789 (class 0 OID 0)
-- Dependencies: 3796
-- Name: COLUMN dispositionjuridique.publiedepuis; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.dispositionjuridique.publiedepuis IS '@iliname publieDepuis';


--
-- TOC entry 15790 (class 0 OID 0)
-- Dependencies: 3796
-- Name: COLUMN dispositionjuridique.statutjuridique; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.dispositionjuridique.statutjuridique IS '@iliname StatutJuridique';


--
-- TOC entry 15791 (class 0 OID 0)
-- Dependencies: 3796
-- Name: COLUMN dispositionjuridique.remarques; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.dispositionjuridique.remarques IS '@iliname Remarques';


--
-- TOC entry 3797 (class 1259 OID 1804769216)
-- Name: document; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.document (
    t_id bigint DEFAULT nextval('normat_vd_demo.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    titre character varying(80) NOT NULL,
    titreofficiel text,
    abreviation character varying(12),
    noofficiel character varying(20),
    canton character varying(255),
    commune integer,
    publiedepuis date NOT NULL,
    statutjuridique character varying(255) NOT NULL,
    remarques text,
    CONSTRAINT document_commune_check CHECK (((commune >= 1) AND (commune <= 9999)))
);


ALTER TABLE normat_vd_demo.document OWNER TO "sit-admin";

--
-- TOC entry 15793 (class 0 OID 0)
-- Dependencies: 3797
-- Name: TABLE document; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON TABLE normat_vd_demo.document IS '@iliname PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document';


--
-- TOC entry 15794 (class 0 OID 0)
-- Dependencies: 3797
-- Name: COLUMN document.titre; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.document.titre IS '@iliname Titre';


--
-- TOC entry 15795 (class 0 OID 0)
-- Dependencies: 3797
-- Name: COLUMN document.titreofficiel; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.document.titreofficiel IS '@iliname TitreOfficiel';


--
-- TOC entry 15796 (class 0 OID 0)
-- Dependencies: 3797
-- Name: COLUMN document.abreviation; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.document.abreviation IS '@iliname Abreviation';


--
-- TOC entry 15797 (class 0 OID 0)
-- Dependencies: 3797
-- Name: COLUMN document.noofficiel; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.document.noofficiel IS '@iliname NoOfficiel';


--
-- TOC entry 15798 (class 0 OID 0)
-- Dependencies: 3797
-- Name: COLUMN document.canton; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.document.canton IS '@iliname Canton';


--
-- TOC entry 15799 (class 0 OID 0)
-- Dependencies: 3797
-- Name: COLUMN document.commune; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.document.commune IS '@iliname Commune';


--
-- TOC entry 15800 (class 0 OID 0)
-- Dependencies: 3797
-- Name: COLUMN document.publiedepuis; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.document.publiedepuis IS '@iliname publieDepuis';


--
-- TOC entry 15801 (class 0 OID 0)
-- Dependencies: 3797
-- Name: COLUMN document.statutjuridique; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.document.statutjuridique IS '@iliname StatutJuridique';


--
-- TOC entry 15802 (class 0 OID 0)
-- Dependencies: 3797
-- Name: COLUMN document.remarques; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.document.remarques IS '@iliname Remarques';


--
-- TOC entry 3798 (class 1259 OID 1804769224)
-- Name: forceobligatoire; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.forceobligatoire (
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);


ALTER TABLE normat_vd_demo.forceobligatoire OWNER TO "sit-admin";

--
-- TOC entry 3799 (class 1259 OID 1804769230)
-- Name: jeudedonnees; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.jeudedonnees (
    t_id bigint DEFAULT nextval('normat_vd_demo.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    basketid text NOT NULL,
    version date NOT NULL,
    datedelivraison date,
    remarques text,
    organismeresponsable bigint NOT NULL
);


ALTER TABLE normat_vd_demo.jeudedonnees OWNER TO "sit-admin";

--
-- TOC entry 15805 (class 0 OID 0)
-- Dependencies: 3799
-- Name: TABLE jeudedonnees; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON TABLE normat_vd_demo.jeudedonnees IS '@iliname PlansDAffectation_MN95_V1_1.MetadonneesTransfer.JeuDeDonnees';


--
-- TOC entry 15806 (class 0 OID 0)
-- Dependencies: 3799
-- Name: COLUMN jeudedonnees.basketid; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.jeudedonnees.basketid IS '@iliname BasketID';


--
-- TOC entry 15807 (class 0 OID 0)
-- Dependencies: 3799
-- Name: COLUMN jeudedonnees.version; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.jeudedonnees.version IS '@iliname Version';


--
-- TOC entry 15808 (class 0 OID 0)
-- Dependencies: 3799
-- Name: COLUMN jeudedonnees.datedelivraison; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.jeudedonnees.datedelivraison IS '@iliname DateDeLivraison';


--
-- TOC entry 15809 (class 0 OID 0)
-- Dependencies: 3799
-- Name: COLUMN jeudedonnees.remarques; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.jeudedonnees.remarques IS '@iliname Remarques';


--
-- TOC entry 3800 (class 1259 OID 1804769237)
-- Name: languagecode_iso639_1; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.languagecode_iso639_1 (
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);


ALTER TABLE normat_vd_demo.languagecode_iso639_1 OWNER TO "sit-admin";

--
-- TOC entry 3801 (class 1259 OID 1804769243)
-- Name: localiseduri; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.localiseduri (
    t_id bigint DEFAULT nextval('normat_vd_demo.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    alanguage character varying(255),
    atext character varying(1023) NOT NULL,
    multilingualuri_localisedtext bigint
);


ALTER TABLE normat_vd_demo.localiseduri OWNER TO "sit-admin";

--
-- TOC entry 15812 (class 0 OID 0)
-- Dependencies: 3801
-- Name: TABLE localiseduri; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON TABLE normat_vd_demo.localiseduri IS '@iliname PlansDAffectation_MN95_V1_1.LocalisedUri';


--
-- TOC entry 15813 (class 0 OID 0)
-- Dependencies: 3801
-- Name: COLUMN localiseduri.alanguage; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.localiseduri.alanguage IS '@iliname Language';


--
-- TOC entry 15814 (class 0 OID 0)
-- Dependencies: 3801
-- Name: COLUMN localiseduri.atext; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.localiseduri.atext IS '@iliname Text';


--
-- TOC entry 15815 (class 0 OID 0)
-- Dependencies: 3801
-- Name: COLUMN localiseduri.multilingualuri_localisedtext; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.localiseduri.multilingualuri_localisedtext IS '@iliname PlansDAffectation_MN95_V1_1.MultilingualUri.LocalisedText';


--
-- TOC entry 3802 (class 1259 OID 1804769250)
-- Name: multilingualuri; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.multilingualuri (
    t_id bigint DEFAULT nextval('normat_vd_demo.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    document_texteenligne bigint,
    dispositionjuridique_texteenligne bigint,
    office_guichetenligne bigint
);


ALTER TABLE normat_vd_demo.multilingualuri OWNER TO "sit-admin";

--
-- TOC entry 15817 (class 0 OID 0)
-- Dependencies: 3802
-- Name: TABLE multilingualuri; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON TABLE normat_vd_demo.multilingualuri IS '@iliname PlansDAffectation_MN95_V1_1.MultilingualUri';


--
-- TOC entry 15818 (class 0 OID 0)
-- Dependencies: 3802
-- Name: COLUMN multilingualuri.document_texteenligne; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.multilingualuri.document_texteenligne IS '@iliname PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document.TexteEnLigne';


--
-- TOC entry 15819 (class 0 OID 0)
-- Dependencies: 3802
-- Name: COLUMN multilingualuri.dispositionjuridique_texteenligne; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.multilingualuri.dispositionjuridique_texteenligne IS '@iliname PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document.TexteEnLigne';


--
-- TOC entry 15820 (class 0 OID 0)
-- Dependencies: 3802
-- Name: COLUMN multilingualuri.office_guichetenligne; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.multilingualuri.office_guichetenligne IS '@iliname PlansDAffectation_MN95_V1_1.MetadonneesTransfer.Office.GuichetEnLigne';


--
-- TOC entry 3803 (class 1259 OID 1804769254)
-- Name: office; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.office (
    t_id bigint DEFAULT nextval('normat_vd_demo.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    nom character varying(80) NOT NULL,
    ide character varying(12)
);


ALTER TABLE normat_vd_demo.office OWNER TO "sit-admin";

--
-- TOC entry 15822 (class 0 OID 0)
-- Dependencies: 3803
-- Name: TABLE office; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON TABLE normat_vd_demo.office IS '@iliname PlansDAffectation_MN95_V1_1.MetadonneesTransfer.Office';


--
-- TOC entry 15823 (class 0 OID 0)
-- Dependencies: 3803
-- Name: COLUMN office.nom; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.office.nom IS '@iliname Nom';


--
-- TOC entry 15824 (class 0 OID 0)
-- Dependencies: 3803
-- Name: COLUMN office.ide; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.office.ide IS '@iliname IDE';


--
-- TOC entry 3804 (class 1259 OID 1804769258)
-- Name: statutjuridique; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.statutjuridique (
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);


ALTER TABLE normat_vd_demo.statutjuridique OWNER TO "sit-admin";

--
-- TOC entry 3805 (class 1259 OID 1804769264)
-- Name: t_ili2db_attrname; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.t_ili2db_attrname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL,
    owner character varying(1024) NOT NULL,
    target character varying(1024)
);


ALTER TABLE normat_vd_demo.t_ili2db_attrname OWNER TO "sit-admin";

--
-- TOC entry 3806 (class 1259 OID 1804769270)
-- Name: t_ili2db_basket; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.t_ili2db_basket (
    t_id bigint NOT NULL,
    dataset bigint,
    topic character varying(200) NOT NULL,
    t_ili_tid character varying(200),
    attachmentkey character varying(200) NOT NULL
);


ALTER TABLE normat_vd_demo.t_ili2db_basket OWNER TO "sit-admin";

--
-- TOC entry 3807 (class 1259 OID 1804769276)
-- Name: t_ili2db_classname; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.t_ili2db_classname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL
);


ALTER TABLE normat_vd_demo.t_ili2db_classname OWNER TO "sit-admin";

--
-- TOC entry 3808 (class 1259 OID 1804769282)
-- Name: t_ili2db_column_prop; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.t_ili2db_column_prop (
    tablename character varying(255) NOT NULL,
    subtype character varying(255),
    columnname character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);


ALTER TABLE normat_vd_demo.t_ili2db_column_prop OWNER TO "sit-admin";

--
-- TOC entry 3809 (class 1259 OID 1804769288)
-- Name: t_ili2db_dataset; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.t_ili2db_dataset (
    t_id bigint NOT NULL,
    datasetname character varying(200)
);


ALTER TABLE normat_vd_demo.t_ili2db_dataset OWNER TO "sit-admin";

--
-- TOC entry 3810 (class 1259 OID 1804769291)
-- Name: t_ili2db_import; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.t_ili2db_import (
    t_id bigint NOT NULL,
    dataset bigint NOT NULL,
    importdate timestamp without time zone NOT NULL,
    importuser character varying(40) NOT NULL,
    importfile character varying(200)
);


ALTER TABLE normat_vd_demo.t_ili2db_import OWNER TO "sit-admin";

--
-- TOC entry 15832 (class 0 OID 0)
-- Dependencies: 3810
-- Name: TABLE t_ili2db_import; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON TABLE normat_vd_demo.t_ili2db_import IS 'DEPRECATED, do not use';


--
-- TOC entry 3811 (class 1259 OID 1804769294)
-- Name: t_ili2db_import_basket; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.t_ili2db_import_basket (
    t_id bigint NOT NULL,
    import bigint NOT NULL,
    basket bigint NOT NULL,
    objectcount integer,
    start_t_id bigint,
    end_t_id bigint
);


ALTER TABLE normat_vd_demo.t_ili2db_import_basket OWNER TO "sit-admin";

--
-- TOC entry 15834 (class 0 OID 0)
-- Dependencies: 3811
-- Name: TABLE t_ili2db_import_basket; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON TABLE normat_vd_demo.t_ili2db_import_basket IS 'DEPRECATED, do not use';


--
-- TOC entry 3812 (class 1259 OID 1804769297)
-- Name: t_ili2db_import_object; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.t_ili2db_import_object (
    t_id bigint NOT NULL,
    import_basket bigint NOT NULL,
    class character varying(200) NOT NULL,
    objectcount integer,
    start_t_id bigint,
    end_t_id bigint
);


ALTER TABLE normat_vd_demo.t_ili2db_import_object OWNER TO "sit-admin";

--
-- TOC entry 15836 (class 0 OID 0)
-- Dependencies: 3812
-- Name: TABLE t_ili2db_import_object; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON TABLE normat_vd_demo.t_ili2db_import_object IS 'DEPRECATED, do not use';


--
-- TOC entry 3813 (class 1259 OID 1804769300)
-- Name: t_ili2db_inheritance; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.t_ili2db_inheritance (
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024)
);


ALTER TABLE normat_vd_demo.t_ili2db_inheritance OWNER TO "sit-admin";

--
-- TOC entry 3814 (class 1259 OID 1804769306)
-- Name: t_ili2db_meta_attrs; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.t_ili2db_meta_attrs (
    ilielement character varying(255) NOT NULL,
    attr_name character varying(1024) NOT NULL,
    attr_value character varying(1024) NOT NULL
);


ALTER TABLE normat_vd_demo.t_ili2db_meta_attrs OWNER TO "sit-admin";

--
-- TOC entry 3815 (class 1259 OID 1804769312)
-- Name: t_ili2db_model; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.t_ili2db_model (
    file character varying(250) NOT NULL,
    iliversion character varying(3) NOT NULL,
    modelname text NOT NULL,
    content text NOT NULL,
    importdate timestamp without time zone NOT NULL
);


ALTER TABLE normat_vd_demo.t_ili2db_model OWNER TO "sit-admin";

--
-- TOC entry 3816 (class 1259 OID 1804769318)
-- Name: t_ili2db_settings; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.t_ili2db_settings (
    tag character varying(60) NOT NULL,
    setting character varying(255)
);


ALTER TABLE normat_vd_demo.t_ili2db_settings OWNER TO "sit-admin";

--
-- TOC entry 3817 (class 1259 OID 1804769321)
-- Name: t_ili2db_table_prop; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.t_ili2db_table_prop (
    tablename character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);


ALTER TABLE normat_vd_demo.t_ili2db_table_prop OWNER TO "sit-admin";

--
-- TOC entry 3818 (class 1259 OID 1804769327)
-- Name: t_ili2db_trafo; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.t_ili2db_trafo (
    iliname character varying(1024) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);


ALTER TABLE normat_vd_demo.t_ili2db_trafo OWNER TO "sit-admin";

--
-- TOC entry 3819 (class 1259 OID 1804769333)
-- Name: type; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.type (
    t_id bigint DEFAULT nextval('normat_vd_demo.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    code character varying(12) NOT NULL,
    designation character varying(80) NOT NULL,
    abreviation character varying(12),
    forceobligatoire character varying(255) NOT NULL,
    indiceutilisation numeric(3,2),
    indiceutilisationtype character varying(40),
    remarques text,
    symbole bytea,
    type_ct bigint NOT NULL,
    CONSTRAINT type_indiceutilisation_check CHECK (((indiceutilisation >= 0.0) AND (indiceutilisation <= 9.0)))
);


ALTER TABLE normat_vd_demo.type OWNER TO "sit-admin";

--
-- TOC entry 15844 (class 0 OID 0)
-- Dependencies: 3819
-- Name: TABLE type; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON TABLE normat_vd_demo.type IS '@iliname PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type';


--
-- TOC entry 15845 (class 0 OID 0)
-- Dependencies: 3819
-- Name: COLUMN type.code; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.type.code IS '@iliname Code';


--
-- TOC entry 15846 (class 0 OID 0)
-- Dependencies: 3819
-- Name: COLUMN type.designation; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.type.designation IS '@iliname Designation';


--
-- TOC entry 15847 (class 0 OID 0)
-- Dependencies: 3819
-- Name: COLUMN type.abreviation; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.type.abreviation IS '@iliname Abreviation';


--
-- TOC entry 15848 (class 0 OID 0)
-- Dependencies: 3819
-- Name: COLUMN type.forceobligatoire; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.type.forceobligatoire IS '@iliname ForceObligatoire';


--
-- TOC entry 15849 (class 0 OID 0)
-- Dependencies: 3819
-- Name: COLUMN type.indiceutilisation; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.type.indiceutilisation IS '@iliname IndiceUtilisation';


--
-- TOC entry 15850 (class 0 OID 0)
-- Dependencies: 3819
-- Name: COLUMN type.indiceutilisationtype; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.type.indiceutilisationtype IS '@iliname IndiceUtilisationType';


--
-- TOC entry 15851 (class 0 OID 0)
-- Dependencies: 3819
-- Name: COLUMN type.remarques; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.type.remarques IS '@iliname Remarques';


--
-- TOC entry 15852 (class 0 OID 0)
-- Dependencies: 3819
-- Name: COLUMN type.symbole; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.type.symbole IS '@iliname Symbole';


--
-- TOC entry 3820 (class 1259 OID 1804769341)
-- Name: type_ct; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.type_ct (
    t_id bigint DEFAULT nextval('normat_vd_demo.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    code character varying(12) NOT NULL,
    designation character varying(80) NOT NULL,
    abreviation character varying(12),
    remarques text,
    affectationprincipale_ch bigint NOT NULL
);


ALTER TABLE normat_vd_demo.type_ct OWNER TO "sit-admin";

--
-- TOC entry 15854 (class 0 OID 0)
-- Dependencies: 3820
-- Name: TABLE type_ct; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON TABLE normat_vd_demo.type_ct IS '@iliname PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Ct';


--
-- TOC entry 15855 (class 0 OID 0)
-- Dependencies: 3820
-- Name: COLUMN type_ct.code; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.type_ct.code IS '@iliname Code';


--
-- TOC entry 15856 (class 0 OID 0)
-- Dependencies: 3820
-- Name: COLUMN type_ct.designation; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.type_ct.designation IS '@iliname Designation';


--
-- TOC entry 15857 (class 0 OID 0)
-- Dependencies: 3820
-- Name: COLUMN type_ct.abreviation; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.type_ct.abreviation IS '@iliname Abreviation';


--
-- TOC entry 15858 (class 0 OID 0)
-- Dependencies: 3820
-- Name: COLUMN type_ct.remarques; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON COLUMN normat_vd_demo.type_ct.remarques IS '@iliname Remarques';


--
-- TOC entry 3821 (class 1259 OID 1804769348)
-- Name: type_document; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.type_document (
    t_id bigint DEFAULT nextval('normat_vd_demo.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    atype bigint NOT NULL,
    disposition_document bigint,
    disposition_dispositionjuridique bigint
);


ALTER TABLE normat_vd_demo.type_document OWNER TO "sit-admin";

--
-- TOC entry 15860 (class 0 OID 0)
-- Dependencies: 3821
-- Name: TABLE type_document; Type: COMMENT; Schema: normat_vd_demo; Owner: sit-admin
--

COMMENT ON TABLE normat_vd_demo.type_document IS '@iliname PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Document';


--
-- TOC entry 3822 (class 1259 OID 1804769352)
-- Name: zonesuperposee; Type: TABLE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE TABLE normat_vd_demo.zonesuperposee (
    t_id integer NOT NULL,
    t_ili_tid character varying(200),
    publieedepuis date,
    statutjuridique character varying(255),
    remarques text,
    atype bigint,
    geometrie public.geometry(Polygon,2056)
);


ALTER TABLE normat_vd_demo.zonesuperposee OWNER TO "sit-admin";

--
-- TOC entry 3823 (class 1259 OID 1804769358)
-- Name: zonesuperposee_t_id_seq; Type: SEQUENCE; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE SEQUENCE normat_vd_demo.zonesuperposee_t_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE normat_vd_demo.zonesuperposee_t_id_seq OWNER TO "sit-admin";

--
-- TOC entry 15863 (class 0 OID 0)
-- Dependencies: 3823
-- Name: zonesuperposee_t_id_seq; Type: SEQUENCE OWNED BY; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER SEQUENCE normat_vd_demo.zonesuperposee_t_id_seq OWNED BY normat_vd_demo.zonesuperposee.t_id;


--
-- TOC entry 15242 (class 2604 OID 1804769360)
-- Name: contenulineaire t_id; Type: DEFAULT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.contenulineaire ALTER COLUMN t_id SET DEFAULT nextval('normat_vd_demo.contenulineaire_t_id_seq'::regclass);


--
-- TOC entry 15243 (class 2604 OID 1804769361)
-- Name: contenuponctuel t_id; Type: DEFAULT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.contenuponctuel ALTER COLUMN t_id SET DEFAULT nextval('normat_vd_demo.contenuponctuel_t_id_seq'::regclass);


--
-- TOC entry 15256 (class 2604 OID 1804769362)
-- Name: zonesuperposee t_id; Type: DEFAULT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.zonesuperposee ALTER COLUMN t_id SET DEFAULT nextval('normat_vd_demo.zonesuperposee_t_id_seq'::regclass);


--
-- TOC entry 15723 (class 0 OID 1804769170)
-- Dependencies: 3788
-- Data for Name: affectationprimaire_surfacedezones; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.affectationprimaire_surfacedezones (t_id, t_ili_tid, publieedepuis, statutjuridique, remarques, atype, geometrie) FROM stdin;
779	{96d7c684-9ae3-4403-9320-8b63995291ef}	2020-06-19	En_cours_modification	\N	468	0103000020080800000100000006000000C952CCEE2460434146BEB7F023063241C21BD4181E6843416155B782B8053241E58D078E5E6843412A837C51EAFD3141219408216B6943413CF7D0E588EB314125F630FC565E434102F401C744E93141C952CCEE2460434146BEB7F023063241
780	{cbd0c1d5-1f7e-4811-b86e-a778e3abe702}	2020-06-11	En_cours_modification	\N	479	01030000200808000001000000050000006A365CD93256434152B632E9341B32414C6EC859285C43418740F6FFB8113241867197786C5E43415057D8A116F33141E648C2E7DC554341EE3736185CEA31416A365CD93256434152B632E9341B3241
\.


--
-- TOC entry 15724 (class 0 OID 1804769177)
-- Dependencies: 3789
-- Data for Name: affectationprincipale_ch; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.affectationprincipale_ch (t_id, t_ili_tid, code, designation) FROM stdin;
11	ch00000000000059	11	Zones d'habitation
12	ch00000000000060	12	Zones d'activités économiques
13	ch00000000000061	13	Zones mixtes
14	ch00000000000062	14	Zones centrales
15	ch00000000000063	15	Zones affectées à des besoins publics
16	ch00000000000064	16	Zones à bâtir à constructibilité restreinte
17	ch00000000000065	17	Zones de tourisme et de loisirs
18	ch00000000000066	18	Zones de transport à l'intérieur des zones à bâtir
19	ch00000000000067	19	autres zones à bâtir
21	ch00000000000068	21	Zones agricoles ordinaires
22	ch00000000000069	22	Zones agricoles spécialisées
23	ch00000000000070	23	Zones viticoles
29	ch00000000000071	29	autres zones agricoles
31	ch00000000000072	31	Zones de protection de la nature et du paysage
32	ch00000000000073	32	Zones des eaux et des rives
39	ch00000000000074	39	autres zones à protéger à l'extérieur des zones à bâtir
41	ch00000000000075	41	Zones pour petites entités urbanisées
42	ch00000000000076	42	Espace de transport
43	ch00000000000077	43	Zone d'affectation différée selon l‘art. 18, al. 2, LAT
44	ch00000000000078	44	Aire forestière
49	ch00000000000079	49	autres zones selon l'art. 18, al. 1, LAT à l'extérieur des zones à bâtir
51	ch00000000000080	51	Zones superposées de protection du site bâti
52	ch00000000000081	52	Zones superposées de protection de la nature et du paysage
53	ch00000000000082	53	Zones de danger superposées
59	ch00000000000083	59	autres zones superposées
61	ch00000000000084	61	Périmètres avec plan spécial en vigueur
62	ch00000000000085	62	Périmètres avec plan spécial obligatoire non encore en vigueur
63	ch00000000000086	63	Périmètres avec étape d'équipement différée
71	ch00000000000088	71	Alignement
79	ch00000000000089	79	autres contenus linéaires
81	ch00000000000090	81	Objets naturels
82	ch00000000000091	82	Monuments culturels
89	ch00000000000092	89	autres contenus ponctuels
\.


--
-- TOC entry 15725 (class 0 OID 1804769182)
-- Dependencies: 3790
-- Data for Name: autresdocuments; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.autresdocuments (t_id, t_ili_tid, origine_document, origine_dispositionjuridique, document_document, document_dispositionjuridique) FROM stdin;
\.


--
-- TOC entry 15726 (class 0 OID 1804769186)
-- Dependencies: 3791
-- Data for Name: chcantoncode; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.chcantoncode (itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
0	ZH	\N	f	ZH	\N
1	BE	\N	f	BE	\N
2	LU	\N	f	LU	\N
3	UR	\N	f	UR	\N
4	SZ	\N	f	SZ	\N
5	OW	\N	f	OW	\N
6	NW	\N	f	NW	\N
7	GL	\N	f	GL	\N
8	ZG	\N	f	ZG	\N
9	FR	\N	f	FR	\N
10	SO	\N	f	SO	\N
11	BS	\N	f	BS	\N
12	BL	\N	f	BL	\N
13	SH	\N	f	SH	\N
14	AR	\N	f	AR	\N
15	AI	\N	f	AI	\N
16	SG	\N	f	SG	\N
17	GR	\N	f	GR	\N
18	AG	\N	f	AG	\N
19	TG	\N	f	TG	\N
20	TI	\N	f	TI	\N
21	VD	\N	f	VD	\N
22	VS	\N	f	VS	\N
23	NE	\N	f	NE	\N
24	GE	\N	f	GE	\N
25	JU	\N	f	JU	\N
26	FL	\N	f	FL	\N
27	CH	\N	f	CH	\N
\.


--
-- TOC entry 15727 (class 0 OID 1804769192)
-- Dependencies: 3792
-- Data for Name: contenulineaire; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.contenulineaire (t_id, t_ili_tid, publieedepuis, statutjuridique, remarques, atype, geometrie) FROM stdin;
\.


--
-- TOC entry 15864 (class 0 OID 0)
-- Dependencies: 3793
-- Name: contenulineaire_t_id_seq; Type: SEQUENCE SET; Schema: normat_vd_demo; Owner: sit-admin
--

SELECT pg_catalog.setval('normat_vd_demo.contenulineaire_t_id_seq', 3, true);


--
-- TOC entry 15729 (class 0 OID 1804769200)
-- Dependencies: 3794
-- Data for Name: contenuponctuel; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.contenuponctuel (t_id, t_ili_tid, publieedepuis, statutjuridique, remarques, atype, geometrie) FROM stdin;
\.


--
-- TOC entry 15865 (class 0 OID 0)
-- Dependencies: 3795
-- Name: contenuponctuel_t_id_seq; Type: SEQUENCE SET; Schema: normat_vd_demo; Owner: sit-admin
--

SELECT pg_catalog.setval('normat_vd_demo.contenuponctuel_t_id_seq', 2, true);


--
-- TOC entry 15731 (class 0 OID 1804769208)
-- Dependencies: 3796
-- Data for Name: dispositionjuridique; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.dispositionjuridique (t_id, t_ili_tid, titre, titreofficiel, abreviation, noofficiel, canton, commune, publiedepuis, statutjuridique, remarques) FROM stdin;
\.


--
-- TOC entry 15732 (class 0 OID 1804769216)
-- Dependencies: 3797
-- Data for Name: document; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.document (t_id, t_ili_tid, titre, titreofficiel, abreviation, noofficiel, canton, commune, publiedepuis, statutjuridique, remarques) FROM stdin;
\.


--
-- TOC entry 15733 (class 0 OID 1804769224)
-- Dependencies: 3798
-- Data for Name: forceobligatoire; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.forceobligatoire (itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
0	Contenu_contraignant	\N	f	Contenu contraignant	\N
1	Contenu_informatif	\N	f	Contenu informatif	\N
2	Contenu_indicatif	\N	f	Contenu indicatif	\N
3	Contenu_dAideALaMiseEnOeuvre	\N	f	Contenu dAideALaMiseEnOeuvre	\N
\.


--
-- TOC entry 15734 (class 0 OID 1804769230)
-- Dependencies: 3799
-- Data for Name: jeudedonnees; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.jeudedonnees (t_id, t_ili_tid, basketid, version, datedelivraison, remarques, organismeresponsable) FROM stdin;
\.


--
-- TOC entry 15735 (class 0 OID 1804769237)
-- Dependencies: 3800
-- Data for Name: languagecode_iso639_1; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.languagecode_iso639_1 (itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
0	de	\N	f	de	\N
1	fr	\N	f	fr	\N
2	it	\N	f	it	\N
3	rm	\N	f	rm	\N
4	en	\N	f	en	\N
5	aa	\N	f	aa	\N
6	ab	\N	f	ab	\N
7	af	\N	f	af	\N
8	am	\N	f	am	\N
9	ar	\N	f	ar	\N
10	as	\N	f	as	\N
11	ay	\N	f	ay	\N
12	az	\N	f	az	\N
13	ba	\N	f	ba	\N
14	be	\N	f	be	\N
15	bg	\N	f	bg	\N
16	bh	\N	f	bh	\N
17	bi	\N	f	bi	\N
18	bn	\N	f	bn	\N
19	bo	\N	f	bo	\N
20	br	\N	f	br	\N
21	ca	\N	f	ca	\N
22	co	\N	f	co	\N
23	cs	\N	f	cs	\N
24	cy	\N	f	cy	\N
25	da	\N	f	da	\N
26	dz	\N	f	dz	\N
27	el	\N	f	el	\N
28	eo	\N	f	eo	\N
29	es	\N	f	es	\N
30	et	\N	f	et	\N
31	eu	\N	f	eu	\N
32	fa	\N	f	fa	\N
33	fi	\N	f	fi	\N
34	fj	\N	f	fj	\N
35	fo	\N	f	fo	\N
36	fy	\N	f	fy	\N
37	ga	\N	f	ga	\N
38	gd	\N	f	gd	\N
39	gl	\N	f	gl	\N
40	gn	\N	f	gn	\N
41	gu	\N	f	gu	\N
42	ha	\N	f	ha	\N
43	he	\N	f	he	\N
44	hi	\N	f	hi	\N
45	hr	\N	f	hr	\N
46	hu	\N	f	hu	\N
47	hy	\N	f	hy	\N
48	ia	\N	f	ia	\N
49	id	\N	f	id	\N
50	ie	\N	f	ie	\N
51	ik	\N	f	ik	\N
52	is	\N	f	is	\N
53	iu	\N	f	iu	\N
54	ja	\N	f	ja	\N
55	jw	\N	f	jw	\N
56	ka	\N	f	ka	\N
57	kk	\N	f	kk	\N
58	kl	\N	f	kl	\N
59	km	\N	f	km	\N
60	kn	\N	f	kn	\N
61	ko	\N	f	ko	\N
62	ks	\N	f	ks	\N
63	ku	\N	f	ku	\N
64	ky	\N	f	ky	\N
65	la	\N	f	la	\N
66	ln	\N	f	ln	\N
67	lo	\N	f	lo	\N
68	lt	\N	f	lt	\N
69	lv	\N	f	lv	\N
70	mg	\N	f	mg	\N
71	mi	\N	f	mi	\N
72	mk	\N	f	mk	\N
73	ml	\N	f	ml	\N
74	mn	\N	f	mn	\N
75	mo	\N	f	mo	\N
76	mr	\N	f	mr	\N
77	ms	\N	f	ms	\N
78	mt	\N	f	mt	\N
79	my	\N	f	my	\N
80	na	\N	f	na	\N
81	ne	\N	f	ne	\N
82	nl	\N	f	nl	\N
83	no	\N	f	no	\N
84	oc	\N	f	oc	\N
85	om	\N	f	om	\N
86	or	\N	f	or	\N
87	pa	\N	f	pa	\N
88	pl	\N	f	pl	\N
89	ps	\N	f	ps	\N
90	pt	\N	f	pt	\N
91	qu	\N	f	qu	\N
92	rn	\N	f	rn	\N
93	ro	\N	f	ro	\N
94	ru	\N	f	ru	\N
95	rw	\N	f	rw	\N
96	sa	\N	f	sa	\N
97	sd	\N	f	sd	\N
98	sg	\N	f	sg	\N
99	sh	\N	f	sh	\N
100	si	\N	f	si	\N
101	sk	\N	f	sk	\N
102	sl	\N	f	sl	\N
103	sm	\N	f	sm	\N
104	sn	\N	f	sn	\N
105	so	\N	f	so	\N
106	sq	\N	f	sq	\N
107	sr	\N	f	sr	\N
108	ss	\N	f	ss	\N
109	st	\N	f	st	\N
110	su	\N	f	su	\N
111	sv	\N	f	sv	\N
112	sw	\N	f	sw	\N
113	ta	\N	f	ta	\N
114	te	\N	f	te	\N
115	tg	\N	f	tg	\N
116	th	\N	f	th	\N
117	ti	\N	f	ti	\N
118	tk	\N	f	tk	\N
119	tl	\N	f	tl	\N
120	tn	\N	f	tn	\N
121	to	\N	f	to	\N
122	tr	\N	f	tr	\N
123	ts	\N	f	ts	\N
124	tt	\N	f	tt	\N
125	tw	\N	f	tw	\N
126	ug	\N	f	ug	\N
127	uk	\N	f	uk	\N
128	ur	\N	f	ur	\N
129	uz	\N	f	uz	\N
130	vi	\N	f	vi	\N
131	vo	\N	f	vo	\N
132	wo	\N	f	wo	\N
133	xh	\N	f	xh	\N
134	yi	\N	f	yi	\N
135	yo	\N	f	yo	\N
136	za	\N	f	za	\N
137	zh	\N	f	zh	\N
138	zu	\N	f	zu	\N
\.


--
-- TOC entry 15736 (class 0 OID 1804769243)
-- Dependencies: 3801
-- Data for Name: localiseduri; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.localiseduri (t_id, t_seq, alanguage, atext, multilingualuri_localisedtext) FROM stdin;
\.


--
-- TOC entry 15737 (class 0 OID 1804769250)
-- Dependencies: 3802
-- Data for Name: multilingualuri; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.multilingualuri (t_id, t_seq, document_texteenligne, dispositionjuridique_texteenligne, office_guichetenligne) FROM stdin;
\.


--
-- TOC entry 15738 (class 0 OID 1804769254)
-- Dependencies: 3803
-- Data for Name: office; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.office (t_id, t_ili_tid, nom, ide) FROM stdin;
\.


--
-- TOC entry 15739 (class 0 OID 1804769258)
-- Dependencies: 3804
-- Data for Name: statutjuridique; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.statutjuridique (itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
0	En_vigueur	\N	f	En vigueur	\N
1	En_cours_modification	\N	f	En cours modification	\N
\.


--
-- TOC entry 15740 (class 0 OID 1804769264)
-- Dependencies: 3805
-- Data for Name: t_ili2db_attrname; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.t_ili2db_attrname (iliname, sqlname, owner, target) FROM stdin;
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document.publieDepuis	publiedepuis	dispositionjuridique	\N
PlansDAffectation_MN95_V1_1.MetadonneesTransfer.Donnees_orgResp.OrganismeResponsable	organismeresponsable	jeudedonnees	office
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document.TexteEnLigne	dispositionjuridique_texteenligne	multilingualuri	dispositionjuridique
PlansDAffectation_MN95_V1_1.LocalisedUri.Language	alanguage	localiseduri	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Geometrie.Remarques	remarques	contenulineaire	\N
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.autresDocuments.Origine	origine_dispositionjuridique	autresdocuments	dispositionjuridique
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Geometrie.publieeDepuis	publieedepuis	affectationprimaire_surfacedezones	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.AffectationPrimaire_SurfaceDeZones.Geometrie	geometrie	affectationprimaire_surfacedezones	\N
PlansDAffectation_MN95_V1_1.MetadonneesTransfer.Office.IDE	ide	office	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Geometrie.publieeDepuis	publieedepuis	zonesuperposee	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Document.Disposition	disposition_document	type_document	document
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.ContenuLineaire.Geometrie	geometrie	contenulineaire	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.ContenuPonctuel.Geometrie	geometrie	contenuponctuel	\N
PlansDAffectation_MN95_V1_1.MetadonneesTransfer.Office.GuichetEnLigne	office_guichetenligne	multilingualuri	office
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Geometrie.Type	atype	contenulineaire	type
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document.NoOfficiel	noofficiel	document	\N
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.autresDocuments.Origine	origine_document	autresdocuments	document
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Geometrie.Type	atype	affectationprimaire_surfacedezones	type
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document.Remarques	remarques	dispositionjuridique	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type.Code	code	type	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Document.Type	atype	type_document	type
PlansDAffectation_AffectationPrincipale_V1_1.Affectation_CH.AffectationPrincipale_CH.Code	code	affectationprincipale_ch	\N
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document.Commune	commune	document	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Geometrie.Remarques	remarques	affectationprimaire_surfacedezones	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Geometrie.StatutJuridique	statutjuridique	zonesuperposee	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Ct.Abreviation	abreviation	type_ct	\N
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document.TitreOfficiel	titreofficiel	document	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Geometrie.Remarques	remarques	contenuponctuel	\N
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document.Abreviation	abreviation	dispositionjuridique	\N
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document.StatutJuridique	statutjuridique	dispositionjuridique	\N
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.autresDocuments.Document	document_dispositionjuridique	autresdocuments	dispositionjuridique
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document.Titre	titre	dispositionjuridique	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.ZoneSuperposee.Geometrie	geometrie	zonesuperposee	\N
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document.publieDepuis	publiedepuis	document	\N
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document.Canton	canton	document	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type.Abreviation	abreviation	type	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type.ForceObligatoire	forceobligatoire	type	\N
PlansDAffectation_AffectationPrincipale_V1_1.Affectation_CH.AffectationPrincipale_CH.Designation	designation	affectationprincipale_ch	\N
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document.TitreOfficiel	titreofficiel	dispositionjuridique	\N
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.autresDocuments.Document	document_document	autresdocuments	document
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document.Commune	commune	dispositionjuridique	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Geometrie.StatutJuridique	statutjuridique	affectationprimaire_surfacedezones	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Geometrie.Remarques	remarques	zonesuperposee	\N
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document.Remarques	remarques	document	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Geometrie.publieeDepuis	publieedepuis	contenuponctuel	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Document.Disposition	disposition_dispositionjuridique	type_document	dispositionjuridique
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type.Remarques	remarques	type	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Ct.Remarques	remarques	type_ct	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type.Designation	designation	type	\N
PlansDAffectation_MN95_V1_1.MetadonneesTransfer.JeuDeDonnees.Remarques	remarques	jeudedonnees	\N
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document.NoOfficiel	noofficiel	dispositionjuridique	\N
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document.StatutJuridique	statutjuridique	document	\N
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document.Canton	canton	dispositionjuridique	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Ct.Code	code	type_ct	\N
PlansDAffectation_MN95_V1_1.MultilingualUri.LocalisedText	multilingualuri_localisedtext	localiseduri	multilingualuri
PlansDAffectation_MN95_V1_1.MetadonneesTransfer.Office.Nom	nom	office	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Geometrie.publieeDepuis	publieedepuis	contenulineaire	\N
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document.TexteEnLigne	document_texteenligne	multilingualuri	document
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type.IndiceUtilisationType	indiceutilisationtype	type	\N
PlansDAffectation_MN95_V1_1.MetadonneesTransfer.JeuDeDonnees.Version	version	jeudedonnees	\N
PlansDAffectation_MN95_V1_1.MetadonneesTransfer.JeuDeDonnees.DateDeLivraison	datedelivraison	jeudedonnees	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Geometrie.Type	atype	zonesuperposee	type
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type.IndiceUtilisation	indiceutilisation	type	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Geometrie.StatutJuridique	statutjuridique	contenulineaire	\N
PlansDAffectation_MN95_V1_1.LocalisedUri.Text	atext	localiseduri	\N
PlansDAffectation_MN95_V1_1.MetadonneesTransfer.JeuDeDonnees.BasketID	basketid	jeudedonnees	\N
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document.Titre	titre	document	\N
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document.Abreviation	abreviation	document	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Ct.Designation	designation	type_ct	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Geometrie.Type	atype	contenuponctuel	type
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type.Symbole	symbole	type	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.TypeCt_AffectationPrincipaleCH.AffectationPrincipale_CH	affectationprincipale_ch	type_ct	affectationprincipale_ch
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Type_Ct.Type_Ct	type_ct	type	type_ct
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Geometrie.StatutJuridique	statutjuridique	contenuponctuel	\N
\.


--
-- TOC entry 15741 (class 0 OID 1804769270)
-- Dependencies: 3806
-- Data for Name: t_ili2db_basket; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.t_ili2db_basket (t_id, dataset, topic, t_ili_tid, attachmentkey) FROM stdin;
3	1	PlansDAffectation_MN95_V1_1.DispositionsJuridiques	b01	5621_PA_73_PlansDAffectation_V1_1.xtf-3
5	1	PlansDAffectation_MN95_V1_1.MetadonneesTransfer	b03	5621_PA_73_PlansDAffectation_V1_1.xtf-3
7	1	PlansDAffectation_MN95_V1_1.GeodonneesDeBase	b02	5621_PA_73_PlansDAffectation_V1_1.xtf-3
322	1	PlansDAffectation_AffectationPrincipale_V1_1.Affectation_CH	b04	5621_PA_73_PlansDAffectation_V1_1.xtf-3
326	324	PlansDAffectation_MN95_V1_1.DispositionsJuridiques	b01	5621_PA_73_PlansDAffectation_V1_1.xtf-326
328	324	PlansDAffectation_MN95_V1_1.MetadonneesTransfer	b03	5621_PA_73_PlansDAffectation_V1_1.xtf-326
330	324	PlansDAffectation_MN95_V1_1.GeodonneesDeBase	b02	5621_PA_73_PlansDAffectation_V1_1.xtf-326
645	324	PlansDAffectation_AffectationPrincipale_V1_1.Affectation_CH	b04	5621_PA_73_PlansDAffectation_V1_1.xtf-326
\.


--
-- TOC entry 15742 (class 0 OID 1804769276)
-- Dependencies: 3807
-- Data for Name: t_ili2db_classname; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.t_ili2db_classname (iliname, sqlname) FROM stdin;
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document	document
InternationalCodes_V1.LanguageCode_ISO639_1	languagecode_iso639_1
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.ContenuPonctuel	contenuponctuel
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Geometrie	type_geometrie
PlansDAffectation_MN95_V1_1.ForceObligatoire	forceobligatoire
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type	type
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.ContenuLineaire	contenulineaire
PlansDAffectation_MN95_V1_1.MultilingualUri	multilingualuri
PlansDAffectation_AffectationPrincipale_V1_1.Affectation_CH.AffectationPrincipale_CH	affectationprincipale_ch
PlansDAffectation_MN95_V1_1.StatutJuridique	statutjuridique
PlansDAffectation_MN95_V1_1.MetadonneesTransfer.Donnees_orgResp	donnees_orgresp
PlansDAffectation_MN95_V1_1.LocalisedUri	localiseduri
PlansDAffectation_MN95_V1_1.MetadonneesTransfer.Office	office
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.TypeCt_AffectationPrincipaleCH	typect_affectationprincipalech
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Geometrie	geometrie
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Document	type_document
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Ct	type_ct
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.AffectationPrimaire_SurfaceDeZones	affectationprimaire_surfacedezones
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Type_Ct	type_type_ct
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.DispositionJuridique	dispositionjuridique
PlansDAffectation_MN95_V1_1.MetadonneesTransfer.JeuDeDonnees	jeudedonnees
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.ZoneSuperposee	zonesuperposee
CHAdminCodes_V1.CHCantonCode	chcantoncode
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.autresDocuments	autresdocuments
\.


--
-- TOC entry 15743 (class 0 OID 1804769282)
-- Dependencies: 3808
-- Data for Name: t_ili2db_column_prop; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.t_ili2db_column_prop (tablename, subtype, columnname, tag, setting) FROM stdin;
contenulineaire	\N	geometrie	ch.ehi.ili2db.c2Min	1045000.0
contenuponctuel	\N	remarques	ch.ehi.ili2db.textKind	MTEXT
type	\N	remarques	ch.ehi.ili2db.textKind	MTEXT
contenulineaire	\N	remarques	ch.ehi.ili2db.textKind	MTEXT
affectationprimaire_surfacedezones	\N	geometrie	ch.ehi.ili2db.c2Max	1310000.0
zonesuperposee	\N	remarques	ch.ehi.ili2db.textKind	MTEXT
document	\N	remarques	ch.ehi.ili2db.textKind	MTEXT
contenuponctuel	\N	geometrie	ch.ehi.ili2db.c1Max	2870000.0
dispositionjuridique	\N	remarques	ch.ehi.ili2db.textKind	MTEXT
zonesuperposee	\N	geometrie	ch.ehi.ili2db.c2Min	1045000.0
affectationprimaire_surfacedezones	\N	geometrie	ch.ehi.ili2db.c1Min	2460000.0
type_ct	\N	remarques	ch.ehi.ili2db.textKind	MTEXT
zonesuperposee	\N	geometrie	ch.ehi.ili2db.c1Min	2460000.0
affectationprimaire_surfacedezones	\N	geometrie	ch.ehi.ili2db.c1Max	2870000.0
contenulineaire	\N	geometrie	ch.ehi.ili2db.c2Max	1310000.0
jeudedonnees	\N	remarques	ch.ehi.ili2db.textKind	MTEXT
contenulineaire	\N	geometrie	ch.ehi.ili2db.c1Min	2460000.0
affectationprimaire_surfacedezones	\N	geometrie	ch.ehi.ili2db.c2Min	1045000.0
contenuponctuel	\N	geometrie	ch.ehi.ili2db.c1Min	2460000.0
contenuponctuel	\N	geometrie	ch.ehi.ili2db.c2Min	1045000.0
affectationprimaire_surfacedezones	\N	remarques	ch.ehi.ili2db.textKind	MTEXT
zonesuperposee	\N	geometrie	ch.ehi.ili2db.c1Max	2870000.0
contenuponctuel	\N	geometrie	ch.ehi.ili2db.c2Max	1310000.0
contenulineaire	\N	geometrie	ch.ehi.ili2db.c1Max	2870000.0
zonesuperposee	\N	geometrie	ch.ehi.ili2db.c2Max	1310000.0
contenuponctuel	\N	geometrie	ch.ehi.ili2db.c2Min	1045000.0
zonesuperposee	\N	remarques	ch.ehi.ili2db.textKind	MTEXT
type	\N	remarques	ch.ehi.ili2db.textKind	MTEXT
affectationprimaire_surfacedezones	\N	geometrie	ch.ehi.ili2db.c1Max	2870000.0
contenuponctuel	\N	remarques	ch.ehi.ili2db.textKind	MTEXT
document	\N	remarques	ch.ehi.ili2db.textKind	MTEXT
contenulineaire	\N	geometrie	ch.ehi.ili2db.c2Max	1310000.0
dispositionjuridique	\N	remarques	ch.ehi.ili2db.textKind	MTEXT
zonesuperposee	\N	geometrie	ch.ehi.ili2db.c1Max	2870000.0
affectationprimaire_surfacedezones	\N	geometrie	ch.ehi.ili2db.c2Max	1310000.0
contenulineaire	\N	geometrie	ch.ehi.ili2db.c1Min	2460000.0
affectationprimaire_surfacedezones	\N	remarques	ch.ehi.ili2db.textKind	MTEXT
jeudedonnees	\N	remarques	ch.ehi.ili2db.textKind	MTEXT
contenulineaire	\N	geometrie	ch.ehi.ili2db.c1Max	2870000.0
affectationprimaire_surfacedezones	\N	geometrie	ch.ehi.ili2db.c2Min	1045000.0
contenuponctuel	\N	geometrie	ch.ehi.ili2db.c2Max	1310000.0
affectationprimaire_surfacedezones	\N	geometrie	ch.ehi.ili2db.c1Min	2460000.0
contenuponctuel	\N	geometrie	ch.ehi.ili2db.c1Min	2460000.0
contenulineaire	\N	geometrie	ch.ehi.ili2db.c2Min	1045000.0
zonesuperposee	\N	geometrie	ch.ehi.ili2db.c1Min	2460000.0
zonesuperposee	\N	geometrie	ch.ehi.ili2db.c2Min	1045000.0
contenulineaire	\N	remarques	ch.ehi.ili2db.textKind	MTEXT
type_ct	\N	remarques	ch.ehi.ili2db.textKind	MTEXT
zonesuperposee	\N	geometrie	ch.ehi.ili2db.c2Max	1310000.0
contenuponctuel	\N	geometrie	ch.ehi.ili2db.c1Max	2870000.0
\.


--
-- TOC entry 15744 (class 0 OID 1804769288)
-- Dependencies: 3809
-- Data for Name: t_ili2db_dataset; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.t_ili2db_dataset (t_id, datasetname) FROM stdin;
1	5621_PA_73_PlansDAffectation_V1_1.xtf-1
324	5621_PA_73_PlansDAffectation_V1_1.xtf-324
\.


--
-- TOC entry 15745 (class 0 OID 1804769291)
-- Dependencies: 3810
-- Data for Name: t_ili2db_import; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.t_ili2db_import (t_id, dataset, importdate, importuser, importfile) FROM stdin;
2	1	2019-08-27 11:05:32.021	sit-admin	Y:/SIT-Datas/03_Projets/URB/normat/data/PlansDAffectation_V1_1/5621_PA_73_PlansDAffectation_V1_1.xtf
325	324	2019-08-27 11:07:39.88	sit-admin	Y:/SIT-Datas/03_Projets/URB/normat/data/PlansDAffectation_V1_1/5621_PA_73_PlansDAffectation_V1_1.xtf
\.


--
-- TOC entry 15746 (class 0 OID 1804769294)
-- Dependencies: 3811
-- Data for Name: t_ili2db_import_basket; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.t_ili2db_import_basket (t_id, import, basket, objectcount, start_t_id, end_t_id) FROM stdin;
4	2	3	0	3	3
6	2	5	0	5	5
312	2	7	268	7	311
323	2	322	0	322	322
327	325	326	0	326	326
329	325	328	0	328	328
635	325	330	268	330	634
646	325	645	0	645	645
\.


--
-- TOC entry 15747 (class 0 OID 1804769297)
-- Dependencies: 3812
-- Data for Name: t_ili2db_import_object; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.t_ili2db_import_object (t_id, import_basket, class, objectcount, start_t_id, end_t_id) FROM stdin;
313	312	PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document	2	8	9
314	312	PlansDAffectation_MN95_V1_1.GeodonneesDeBase.ContenuPonctuel	3	234	236
315	312	PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Document	36	238	308
316	312	PlansDAffectation_MN95_V1_1.GeodonneesDeBase.AffectationPrimaire_SurfaceDeZones	120	62	181
317	312	PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Ct	51	182	232
318	312	PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type	18	44	61
319	312	PlansDAffectation_MN95_V1_1.GeodonneesDeBase.ContenuLineaire	1	233	233
320	312	PlansDAffectation_AffectationPrincipale_V1_1.Affectation_CH.AffectationPrincipale_CH	34	10	43
321	312	PlansDAffectation_MN95_V1_1.GeodonneesDeBase.ZoneSuperposee	3	309	311
636	635	PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document	2	331	332
637	635	PlansDAffectation_MN95_V1_1.GeodonneesDeBase.ContenuPonctuel	3	557	559
638	635	PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Document	36	561	631
639	635	PlansDAffectation_MN95_V1_1.GeodonneesDeBase.AffectationPrimaire_SurfaceDeZones	120	385	504
640	635	PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Ct	51	505	555
641	635	PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type	18	367	384
642	635	PlansDAffectation_MN95_V1_1.GeodonneesDeBase.ContenuLineaire	1	556	556
643	635	PlansDAffectation_AffectationPrincipale_V1_1.Affectation_CH.AffectationPrincipale_CH	34	333	366
644	635	PlansDAffectation_MN95_V1_1.GeodonneesDeBase.ZoneSuperposee	3	632	634
\.


--
-- TOC entry 15748 (class 0 OID 1804769300)
-- Dependencies: 3813
-- Data for Name: t_ili2db_inheritance; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.t_ili2db_inheritance (thisclass, baseclass) FROM stdin;
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.DispositionJuridique	PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.TypeCt_AffectationPrincipaleCH	\N
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document	\N
PlansDAffectation_MN95_V1_1.MetadonneesTransfer.JeuDeDonnees	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Document	\N
PlansDAffectation_AffectationPrincipale_V1_1.Affectation_CH.AffectationPrincipale_CH	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Geometrie	\N
PlansDAffectation_MN95_V1_1.MetadonneesTransfer.Donnees_orgResp	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.ContenuPonctuel	PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Geometrie
PlansDAffectation_MN95_V1_1.MetadonneesTransfer.Office	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.ZoneSuperposee	PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Geometrie
PlansDAffectation_MN95_V1_1.MultilingualUri	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.ContenuLineaire	PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Geometrie
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Type_Ct	\N
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.autresDocuments	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.AffectationPrimaire_SurfaceDeZones	PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Geometrie
PlansDAffectation_MN95_V1_1.LocalisedUri	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Geometrie	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Ct	\N
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type	\N
\.


--
-- TOC entry 15749 (class 0 OID 1804769306)
-- Dependencies: 3814
-- Data for Name: t_ili2db_meta_attrs; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.t_ili2db_meta_attrs (ilielement, attr_name, attr_value) FROM stdin;
Dictionaries_V1	Issuer	GCS/COSIG
Dictionaries_V1	technicalContact	models@geo.admin.ch
DictionariesCH_V1	Issuer	GCS/COSIG
DictionariesCH_V1	technicalContact	models@geo.admin.ch
AdministrativeUnits_V1	furtherInformation	http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
AdministrativeUnits_V1	technicalContact	models@geo.admin.ch
AdministrativeUnitsCH_V1	furtherInformation	http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
AdministrativeUnitsCH_V1	technicalContact	models@geo.admin.ch
PlansDAffectation_AffectationPrincipale_V1_1	furtherInformation	https://www.are.admin.ch/mmg
PlansDAffectation_AffectationPrincipale_V1_1	IDGeoIV	73
PlansDAffectation_AffectationPrincipale_V1_1	technicalContact	info@are.admin.ch
PlansDAffectation_MN95_V1_1	furtherInformation	https://www.are.admin.ch/mmg
PlansDAffectation_MN95_V1_1	IDGeoIV	73
PlansDAffectation_MN95_V1_1	technicalContact	info@are.admin.ch
Dictionaries_V1	Issuer	GCS/COSIG
Dictionaries_V1	technicalContact	models@geo.admin.ch
DictionariesCH_V1	Issuer	GCS/COSIG
DictionariesCH_V1	technicalContact	models@geo.admin.ch
AdministrativeUnits_V1	furtherInformation	http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
AdministrativeUnits_V1	technicalContact	models@geo.admin.ch
AdministrativeUnitsCH_V1	furtherInformation	http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
AdministrativeUnitsCH_V1	technicalContact	models@geo.admin.ch
PlansDAffectation_AffectationPrincipale_V1_1	furtherInformation	https://www.are.admin.ch/mmg
PlansDAffectation_AffectationPrincipale_V1_1	IDGeoIV	73
PlansDAffectation_AffectationPrincipale_V1_1	technicalContact	info@are.admin.ch
PlansDAffectation_MN95_V1_1	furtherInformation	https://www.are.admin.ch/mmg
PlansDAffectation_MN95_V1_1	IDGeoIV	73
PlansDAffectation_MN95_V1_1	technicalContact	info@are.admin.ch
Dictionaries_V1	Issuer	GCS/COSIG
Dictionaries_V1	technicalContact	models@geo.admin.ch
DictionariesCH_V1	Issuer	GCS/COSIG
DictionariesCH_V1	technicalContact	models@geo.admin.ch
AdministrativeUnits_V1	furtherInformation	http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
AdministrativeUnits_V1	technicalContact	models@geo.admin.ch
AdministrativeUnitsCH_V1	furtherInformation	http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
AdministrativeUnitsCH_V1	technicalContact	models@geo.admin.ch
PlansDAffectation_AffectationPrincipale_V1_1	furtherInformation	https://www.are.admin.ch/mmg
PlansDAffectation_AffectationPrincipale_V1_1	IDGeoIV	73
PlansDAffectation_AffectationPrincipale_V1_1	technicalContact	info@are.admin.ch
PlansDAffectation_MN95_V1_1	furtherInformation	https://www.are.admin.ch/mmg
PlansDAffectation_MN95_V1_1	IDGeoIV	73
PlansDAffectation_MN95_V1_1	technicalContact	info@are.admin.ch
\.


--
-- TOC entry 15750 (class 0 OID 1804769312)
-- Dependencies: 3815
-- Data for Name: t_ili2db_model; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.t_ili2db_model (file, iliversion, modelname, content, importdate) FROM stdin;
CoordSys.ili	2.3	CoordSys	INTERLIS 2.3;\r\n\r\nREFSYSTEM MODEL CoordSys (en)\r\nAT "http://www.interlis.ch/models"\r\nVERSION "2005-06-16"  =\r\n\r\n  UNIT\r\n\r\n    Angle_Degree = 180 / PI [INTERLIS.rad];\r\n\r\n    Angle_Minute = 1 / 60 [Angle_Degree];\r\n\r\n    Angle_Second = 1 / 60 [Angle_Minute];\r\n\r\n  STRUCTURE Angle_DMS_S =\r\n    Degrees : -180 .. 180 CIRCULAR [CoordSys.Angle_Degree];\r\n    Minutes : 0 .. 59 CIRCULAR [CoordSys.Angle_Minute];\r\n    Seconds : 0.000 .. 59.999 CIRCULAR [CoordSys.Angle_Second];\r\n  END Angle_DMS_S;\r\n\r\n  DOMAIN\r\n\r\n    Angle_DMS = FORMAT BASED ON Angle_DMS_S (Degrees ":" Minutes ":" Seconds);\r\n\r\n    Angle_DMS_90\r\n    EXTENDS Angle_DMS = "-90:00:00.000" .. "90:00:00.000";\r\n\r\n  TOPIC CoordsysTopic =\r\n\r\n    CLASS Ellipsoid\r\n    EXTENDS INTERLIS.REFSYSTEM =\r\n      EllipsoidAlias : TEXT*70;\r\n      SemiMajorAxis : MANDATORY 6360000.0000 .. 6390000.0000 [INTERLIS.m];\r\n      InverseFlattening : MANDATORY 0.00000000 .. 350.00000000;\r\n      Remarks : TEXT*70;\r\n    END Ellipsoid;\r\n\r\n    CLASS GravityModel\r\n    EXTENDS INTERLIS.REFSYSTEM =\r\n      GravityModAlias : TEXT*70;\r\n      Definition : TEXT*70;\r\n    END GravityModel;\r\n\r\n    CLASS GeoidModel\r\n    EXTENDS INTERLIS.REFSYSTEM =\r\n      GeoidModAlias : TEXT*70;\r\n      Definition : TEXT*70;\r\n    END GeoidModel;\r\n\r\n    STRUCTURE LengthAXIS\r\n    EXTENDS INTERLIS.AXIS =\r\n      ShortName : TEXT*12;\r\n      Description : TEXT*255;\r\n      PARAMETER\r\n        Unit (EXTENDED): NUMERIC [INTERLIS.LENGTH];\r\n    END LengthAXIS;\r\n\r\n    STRUCTURE AngleAXIS\r\n    EXTENDS INTERLIS.AXIS =\r\n      ShortName : TEXT*12;\r\n      Description : TEXT*255;\r\n      PARAMETER\r\n        Unit (EXTENDED): NUMERIC [INTERLIS.ANGLE];\r\n    END AngleAXIS;\r\n\r\n    CLASS GeoCartesian1D\r\n    EXTENDS INTERLIS.COORDSYSTEM =\r\n      Axis (EXTENDED) : MANDATORY LengthAXIS;\r\n    END GeoCartesian1D;\r\n\r\n    CLASS GeoHeight\r\n    EXTENDS GeoCartesian1D =\r\n      System : MANDATORY (\r\n        normal,\r\n        orthometric,\r\n        ellipsoidal,\r\n        other\r\n      );\r\n      ReferenceHeight : MANDATORY -10000.000 .. 10000.000 [INTERLIS.m];\r\n      ReferenceHeightDescr : TEXT*70;\r\n    END GeoHeight;\r\n\r\n    ASSOCIATION HeightEllips =\r\n      GeoHeightRef -- {0..*} GeoHeight;\r\n      EllipsoidRef -- {1} Ellipsoid;\r\n    END HeightEllips;\r\n\r\n    ASSOCIATION HeightGravit =\r\n      GeoHeightRef -- {0..*} GeoHeight;\r\n      GravityRef -- {1} GravityModel;\r\n    END HeightGravit;\r\n\r\n    ASSOCIATION HeightGeoid =\r\n      GeoHeightRef -- {0..*} GeoHeight;\r\n      GeoidRef -- {1} GeoidModel;\r\n    END HeightGeoid;\r\n\r\n    CLASS GeoCartesian2D\r\n    EXTENDS INTERLIS.COORDSYSTEM =\r\n      Definition : TEXT*70;\r\n      Axis (EXTENDED) : LIST {2} OF LengthAXIS;\r\n    END GeoCartesian2D;\r\n\r\n    CLASS GeoCartesian3D\r\n    EXTENDS INTERLIS.COORDSYSTEM =\r\n      Definition : TEXT*70;\r\n      Axis (EXTENDED) : LIST {3} OF LengthAXIS;\r\n    END GeoCartesian3D;\r\n\r\n    CLASS GeoEllipsoidal\r\n    EXTENDS INTERLIS.COORDSYSTEM =\r\n      Definition : TEXT*70;\r\n      Axis (EXTENDED) : LIST {2} OF AngleAXIS;\r\n    END GeoEllipsoidal;\r\n\r\n    ASSOCIATION EllCSEllips =\r\n      GeoEllipsoidalRef -- {0..*} GeoEllipsoidal;\r\n      EllipsoidRef -- {1} Ellipsoid;\r\n    END EllCSEllips;\r\n\r\n    ASSOCIATION ToGeoEllipsoidal =\r\n      From -- {1..*} GeoCartesian3D;\r\n      To -- {1..*} GeoEllipsoidal;\r\n      ToHeight -- {1..*} GeoHeight;\r\n      MANDATORY CONSTRAINT\r\n        To->EllipsoidRef->Name == ToHeight->EllipsoidRef->Name;\r\n      MANDATORY CONSTRAINT\r\n        ToHeight->System == #ellipsoidal;\r\n    END ToGeoEllipsoidal;\r\n\r\n    ASSOCIATION ToGeoCartesian3D =\r\n      From2 -- {1..*} GeoEllipsoidal;\r\n      FromHeight -- {1..*} GeoHeight;\r\n      To3 -- {1..*} GeoCartesian3D;\r\n      MANDATORY CONSTRAINT\r\n        From2->EllipsoidRef->Name == FromHeight->EllipsoidRef->Name;\r\n      MANDATORY CONSTRAINT\r\n        FromHeight->System == #ellipsoidal;\r\n    END ToGeoCartesian3D;\r\n\r\n    ASSOCIATION BidirectGeoCartesian2D =\r\n      From -- {1..*} GeoCartesian2D;\r\n      To -- {1..*} GeoCartesian2D;\r\n    END BidirectGeoCartesian2D;\r\n\r\n    ASSOCIATION BidirectGeoCartesian3D =\r\n      From -- {1..*} GeoCartesian3D;\r\n      To2 -- {1..*} GeoCartesian3D;\r\n      Precision : MANDATORY (\r\n        exact,\r\n        measure_based\r\n      );\r\n      ShiftAxis1 : MANDATORY -10000.000 .. 10000.000 [INTERLIS.m];\r\n      ShiftAxis2 : MANDATORY -10000.000 .. 10000.000 [INTERLIS.m];\r\n      ShiftAxis3 : MANDATORY -10000.000 .. 10000.000 [INTERLIS.m];\r\n      RotationAxis1 : CoordSys.Angle_DMS_90;\r\n      RotationAxis2 : CoordSys.Angle_DMS_90;\r\n      RotationAxis3 : CoordSys.Angle_DMS_90;\r\n      NewScale : 0.000001 .. 1000000.000000;\r\n    END BidirectGeoCartesian3D;\r\n\r\n    ASSOCIATION BidirectGeoEllipsoidal =\r\n      From4 -- {1..*} GeoEllipsoidal;\r\n      To4 -- {1..*} GeoEllipsoidal;\r\n    END BidirectGeoEllipsoidal;\r\n\r\n    ASSOCIATION MapProjection(ABSTRACT) =\r\n      From5 -- {1..*} GeoEllipsoidal;\r\n      To5 -- {1..*} GeoCartesian2D;\r\n      FromCo1_FundPt : MANDATORY CoordSys.Angle_DMS_90;\r\n      FromCo2_FundPt : MANDATORY CoordSys.Angle_DMS_90;\r\n      ToCoord1_FundPt : MANDATORY -10000000 .. 10000000 [INTERLIS.m];\r\n      ToCoord2_FundPt : MANDATORY -10000000 .. 10000000 [INTERLIS.m];\r\n    END MapProjection;\r\n\r\n    ASSOCIATION TransverseMercator\r\n    EXTENDS MapProjection =\r\n    END TransverseMercator;\r\n\r\n    ASSOCIATION SwissProjection\r\n    EXTENDS MapProjection =\r\n      IntermFundP1 : MANDATORY CoordSys.Angle_DMS_90;\r\n      IntermFundP2 : MANDATORY CoordSys.Angle_DMS_90;\r\n    END SwissProjection;\r\n\r\n    ASSOCIATION Mercator\r\n    EXTENDS MapProjection =\r\n    END Mercator;\r\n\r\n    ASSOCIATION ObliqueMercator\r\n    EXTENDS MapProjection =\r\n    END ObliqueMercator;\r\n\r\n    ASSOCIATION Lambert\r\n    EXTENDS MapProjection =\r\n    END Lambert;\r\n\r\n    ASSOCIATION Polyconic\r\n    EXTENDS MapProjection =\r\n    END Polyconic;\r\n\r\n    ASSOCIATION Albus\r\n    EXTENDS MapProjection =\r\n    END Albus;\r\n\r\n    ASSOCIATION Azimutal\r\n    EXTENDS MapProjection =\r\n    END Azimutal;\r\n\r\n    ASSOCIATION Stereographic\r\n    EXTENDS MapProjection =\r\n    END Stereographic;\r\n\r\n    ASSOCIATION HeightConversion =\r\n      FromHeight -- {1..*} GeoHeight;\r\n      ToHeight -- {1..*} GeoHeight;\r\n      Definition : TEXT*70;\r\n    END HeightConversion;\r\n\r\n  END CoordsysTopic;\r\n\r\nEND CoordSys.\r\n	2019-08-27 11:04:29.005
CHBase_Part4_ADMINISTRATIVEUNITS_20110830.ili	2.3	CHAdminCodes_V1 AdministrativeUnits_V1{ CHAdminCodes_V1 InternationalCodes_V1 Dictionaries_V1 Localisation_V1 INTERLIS} AdministrativeUnitsCH_V1{ CHAdminCodes_V1 InternationalCodes_V1 LocalisationCH_V1 AdministrativeUnits_V1 INTERLIS}	/* ########################################################################\r\n   CHBASE - BASE MODULES OF THE SWISS FEDERATION FOR MINIMAL GEODATA MODELS\r\n   ======\r\n   BASISMODULE DES BUNDES           MODULES DE BASE DE LA CONFEDERATION\r\n   F�R MINIMALE GEODATENMODELLE     POUR LES MODELES DE GEODONNEES MINIMAUX\r\n   \r\n   PROVIDER: GKG/KOGIS - GCS/COSIG             CONTACT: models@geo.admin.ch\r\n   PUBLISHED: 2011-08-30\r\n   ########################################################################\r\n*/\r\n\r\nINTERLIS 2.3;\r\n\r\n/* ########################################################################\r\n   ########################################################################\r\n   PART IV -- ADMINISTRATIVE UNITS\r\n   - Package CHAdminCodes\r\n   - Package AdministrativeUnits\r\n   - Package AdministrativeUnitsCH\r\n*/\r\n\r\n!! Version    | Who   | Modification\r\n!!------------------------------------------------------------------------------\r\n!! 2018-02-19 | KOGIS | CHCantonCode adapted (FL and CH added) (line 34)\r\n\r\n!! ########################################################################\r\n!!@technicalContact=models@geo.admin.ch\r\n!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html\r\nTYPE MODEL CHAdminCodes_V1 (en)\r\n  AT "http://www.geo.admin.ch" VERSION "2018-02-19" =\r\n\r\n  DOMAIN\r\n    CHCantonCode = (ZH,BE,LU,UR,SZ,OW,NW,GL,ZG,FR,SO,BS,BL,SH,AR,AI,SG,\r\n                    GR,AG,TG,TI,VD,VS,NE,GE,JU,FL,CH);\r\n\r\n    CHMunicipalityCode = 1..9999;  !! BFS-Nr\r\n\r\nEND CHAdminCodes_V1.\r\n\r\n!! ########################################################################\r\n!!@technicalContact=models@geo.admin.ch\r\n!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html\r\nMODEL AdministrativeUnits_V1 (en)\r\n  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =\r\n\r\n  IMPORTS UNQUALIFIED INTERLIS;\r\n  IMPORTS UNQUALIFIED CHAdminCodes_V1;\r\n  IMPORTS UNQUALIFIED InternationalCodes_V1;\r\n  IMPORTS Localisation_V1;\r\n  IMPORTS Dictionaries_V1;\r\n\r\n  TOPIC AdministrativeUnits (ABSTRACT) =\r\n\r\n    CLASS AdministrativeElement (ABSTRACT) =\r\n    END AdministrativeElement;\r\n\r\n    CLASS AdministrativeUnit (ABSTRACT) EXTENDS AdministrativeElement =\r\n    END AdministrativeUnit;\r\n\r\n    ASSOCIATION Hierarchy =\r\n      UpperLevelUnit (EXTERNAL) -<> {0..1} AdministrativeUnit;\r\n      LowerLevelUnit -- AdministrativeUnit;\r\n    END Hierarchy;\r\n\r\n    CLASS AdministrativeUnion (ABSTRACT) EXTENDS AdministrativeElement =\r\n    END AdministrativeUnion;\r\n\r\n    ASSOCIATION UnionMembers =\r\n      Union -<> AdministrativeUnion;\r\n      Member -- AdministrativeElement; \r\n    END UnionMembers;\r\n\r\n  END AdministrativeUnits;\r\n\r\n  TOPIC Countries EXTENDS AdministrativeUnits =\r\n\r\n    CLASS Country EXTENDS AdministrativeUnit =\r\n      Code: MANDATORY CountryCode_ISO3166_1;\r\n    UNIQUE Code;\r\n    END Country;\r\n\r\n  END Countries;\r\n\r\n  TOPIC CountryNames EXTENDS Dictionaries_V1.Dictionaries =\r\n    DEPENDS ON AdministrativeUnits_V1.Countries;\r\n\r\n    STRUCTURE CountryName EXTENDS Entry =\r\n      Code: MANDATORY CountryCode_ISO3166_1;\r\n    END CountryName;\r\n      \r\n    CLASS CountryNamesTranslation EXTENDS Dictionary  =\r\n      Entries(EXTENDED): LIST OF CountryName;\r\n    UNIQUE Entries->Code;\r\n    EXISTENCE CONSTRAINT\r\n      Entries->Code REQUIRED IN AdministrativeUnits_V1.Countries.Country: Code;\r\n    END CountryNamesTranslation;\r\n\r\n  END CountryNames;\r\n\r\n  TOPIC Agencies (ABSTRACT) =\r\n    DEPENDS ON AdministrativeUnits_V1.AdministrativeUnits;\r\n\r\n    CLASS Agency (ABSTRACT) =\r\n    END Agency;\r\n\r\n    ASSOCIATION Authority =\r\n      Supervisor (EXTERNAL) -<> {1..1} Agency OR AdministrativeUnits_V1.AdministrativeUnits.AdministrativeElement;\r\n      Agency -- Agency;\r\n    END Authority;\r\n\r\n    ASSOCIATION Organisation =\r\n      Orderer (EXTERNAL) -- Agency OR AdministrativeUnits_V1.AdministrativeUnits.AdministrativeElement;\r\n      Executor -- Agency;\r\n    END Organisation;\r\n\r\n  END Agencies;\r\n\r\nEND AdministrativeUnits_V1.\r\n\r\n!! ########################################################################\r\n!!@technicalContact=models@geo.admin.ch\r\n!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html\r\nMODEL AdministrativeUnitsCH_V1 (en)\r\n  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =\r\n\r\n  IMPORTS UNQUALIFIED INTERLIS;\r\n  IMPORTS UNQUALIFIED CHAdminCodes_V1;\r\n  IMPORTS UNQUALIFIED InternationalCodes_V1;\r\n  IMPORTS LocalisationCH_V1;\r\n  IMPORTS AdministrativeUnits_V1;\r\n\r\n  TOPIC CHCantons EXTENDS AdministrativeUnits_V1.AdministrativeUnits =\r\n    DEPENDS ON AdministrativeUnits_V1.Countries;\r\n\r\n    CLASS CHCanton EXTENDS AdministrativeUnit =\r\n      Code: MANDATORY CHCantonCode;\r\n      Name: LocalisationCH_V1.MultilingualText;\r\n      Web: URI;\r\n    UNIQUE Code;\r\n    END CHCanton;\r\n\r\n    ASSOCIATION Hierarchy (EXTENDED) =\r\n      UpperLevelUnit (EXTENDED, EXTERNAL) -<> {1..1} AdministrativeUnits_V1.Countries.Country;\r\n      LowerLevelUnit (EXTENDED) -- CHCanton;\r\n    MANDATORY CONSTRAINT\r\n      UpperLevelUnit->Code == "CHE";\r\n    END Hierarchy;\r\n\r\n  END CHCantons;\r\n\r\n  TOPIC CHDistricts EXTENDS AdministrativeUnits_V1.AdministrativeUnits =\r\n    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;\r\n\r\n    CLASS CHDistrict EXTENDS AdministrativeUnit =\r\n      ShortName: MANDATORY TEXT*20;\r\n      Name: LocalisationCH_V1.MultilingualText;\r\n      Web: MANDATORY URI;\r\n    END CHDistrict;\r\n\r\n    ASSOCIATION Hierarchy (EXTENDED) =\r\n      UpperLevelUnit (EXTENDED, EXTERNAL) -<> {1..1} AdministrativeUnitsCH_V1.CHCantons.CHCanton;\r\n      LowerLevelUnit (EXTENDED) -- CHDistrict;\r\n    UNIQUE UpperLevelUnit->Code, LowerLevelUnit->ShortName;\r\n    END Hierarchy;\r\n\r\n  END CHDistricts;\r\n\r\n  TOPIC CHMunicipalities EXTENDS AdministrativeUnits_V1.AdministrativeUnits =\r\n    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;\r\n    DEPENDS ON AdministrativeUnitsCH_V1.CHDistricts;\r\n\r\n    CLASS CHMunicipality EXTENDS AdministrativeUnit =\r\n      Code: MANDATORY CHMunicipalityCode;\r\n      Name: LocalisationCH_V1.MultilingualText;\r\n      Web: URI;\r\n    UNIQUE Code;\r\n    END CHMunicipality;\r\n\r\n    ASSOCIATION Hierarchy (EXTENDED) =\r\n      UpperLevelUnit (EXTENDED, EXTERNAL) -<> {1..1} AdministrativeUnitsCH_V1.CHCantons.CHCanton\r\n      OR AdministrativeUnitsCH_V1.CHDistricts.CHDistrict;\r\n      LowerLevelUnit (EXTENDED) -- CHMunicipality;\r\n    END Hierarchy;\r\n\r\n  END CHMunicipalities;\r\n\r\n  TOPIC CHAdministrativeUnions EXTENDS AdministrativeUnits_V1.AdministrativeUnits =\r\n    DEPENDS ON AdministrativeUnits_V1.Countries;\r\n    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;\r\n    DEPENDS ON AdministrativeUnitsCH_V1.CHDistricts;\r\n    DEPENDS ON AdministrativeUnitsCH_V1.CHMunicipalities;\r\n\r\n    CLASS AdministrativeUnion (EXTENDED) =\r\n    OID AS UUIDOID;\r\n      Name: LocalisationCH_V1.MultilingualText;\r\n      Web: URI;\r\n      Description: LocalisationCH_V1.MultilingualMText;\r\n    END AdministrativeUnion;\r\n\r\n  END CHAdministrativeUnions;\r\n\r\n  TOPIC CHAgencies EXTENDS AdministrativeUnits_V1.Agencies =\r\n    DEPENDS ON AdministrativeUnits_V1.Countries;\r\n    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;\r\n    DEPENDS ON AdministrativeUnitsCH_V1.CHDistricts;\r\n    DEPENDS ON AdministrativeUnitsCH_V1.CHMunicipalities;\r\n\r\n    CLASS Agency (EXTENDED) =\r\n    OID AS UUIDOID;\r\n      Name: LocalisationCH_V1.MultilingualText;\r\n      Web: URI;\r\n      Description: LocalisationCH_V1.MultilingualMText;\r\n    END Agency;\r\n\r\n  END CHAgencies;\r\n\r\nEND AdministrativeUnitsCH_V1.\r\n\r\n!! ########################################################################\r\n	2019-08-27 11:04:29.005
Units.ili	2.3	Units	INTERLIS 2.3;\r\n\r\nCONTRACTED TYPE MODEL Units (en)\r\nAT "http://www.interlis.ch/models"\r\nVERSION "2005-06-06"  =\r\n\r\n  UNIT\r\n\r\n    Area (ABSTRACT) = (INTERLIS.LENGTH * INTERLIS.LENGTH);\r\n\r\n    Volume (ABSTRACT) = (INTERLIS.LENGTH * INTERLIS.LENGTH * INTERLIS.LENGTH);\r\n\r\n    Velocity (ABSTRACT) = (INTERLIS.LENGTH / INTERLIS.TIME);\r\n\r\n    Acceleration (ABSTRACT) = (Velocity / INTERLIS.TIME);\r\n\r\n    Force (ABSTRACT) = (INTERLIS.MASS * INTERLIS.LENGTH / INTERLIS.TIME / INTERLIS.TIME);\r\n\r\n    Pressure (ABSTRACT) = (Force / Area);\r\n\r\n    Energy (ABSTRACT) = (Force * INTERLIS.LENGTH);\r\n\r\n    Power (ABSTRACT) = (Energy / INTERLIS.TIME);\r\n\r\n    Electric_Potential (ABSTRACT) = (Power / INTERLIS.ELECTRIC_CURRENT);\r\n\r\n    Frequency (ABSTRACT) = (INTERLIS.DIMENSIONLESS / INTERLIS.TIME);\r\n\r\n    Millimeter [mm] = 0.001 [INTERLIS.m];\r\n\r\n    Centimeter [cm] = 0.01 [INTERLIS.m];\r\n\r\n    Decimeter [dm] = 0.1 [INTERLIS.m];\r\n\r\n    Kilometer [km] = 1000 [INTERLIS.m];\r\n\r\n    Square_Meter [m2] EXTENDS Area = (INTERLIS.m * INTERLIS.m);\r\n\r\n    Cubic_Meter [m3] EXTENDS Volume = (INTERLIS.m * INTERLIS.m * INTERLIS.m);\r\n\r\n    Minute [min] = 60 [INTERLIS.s];\r\n\r\n    Hour [h] = 60 [min];\r\n\r\n    Day [d] = 24 [h];\r\n\r\n    Kilometer_per_Hour [kmh] EXTENDS Velocity = (km / h);\r\n\r\n    Meter_per_Second [ms] = 3.6 [kmh];\r\n\r\n    Newton [N] EXTENDS Force = (INTERLIS.kg * INTERLIS.m / INTERLIS.s / INTERLIS.s);\r\n\r\n    Pascal [Pa] EXTENDS Pressure = (N / m2);\r\n\r\n    Joule [J] EXTENDS Energy = (N * INTERLIS.m);\r\n\r\n    Watt [W] EXTENDS Power = (J / INTERLIS.s);\r\n\r\n    Volt [V] EXTENDS Electric_Potential = (W / INTERLIS.A);\r\n\r\n    Inch [in] = 2.54 [cm];\r\n\r\n    Foot [ft] = 0.3048 [INTERLIS.m];\r\n\r\n    Mile [mi] = 1.609344 [km];\r\n\r\n    Are [a] = 100 [m2];\r\n\r\n    Hectare [ha] = 100 [a];\r\n\r\n    Square_Kilometer [km2] = 100 [ha];\r\n\r\n    Acre [acre] = 4046.873 [m2];\r\n\r\n    Liter [L] = 1 / 1000 [m3];\r\n\r\n    US_Gallon [USgal] = 3.785412 [L];\r\n\r\n    Angle_Degree = 180 / PI [INTERLIS.rad];\r\n\r\n    Angle_Minute = 1 / 60 [Angle_Degree];\r\n\r\n    Angle_Second = 1 / 60 [Angle_Minute];\r\n\r\n    Gon = 200 / PI [INTERLIS.rad];\r\n\r\n    Gram [g] = 1 / 1000 [INTERLIS.kg];\r\n\r\n    Ton [t] = 1000 [INTERLIS.kg];\r\n\r\n    Pound [lb] = 0.4535924 [INTERLIS.kg];\r\n\r\n    Calorie [cal] = 4.1868 [J];\r\n\r\n    Kilowatt_Hour [kWh] = 0.36e7 [J];\r\n\r\n    Horsepower = 746 [W];\r\n\r\n    Techn_Atmosphere [at] = 98066.5 [Pa];\r\n\r\n    Atmosphere [atm] = 101325 [Pa];\r\n\r\n    Bar [bar] = 10000 [Pa];\r\n\r\n    Millimeter_Mercury [mmHg] = 133.3224 [Pa];\r\n\r\n    Torr = 133.3224 [Pa];\r\n\r\n    Decibel [dB] = FUNCTION // 10**(dB/20) * 0.00002 // [Pa];\r\n\r\n    Degree_Celsius [oC] = FUNCTION // oC+273.15 // [INTERLIS.K];\r\n\r\n    Degree_Fahrenheit [oF] = FUNCTION // (oF+459.67)/1.8 // [INTERLIS.K];\r\n\r\n    CountedObjects EXTENDS INTERLIS.DIMENSIONLESS;\r\n\r\n    Hertz [Hz] EXTENDS Frequency = (CountedObjects / INTERLIS.s);\r\n\r\n    KiloHertz [KHz] = 1000 [Hz];\r\n\r\n    MegaHertz [MHz] = 1000 [KHz];\r\n\r\n    Percent = 0.01 [CountedObjects];\r\n\r\n    Permille = 0.001 [CountedObjects];\r\n\r\n    USDollar [USD] EXTENDS INTERLIS.MONEY;\r\n\r\n    Euro [EUR] EXTENDS INTERLIS.MONEY;\r\n\r\n    SwissFrancs [CHF] EXTENDS INTERLIS.MONEY;\r\n\r\nEND Units.\r\n	2019-08-27 11:04:29.005
CHBase_Part1_GEOMETRY_20110830.ili	2.3	GeometryCHLV03_V1{ CoordSys Units INTERLIS} GeometryCHLV95_V1{ CoordSys Units INTERLIS}	/* ########################################################################\r\n   CHBASE - BASE MODULES OF THE SWISS FEDERATION FOR MINIMAL GEODATA MODELS\r\n   ======\r\n   BASISMODULE DES BUNDES           MODULES DE BASE DE LA CONFEDERATION\r\n   FÜR MINIMALE GEODATENMODELLE     POUR LES MODELES DE GEODONNEES MINIMAUX\r\n   \r\n   PROVIDER: GKG/KOGIS - GCS/COSIG             CONTACT: models@geo.admin.ch\r\n   PUBLISHED: 2011-0830\r\n   ########################################################################\r\n*/\r\n\r\nINTERLIS 2.3;\r\n\r\n/* ########################################################################\r\n   ########################################################################\r\n   PART I -- GEOMETRY\r\n   - Package GeometryCHLV03\r\n   - Package GeometryCHLV95\r\n*/\r\n\r\n!! ########################################################################\r\n\r\n!! Version    | Who   | Modification\r\n!!------------------------------------------------------------------------------\r\n!! 2015-02-20 | KOGIS | WITHOUT OVERLAPS added (line 57, 58, 65 and 66)\r\n!! 2015-11-12 | KOGIS | WITHOUT OVERLAPS corrected (line 57 and 58)\r\n!! 2017-11-27 | KOGIS | Meta-Attributes @furtherInformation adapted and @CRS added (line 31, 44 and 50)\r\n!! 2017-12-04 | KOGIS | Meta-Attribute @CRS corrected\r\n\r\n!!@technicalContact=models@geo.admin.ch\r\n!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html\r\nTYPE MODEL GeometryCHLV03_V1 (en)\r\n  AT "http://www.geo.admin.ch" VERSION "2017-12-04" =\r\n\r\n  IMPORTS UNQUALIFIED INTERLIS;\r\n  IMPORTS Units;\r\n  IMPORTS CoordSys;\r\n\r\n  REFSYSTEM BASKET BCoordSys ~ CoordSys.CoordsysTopic\r\n    OBJECTS OF GeoCartesian2D: CHLV03\r\n    OBJECTS OF GeoHeight: SwissOrthometricAlt;\r\n\r\n  DOMAIN\r\n    !!@CRS=EPSG:21781\r\n    Coord2 = COORD\r\n      460000.000 .. 870000.000 [m] {CHLV03[1]},\r\n       45000.000 .. 310000.000 [m] {CHLV03[2]},\r\n      ROTATION 2 -> 1;\r\n\r\n    !!@CRS=EPSG:21781\r\n    Coord3 = COORD\r\n      460000.000 .. 870000.000 [m] {CHLV03[1]},\r\n       45000.000 .. 310000.000 [m] {CHLV03[2]},\r\n        -200.000 ..   5000.000 [m] {SwissOrthometricAlt[1]},\r\n      ROTATION 2 -> 1;\r\n\r\n    Surface = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;\r\n    Area = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;\r\n    Line = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord2;\r\n    DirectedLine EXTENDS Line = DIRECTED POLYLINE;\r\n    LineWithAltitude = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;\r\n    DirectedLineWithAltitude = DIRECTED POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;\r\n    \r\n    /* minimal overlaps only (2mm) */\r\n    SurfaceWithOverlaps2mm = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;\r\n    AreaWithOverlaps2mm = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;\r\n\r\n    Orientation = 0.00000 .. 359.99999 CIRCULAR [Units.Angle_Degree] <Coord2>;\r\n\r\n    Accuracy = (cm, cm50, m, m10, m50, vague);\r\n    Method = (measured, sketched, calculated);\r\n\r\n    STRUCTURE LineStructure = \r\n      Line: Line;\r\n    END LineStructure;\r\n\r\n    STRUCTURE DirectedLineStructure =\r\n      Line: DirectedLine;\r\n    END DirectedLineStructure;\r\n\r\n    STRUCTURE MultiLine =\r\n      Lines: BAG {1..*} OF LineStructure;\r\n    END MultiLine;\r\n\r\n    STRUCTURE MultiDirectedLine =\r\n      Lines: BAG {1..*} OF DirectedLineStructure;\r\n    END MultiDirectedLine;\r\n\r\n    STRUCTURE SurfaceStructure =\r\n      Surface: Surface;\r\n    END SurfaceStructure;\r\n\r\n    STRUCTURE MultiSurface =\r\n      Surfaces: BAG {1..*} OF SurfaceStructure;\r\n    END MultiSurface;\r\n\r\nEND GeometryCHLV03_V1.\r\n\r\n!! ########################################################################\r\n\r\n!! Version    | Who   | Modification\r\n!!------------------------------------------------------------------------------\r\n!! 2015-02-20 | KOGIS | WITHOUT OVERLAPS added (line 135, 136, 143 and 144)\r\n!! 2015-11-12 | KOGIS | WITHOUT OVERLAPS corrected (line 135 and 136)\r\n!! 2017-11-27 | KOGIS | Meta-Attributes @furtherInformation adapted and @CRS added (line 109, 122 and 128)\r\n!! 2017-12-04 | KOGIS | Meta-Attribute @CRS corrected\r\n\r\n!!@technicalContact=models@geo.admin.ch\r\n!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html\r\nTYPE MODEL GeometryCHLV95_V1 (en)\r\n  AT "http://www.geo.admin.ch" VERSION "2017-12-04" =\r\n\r\n  IMPORTS UNQUALIFIED INTERLIS;\r\n  IMPORTS Units;\r\n  IMPORTS CoordSys;\r\n\r\n  REFSYSTEM BASKET BCoordSys ~ CoordSys.CoordsysTopic\r\n    OBJECTS OF GeoCartesian2D: CHLV95\r\n    OBJECTS OF GeoHeight: SwissOrthometricAlt;\r\n\r\n  DOMAIN\r\n    !!@CRS=EPSG:2056\r\n    Coord2 = COORD\r\n      2460000.000 .. 2870000.000 [m] {CHLV95[1]},\r\n      1045000.000 .. 1310000.000 [m] {CHLV95[2]},\r\n      ROTATION 2 -> 1;\r\n\r\n    !!@CRS=EPSG:2056\r\n    Coord3 = COORD\r\n      2460000.000 .. 2870000.000 [m] {CHLV95[1]},\r\n      1045000.000 .. 1310000.000 [m] {CHLV95[2]},\r\n         -200.000 ..   5000.000 [m] {SwissOrthometricAlt[1]},\r\n      ROTATION 2 -> 1;\r\n\r\n    Surface = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;\r\n    Area = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;\r\n    Line = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord2;\r\n    DirectedLine EXTENDS Line = DIRECTED POLYLINE;\r\n    LineWithAltitude = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;\r\n    DirectedLineWithAltitude = DIRECTED POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;\r\n    \r\n    /* minimal overlaps only (2mm) */\r\n    SurfaceWithOverlaps2mm = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;\r\n    AreaWithOverlaps2mm = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;\r\n\r\n    Orientation = 0.00000 .. 359.99999 CIRCULAR [Units.Angle_Degree] <Coord2>;\r\n\r\n    Accuracy = (cm, cm50, m, m10, m50, vague);\r\n    Method = (measured, sketched, calculated);\r\n\r\n    STRUCTURE LineStructure = \r\n      Line: Line;\r\n    END LineStructure;\r\n\r\n    STRUCTURE DirectedLineStructure =\r\n      Line: DirectedLine;\r\n    END DirectedLineStructure;\r\n\r\n    STRUCTURE MultiLine =\r\n      Lines: BAG {1..*} OF LineStructure;\r\n    END MultiLine;\r\n\r\n    STRUCTURE MultiDirectedLine =\r\n      Lines: BAG {1..*} OF DirectedLineStructure;\r\n    END MultiDirectedLine;\r\n\r\n    STRUCTURE SurfaceStructure =\r\n      Surface: Surface;\r\n    END SurfaceStructure;\r\n\r\n    STRUCTURE MultiSurface =\r\n      Surfaces: BAG {1..*} OF SurfaceStructure;\r\n    END MultiSurface;\r\n\r\nEND GeometryCHLV95_V1.\r\n\r\n!! ########################################################################\r\n	2019-08-27 11:04:29.005
PlansDAffectation_V1_1.ili	2.3	PlansDAffectation_AffectationPrincipale_V1_1 PlansDAffectation_MN95_V1_1{ PlansDAffectation_AffectationPrincipale_V1_1 GeometryCHLV95_V1 CHAdminCodes_V1 InternationalCodes_V1}	INTERLIS 2.3;\r\n\r\n/** Mod�le de g�odonn�es minimal \r\n * Plans d'affectation (cantonaux / communaux)\r\n * Jeu de g�odonn�es de base No. 73\r\n */\r\n!!@ technicalContact=info@are.admin.ch\r\n!!@ furtherInformation=https://www.are.admin.ch/mmg\r\n!!@ IDGeoIV=73\r\nMODEL PlansDAffectation_AffectationPrincipale_V1_1 (de)\r\nAT "http://models.geo.admin.ch/ARE"\r\nVERSION "2017-02-16"  =\r\n\r\n  DOMAIN\r\n\r\n    TypeID = OID TEXT*60;\r\n\r\n  TOPIC Affectation_CH =\r\n\r\n    CLASS AffectationPrincipale_CH =\r\n      OID AS TypeID;\r\n\t  Code : MANDATORY 11 .. 99;\r\n      Designation : MANDATORY TEXT*80;\r\n    END AffectationPrincipale_CH;\r\n\r\n  END Affectation_CH;\r\n\r\nEND PlansDAffectation_AffectationPrincipale_V1_1.\r\n\r\n/** Mod�le de g�odonn�es minimal \r\n * Plans d'affectation (cantonaux / communaux)\r\n * Jeu de g�odonn�es de base No. 73\r\n */\r\n!!@ technicalContact=info@are.admin.ch\r\n!!@ furtherInformation=https://www.are.admin.ch/mmg\r\n!!@ IDGeoIV=73\r\n\r\n!!@ technicalContact=info@are.admin.ch\r\n!!@ furtherInformation=https://www.are.admin.ch/mmg\r\n!!@ IDGeoIV=73\r\nMODEL PlansDAffectation_MN95_V1_1 (fr)\r\nAT "http://models.geo.admin.ch/ARE"\r\nVERSION "2017-02-16" = \r\n!!@TRANSLATION OF PlansDAffectation_MN95_V1_1 =\r\n  IMPORTS CHAdminCodes_V1,GeometryCHLV95_V1,InternationalCodes_V1,PlansDAffectation_AffectationPrincipale_V1_1;\r\n\r\n  DOMAIN\r\n\r\n    ForceObligatoire = (\r\n      Contenu_contraignant,\r\n      Contenu_informatif,\r\n      Contenu_indicatif,\r\n      Contenu_dAideALaMiseEnOeuvre\r\n    );\r\n\r\n    StatutJuridique = (\r\n      En_vigueur,\r\n      En_cours_modification\r\n    );\r\n\r\n    SurfacePartition = AREA WITH (ARCS,STRAIGHTS) VERTEX GeometryCHLV95_V1.Coord2 WITHOUT OVERLAPS > 0.05;\r\n\r\n    SurfaceUnique = SURFACE WITH (ARCS,STRAIGHTS) VERTEX GeometryCHLV95_V1.Coord2 WITHOUT OVERLAPS > 0.05;\r\n\r\n  STRUCTURE LocalisedUri =\r\n    Language : InternationalCodes_V1.LanguageCode_ISO639_1;\r\n    Text : MANDATORY URI;\r\n  END LocalisedUri;\r\n\r\n  STRUCTURE MultilingualUri =\r\n    LocalisedText : BAG {1..*} OF PlansDAffectation_MN95_V1_1.LocalisedUri;\r\n    UNIQUE (LOCAL) LocalisedText: Language;\r\n  END MultilingualUri;\r\n\r\n  TOPIC DispositionsJuridiques =\r\n\r\n    CLASS Document =\r\n      Titre : MANDATORY TEXT*80;\r\n      TitreOfficiel : TEXT;\r\n      Abreviation : TEXT*12;\r\n      NoOfficiel : TEXT*20;\r\n      Canton : CHAdminCodes_V1.CHCantonCode;\r\n      Commune : CHAdminCodes_V1.CHMunicipalityCode;\r\n      publieDepuis : MANDATORY INTERLIS.XMLDate;\r\n      StatutJuridique : MANDATORY PlansDAffectation_MN95_V1_1.StatutJuridique;\r\n      TexteEnLigne : PlansDAffectation_MN95_V1_1.MultilingualUri;\r\n      Remarques : MTEXT;\r\n    END Document;\r\n\r\n    CLASS DispositionJuridique\r\n    EXTENDS Document =\r\n    END DispositionJuridique;\r\n\r\n    ASSOCIATION autresDocuments =\r\n      Origine -- {0..*} Document;\r\n      Document -- {0..*} Document;\r\n    END autresDocuments;\r\n\r\n  END DispositionsJuridiques;\r\n\r\n  TOPIC GeodonneesDeBase =\r\n    DEPENDS ON PlansDAffectation_MN95_V1_1.DispositionsJuridiques,PlansDAffectation_AffectationPrincipale_V1_1.Affectation_CH;\r\n\r\n    CLASS Geometrie (ABSTRACT) =\r\n      publieeDepuis : MANDATORY INTERLIS.XMLDate;\r\n      StatutJuridique : MANDATORY PlansDAffectation_MN95_V1_1.StatutJuridique;\r\n      Remarques : MTEXT;\r\n    END Geometrie;\r\n\r\n    CLASS Type =\r\n      Code : MANDATORY TEXT*12;\r\n      Designation : MANDATORY TEXT*80;\r\n      Abreviation : TEXT*12;\r\n      ForceObligatoire : MANDATORY PlansDAffectation_MN95_V1_1.ForceObligatoire;\r\n      IndiceUtilisation : 0.00 .. 9.00;\r\n      IndiceUtilisationType : TEXT*40;\r\n      Remarques : MTEXT;\r\n      Symbole : BLACKBOX BINARY; \r\n    END Type;\r\n\r\n    CLASS Type_Ct =\r\n      Code : MANDATORY TEXT*12;\r\n      Designation : MANDATORY TEXT*80;\r\n      Abreviation : TEXT*12;\r\n      Remarques : MTEXT;\r\n\t  MANDATORY CONSTRAINT (\r\n\t  Designation=="Zone d'habitation de tr�s faible densit� 15 LAT"\r\n      OR Designation=="Zone d'habitation de faible densit� 15 LAT"\r\n      OR Designation=="Zone d'habitation de moyenne densit� 15 LAT"\r\n      OR Designation=="Zone d'habitation de forte densit� 15 LAT"\r\n      OR Designation=="Zone d'activit�s �conomiques 15 LAT"\r\n      OR Designation=="Zone mixte 15 LAT"\r\n      OR Designation=="Zone centrale 15 LAT"\r\n      OR Designation=="Zone affect�e � des besoins publics 15 LAT"\r\n      OR Designation=="Zone de verdure 15 LAT"\r\n      OR Designation=="Zone de tourisme et de loisirs 15 LAT"\r\n      OR Designation=="Zone de desserte 15 LAT"\r\n      OR Designation=="Zone ferroviaire 15 LAT"\r\n      OR Designation=="Zone d'a�rodrome 15 LAT"\r\n      OR Designation=="Zone � options 15 LAT"\r\n      OR Designation=="Zone agricole 16 LAT"\r\n\t  OR Designation=="Zone agricole sp�cialis�e 16 LAT"\r\n      OR Designation=="Zone agricole prot�g�e 16 LAT"\r\n      OR Designation=="Zone viticole 16 LAT"\r\n      OR Designation=="Zone agricole prot�g�e 16 LAT"\r\n      OR Designation=="Zone viticole prot�g�e 16 LAT"\r\n      OR Designation=="Zone de protection de la nature et du paysage 17 LAT"\r\n      OR Designation=="Zone des eaux 17 LAT"\r\n      OR Designation=="Zone de site construit prot�g� 17 LAT"\r\n      OR Designation=="Zone pour petites entit�s urbanis�es 18 LAT"\r\n      OR Designation=="Zone de desserte 18 LAT"\r\n      OR Designation=="Zone ferroviaire 18 LAT"\r\n      OR Designation=="Zone d'a�rodrome 18 LAT"\r\n      OR Designation=="Zone interm�diaire 18 LAT"\r\n      OR Designation=="Aire foresti�re 18 LAT"\r\n      OR Designation=="Aire foresti�re sylvo-pastorale 18 LAT"\r\n      OR Designation=="Zone militaire 18 LAT"\r\n      OR Designation=="Zone d'extraction et de d�p�t de mat�riaux 18 LAT"\r\n      OR Designation=="Zone de production d'�nergie 18 LAT"\r\n      OR Designation=="Zone de tourisme et de loisirs 18 LAT"\r\n      OR Designation=="Zone para-agricole 18 LAT"\r\n      OR Designation=="Zone affect�e � des besoins publics 18 LAT"\r\n      OR Designation=="Zone de sport d'hiver 18 LAT"\r\n      OR Designation=="Secteur dont l'affectation en vigueur est maintenue"\r\n      OR Designation=="Secteurs de protection du site b�ti 17 LAT"\r\n      OR Designation=="Secteurs de protection de la nature et du paysage 17 LAT"\r\n      OR Designation=="Secteurs de restrictions li�s aux dangers naturels"\r\n      OR Designation=="Secteurs de sport d'hiver 18 LAT"\r\n      OR Designation=="Autres zones superpos�es"\r\n      OR Designation=="P�rim�tres des plans d'affectation l�galis�s"\r\n      OR Designation=="P�rim�tres des plans superpos�s"\r\n      OR Designation=="P�rim�tres � d�velopper par plan d'affectation"\r\n      OR Designation=="P�rim�tres avec �tape d'�quipement diff�r�e"\r\n      OR Designation=="P�rim�tres conditionn�s"\r\n      OR Designation=="P�rim�tres d'implantation des constructions"\r\n      OR Designation=="Autres p�rim�tres superpos�s"\r\n      OR Designation=="Alignement"\r\n      OR Designation=="Autres contenus lin�aires"\r\n      OR Designation=="Objets naturels"\r\n      OR Designation=="Monuments culturels"\r\n      OR Designation=="Autres contenus ponctuels"\r\n\t  );\r\n\t  MANDATORY CONSTRAINT (\r\n\t  Code=="1101" \r\n\t  OR Code=="1102"\r\n\t  OR Code=="1103"\r\n      OR Code=="1104"\r\n      OR Code=="1201"\r\n      OR Code=="1301"\r\n      OR Code=="1401"\r\n      OR Code=="1501"\r\n      OR Code=="1601"\r\n      OR Code=="1701"\r\n      OR Code=="1801"\r\n      OR Code=="1802"\r\n      OR Code=="1803"\r\n      OR Code=="1901"\r\n      OR Code=="2101"\r\n      OR Code=="2201"\r\n      OR Code=="2301"\r\n      OR Code=="2901"\r\n      OR Code=="2902"\r\n      OR Code=="3101"\r\n      OR Code=="3201"\r\n      OR Code=="3901"\r\n      OR Code=="4101"\r\n      OR Code=="4201"\r\n      OR Code=="4202"\r\n      OR Code=="4203"\r\n      OR Code=="4301"\r\n      OR Code=="4401"\r\n      OR Code=="4402"\r\n      OR Code=="4901"\r\n      OR Code=="4902"\r\n      OR Code=="4903"\r\n      OR Code=="4904"\r\n      OR Code=="4905"\r\n      OR Code=="4906"\r\n      OR Code=="4907"\r\n      OR Code=="5000"\r\n      OR Code=="5101"\r\n      OR Code=="5201"\r\n      OR Code=="5301"\r\n      OR Code=="5901"\r\n      OR Code=="5909"\r\n      OR Code=="6101"\r\n      OR Code=="6102"\r\n      OR Code=="6201"\r\n      OR Code=="6301"\r\n      OR Code=="6901"\r\n      OR Code=="6902"\r\n      OR Code=="6909"\r\n      OR Code=="7101"\r\n      OR Code=="7909"\r\n      OR Code=="8101"\r\n      OR Code=="8201"\r\n      OR Code=="8909"\r\n\t  );\r\n    END Type_Ct;\r\n\r\n    CLASS AffectationPrimaire_SurfaceDeZones\r\n    EXTENDS Geometrie =\r\n      Geometrie : MANDATORY PlansDAffectation_MN95_V1_1.SurfacePartition;\r\n    END AffectationPrimaire_SurfaceDeZones;\r\n\r\n    CLASS ContenuLineaire\r\n    EXTENDS Geometrie =\r\n      Geometrie : MANDATORY GeometryCHLV95_V1.Line;\r\n    END ContenuLineaire;\r\n\r\n    CLASS ContenuPonctuel\r\n    EXTENDS Geometrie =\r\n      Geometrie : MANDATORY GeometryCHLV95_V1.Coord2;\r\n    END ContenuPonctuel;\r\n\r\n    CLASS ZoneSuperposee\r\n    EXTENDS Geometrie =\r\n      Geometrie : MANDATORY PlansDAffectation_MN95_V1_1.SurfaceUnique;\r\n    END ZoneSuperposee;\r\n\r\n    ASSOCIATION Type_Document =\r\n      Type -- {0..*} Type;\r\n      Disposition (EXTERNAL) -- {0..*} PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document;\r\n    END Type_Document;\r\n\r\n    ASSOCIATION Type_Geometrie =\r\n      Geometrie -- {0..*} Geometrie;\r\n      Type -<> {1} Type;\r\n    END Type_Geometrie;\r\n\r\n    ASSOCIATION Type_Type_Ct =\r\n      Type -- {0..*} Type;\r\n      Type_Ct (EXTERNAL) -<> {1} Type_Ct;\r\n    END Type_Type_Ct;\r\n\r\n    ASSOCIATION TypeCt_AffectationPrincipaleCH =\r\n      Type_Ct -- {0..*} Type_Ct;\r\n      AffectationPrincipale_CH (EXTERNAL) -- {1} PlansDAffectation_AffectationPrincipale_V1_1.Affectation_CH.AffectationPrincipale_CH;\r\n    END TypeCt_AffectationPrincipaleCH;\r\n\r\n  END GeodonneesDeBase;\r\n\r\n  TOPIC MetadonneesTransfer =\r\n    DEPENDS ON PlansDAffectation_MN95_V1_1.GeodonneesDeBase;\r\n\r\n    CLASS JeuDeDonnees =\r\n      BasketID : MANDATORY TEXT;\r\n      Version : MANDATORY INTERLIS.XMLDate;\r\n      DateDeLivraison : INTERLIS.XMLDate;\r\n      Remarques : MTEXT;\r\n    END JeuDeDonnees;\r\n\r\n    CLASS Office =\r\n      Nom : MANDATORY TEXT*80;\r\n      GuichetEnLigne : PlansDAffectation_MN95_V1_1.MultilingualUri;\r\n      IDE : TEXT*12;\r\n    END Office;\r\n\r\n    ASSOCIATION Donnees_orgResp =\r\n      OrganismeResponsable -<> {1} Office;\r\n      JeuDeDonnees -- {0..*} JeuDeDonnees;\r\n    END Donnees_orgResp;\r\n\r\n  END MetadonneesTransfer;\r\n\r\nEND PlansDAffectation_MN95_V1_1.\r\n	2019-08-27 11:04:29.005
CHBase_Part2_LOCALISATION_20110830.ili	2.3	InternationalCodes_V1 Localisation_V1{ InternationalCodes_V1} LocalisationCH_V1{ InternationalCodes_V1 Localisation_V1} Dictionaries_V1{ InternationalCodes_V1} DictionariesCH_V1{ InternationalCodes_V1 Dictionaries_V1}	INTERLIS 2.3;\r\n\r\n!!@ technicalContact=models@geo.admin.ch\r\n!!@ Issuer=GCS/COSIG\r\nTYPE MODEL InternationalCodes_V1 (en)\r\nAT "http://www.geo.admin.ch"\r\nVERSION "2011-08-30"  =\r\n\r\n  DOMAIN\r\n\r\n    LanguageCode_ISO639_1 = (\r\n      de,\r\n      fr,\r\n      it,\r\n      rm,\r\n      en,\r\n      aa,\r\n      ab,\r\n      af,\r\n      am,\r\n      ar,\r\n      as,\r\n      ay,\r\n      az,\r\n      ba,\r\n      be,\r\n      bg,\r\n      bh,\r\n      bi,\r\n      bn,\r\n      bo,\r\n      br,\r\n      ca,\r\n      co,\r\n      cs,\r\n      cy,\r\n      da,\r\n      dz,\r\n      el,\r\n      eo,\r\n      es,\r\n      et,\r\n      eu,\r\n      fa,\r\n      fi,\r\n      fj,\r\n      fo,\r\n      fy,\r\n      ga,\r\n      gd,\r\n      gl,\r\n      gn,\r\n      gu,\r\n      ha,\r\n      he,\r\n      hi,\r\n      hr,\r\n      hu,\r\n      hy,\r\n      ia,\r\n      id,\r\n      ie,\r\n      ik,\r\n      is,\r\n      iu,\r\n      ja,\r\n      jw,\r\n      ka,\r\n      kk,\r\n      kl,\r\n      km,\r\n      kn,\r\n      ko,\r\n      ks,\r\n      ku,\r\n      ky,\r\n      la,\r\n      ln,\r\n      lo,\r\n      lt,\r\n      lv,\r\n      mg,\r\n      mi,\r\n      mk,\r\n      ml,\r\n      mn,\r\n      mo,\r\n      mr,\r\n      ms,\r\n      mt,\r\n      my,\r\n      na,\r\n      ne,\r\n      nl,\r\n      no,\r\n      oc,\r\n      om,\r\n      or,\r\n      pa,\r\n      pl,\r\n      ps,\r\n      pt,\r\n      qu,\r\n      rn,\r\n      ro,\r\n      ru,\r\n      rw,\r\n      sa,\r\n      sd,\r\n      sg,\r\n      sh,\r\n      si,\r\n      sk,\r\n      sl,\r\n      sm,\r\n      sn,\r\n      so,\r\n      sq,\r\n      sr,\r\n      ss,\r\n      st,\r\n      su,\r\n      sv,\r\n      sw,\r\n      ta,\r\n      te,\r\n      tg,\r\n      th,\r\n      ti,\r\n      tk,\r\n      tl,\r\n      tn,\r\n      to,\r\n      tr,\r\n      ts,\r\n      tt,\r\n      tw,\r\n      ug,\r\n      uk,\r\n      ur,\r\n      uz,\r\n      vi,\r\n      vo,\r\n      wo,\r\n      xh,\r\n      yi,\r\n      yo,\r\n      za,\r\n      zh,\r\n      zu\r\n    );\r\n\r\n    CountryCode_ISO3166_1 = (\r\n      CHE,\r\n      ABW,\r\n      AFG,\r\n      AGO,\r\n      AIA,\r\n      ALA,\r\n      ALB,\r\n      AND_,\r\n      ANT,\r\n      ARE,\r\n      ARG,\r\n      ARM,\r\n      ASM,\r\n      ATA,\r\n      ATF,\r\n      ATG,\r\n      AUS,\r\n      AUT,\r\n      AZE,\r\n      BDI,\r\n      BEL,\r\n      BEN,\r\n      BFA,\r\n      BGD,\r\n      BGR,\r\n      BHR,\r\n      BHS,\r\n      BIH,\r\n      BLR,\r\n      BLZ,\r\n      BMU,\r\n      BOL,\r\n      BRA,\r\n      BRB,\r\n      BRN,\r\n      BTN,\r\n      BVT,\r\n      BWA,\r\n      CAF,\r\n      CAN,\r\n      CCK,\r\n      CHL,\r\n      CHN,\r\n      CIV,\r\n      CMR,\r\n      COD,\r\n      COG,\r\n      COK,\r\n      COL,\r\n      COM,\r\n      CPV,\r\n      CRI,\r\n      CUB,\r\n      CXR,\r\n      CYM,\r\n      CYP,\r\n      CZE,\r\n      DEU,\r\n      DJI,\r\n      DMA,\r\n      DNK,\r\n      DOM,\r\n      DZA,\r\n      ECU,\r\n      EGY,\r\n      ERI,\r\n      ESH,\r\n      ESP,\r\n      EST,\r\n      ETH,\r\n      FIN,\r\n      FJI,\r\n      FLK,\r\n      FRA,\r\n      FRO,\r\n      FSM,\r\n      GAB,\r\n      GBR,\r\n      GEO,\r\n      GGY,\r\n      GHA,\r\n      GIB,\r\n      GIN,\r\n      GLP,\r\n      GMB,\r\n      GNB,\r\n      GNQ,\r\n      GRC,\r\n      GRD,\r\n      GRL,\r\n      GTM,\r\n      GUF,\r\n      GUM,\r\n      GUY,\r\n      HKG,\r\n      HMD,\r\n      HND,\r\n      HRV,\r\n      HTI,\r\n      HUN,\r\n      IDN,\r\n      IMN,\r\n      IND,\r\n      IOT,\r\n      IRL,\r\n      IRN,\r\n      IRQ,\r\n      ISL,\r\n      ISR,\r\n      ITA,\r\n      JAM,\r\n      JEY,\r\n      JOR,\r\n      JPN,\r\n      KAZ,\r\n      KEN,\r\n      KGZ,\r\n      KHM,\r\n      KIR,\r\n      KNA,\r\n      KOR,\r\n      KWT,\r\n      LAO,\r\n      LBN,\r\n      LBR,\r\n      LBY,\r\n      LCA,\r\n      LIE,\r\n      LKA,\r\n      LSO,\r\n      LTU,\r\n      LUX,\r\n      LVA,\r\n      MAC,\r\n      MAR,\r\n      MCO,\r\n      MDA,\r\n      MDG,\r\n      MDV,\r\n      MEX,\r\n      MHL,\r\n      MKD,\r\n      MLI,\r\n      MLT,\r\n      MMR,\r\n      MNE,\r\n      MNG,\r\n      MNP,\r\n      MOZ,\r\n      MRT,\r\n      MSR,\r\n      MTQ,\r\n      MUS,\r\n      MWI,\r\n      MYS,\r\n      MYT,\r\n      NAM,\r\n      NCL,\r\n      NER,\r\n      NFK,\r\n      NGA,\r\n      NIC,\r\n      NIU,\r\n      NLD,\r\n      NOR,\r\n      NPL,\r\n      NRU,\r\n      NZL,\r\n      OMN,\r\n      PAK,\r\n      PAN,\r\n      PCN,\r\n      PER,\r\n      PHL,\r\n      PLW,\r\n      PNG,\r\n      POL,\r\n      PRI,\r\n      PRK,\r\n      PRT,\r\n      PRY,\r\n      PSE,\r\n      PYF,\r\n      QAT,\r\n      REU,\r\n      ROU,\r\n      RUS,\r\n      RWA,\r\n      SAU,\r\n      SDN,\r\n      SEN,\r\n      SGP,\r\n      SGS,\r\n      SHN,\r\n      SJM,\r\n      SLB,\r\n      SLE,\r\n      SLV,\r\n      SMR,\r\n      SOM,\r\n      SPM,\r\n      SRB,\r\n      STP,\r\n      SUR,\r\n      SVK,\r\n      SVN,\r\n      SWE,\r\n      SWZ,\r\n      SYC,\r\n      SYR,\r\n      TCA,\r\n      TCD,\r\n      TGO,\r\n      THA,\r\n      TJK,\r\n      TKL,\r\n      TKM,\r\n      TLS,\r\n      TON,\r\n      TTO,\r\n      TUN,\r\n      TUR,\r\n      TUV,\r\n      TWN,\r\n      TZA,\r\n      UGA,\r\n      UKR,\r\n      UMI,\r\n      URY,\r\n      USA,\r\n      UZB,\r\n      VAT,\r\n      VCT,\r\n      VEN,\r\n      VGB,\r\n      VIR,\r\n      VNM,\r\n      VUT,\r\n      WLF,\r\n      WSM,\r\n      YEM,\r\n      ZAF,\r\n      ZMB,\r\n      ZWE\r\n    );\r\n\r\nEND InternationalCodes_V1.\r\n\r\n!!@ Issuer=GCS/COSIG\r\n!!@ technicalContact=models@geo.admin.ch\r\nTYPE MODEL Localisation_V1 (en)\r\nAT "http://www.geo.admin.ch"\r\nVERSION "2011-08-30"  =\r\n  IMPORTS InternationalCodes_V1;\r\n\r\n  STRUCTURE LocalisedText =\r\n    Language : InternationalCodes_V1.LanguageCode_ISO639_1;\r\n    Text : MANDATORY TEXT;\r\n  END LocalisedText;\r\n\r\n  STRUCTURE LocalisedMText =\r\n    Language : InternationalCodes_V1.LanguageCode_ISO639_1;\r\n    Text : MANDATORY MTEXT;\r\n  END LocalisedMText;\r\n\r\n  STRUCTURE MultilingualText =\r\n    LocalisedText : BAG {1..*} OF LocalisedText;\r\n    UNIQUE (LOCAL) LocalisedText: Language;\r\n  END MultilingualText;\r\n\r\n  STRUCTURE MultilingualMText =\r\n    LocalisedText : BAG {1..*} OF LocalisedMText;\r\n    UNIQUE (LOCAL) LocalisedText: Language;\r\n  END MultilingualMText;\r\n\r\nEND Localisation_V1.\r\n\r\n!!@ technicalContact=models@geo.admin.ch\r\n!!@ Issuer=GCS/COSIG\r\nTYPE MODEL LocalisationCH_V1 (en)\r\nAT "http://www.geo.admin.ch"\r\nVERSION "2011-08-30"  =\r\n  IMPORTS Localisation_V1,InternationalCodes_V1;\r\n\r\n  STRUCTURE LocalisedText\r\n  EXTENDS Localisation_V1.LocalisedText =\r\n    MANDATORY CONSTRAINT\r\n      Language == #de OR Language == #fr OR Language == #it OR Language == #rm OR Language == #en;\r\n  END LocalisedText;\r\n\r\n  STRUCTURE LocalisedMText\r\n  EXTENDS Localisation_V1.LocalisedMText =\r\n    MANDATORY CONSTRAINT\r\n      Language == #de OR Language == #fr OR Language == #it OR Language == #rm OR Language == #en;\r\n  END LocalisedMText;\r\n\r\n  STRUCTURE MultilingualText\r\n  EXTENDS Localisation_V1.MultilingualText =\r\n    LocalisedText (EXTENDED) : BAG {1..*} OF LocalisedText;\r\n  END MultilingualText;\r\n\r\n  STRUCTURE MultilingualMText\r\n  EXTENDS Localisation_V1.MultilingualMText =\r\n    LocalisedText (EXTENDED) : BAG {1..*} OF LocalisedMText;\r\n  END MultilingualMText;\r\n\r\nEND LocalisationCH_V1.\r\n\r\n!!@ technicalContact=models@geo.admin.ch\r\n!!@ Issuer=GCS/COSIG\r\nMODEL Dictionaries_V1 (en)\r\nAT "http://www.geo.admin.ch"\r\nVERSION "2011-08-30"  =\r\n  IMPORTS InternationalCodes_V1;\r\n\r\n  TOPIC Dictionaries(ABSTRACT) =\r\n\r\n    STRUCTURE Entry (ABSTRACT) =\r\n      Text : MANDATORY TEXT;\r\n    END Entry;\r\n\r\n    CLASS Dictionary =\r\n      Language : MANDATORY InternationalCodes_V1.LanguageCode_ISO639_1;\r\n      Entries : LIST {0..*} OF Entry;\r\n    END Dictionary;\r\n\r\n  END Dictionaries;\r\n\r\nEND Dictionaries_V1.\r\n\r\n!!@ technicalContact=models@geo.admin.ch\r\n!!@ Issuer=GCS/COSIG\r\nMODEL DictionariesCH_V1 (en)\r\nAT "http://www.geo.admin.ch"\r\nVERSION "2011-08-30"  =\r\n  IMPORTS InternationalCodes_V1,Dictionaries_V1;\r\n\r\n  TOPIC Dictionaries(ABSTRACT)\r\n  EXTENDS Dictionaries_V1.Dictionaries =\r\n\r\n    CLASS Dictionary (EXTENDED) =\r\n      MANDATORY CONSTRAINT\r\n        Language == #de OR Language == #fr OR Language == #it OR Language == #rm OR Language == #en;\r\n    END Dictionary;\r\n\r\n  END Dictionaries;\r\n\r\nEND DictionariesCH_V1.\r\n	2019-08-27 11:04:29.005
\.


--
-- TOC entry 15866 (class 0 OID 0)
-- Dependencies: 3787
-- Name: t_ili2db_seq; Type: SEQUENCE SET; Schema: normat_vd_demo; Owner: sit-admin
--

SELECT pg_catalog.setval('normat_vd_demo.t_ili2db_seq', 780, true);


--
-- TOC entry 15751 (class 0 OID 1804769318)
-- Dependencies: 3816
-- Data for Name: t_ili2db_settings; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.t_ili2db_settings (tag, setting) FROM stdin;
ch.ehi.ili2db.createMetaInfo	True
ch.ehi.ili2db.beautifyEnumDispName	underscore
ch.interlis.ili2c.ilidirs	%ILI_FROM_DB;%XTF_DIR;http://models.interlis.ch/;%JAR_DIR
ch.ehi.ili2db.arrayTrafo	coalesce
ch.ehi.ili2db.TidHandling	property
ch.ehi.ili2db.createForeignKeyIndex	yes
ch.ehi.ili2db.numericCheckConstraints	create
ch.ehi.ili2db.sender	ili2pg-3.11.2-20180208
ch.ehi.ili2db.createForeignKey	yes
ch.ehi.sqlgen.createGeomIndex	True
ch.ehi.ili2db.defaultSrsAuthority	EPSG
ch.ehi.ili2db.defaultSrsCode	2056
ch.ehi.ili2db.createEnumDefs	multiTable
ch.ehi.ili2db.uniqueConstraints	create
ch.ehi.ili2db.maxSqlNameLength	60
ch.ehi.ili2db.uuidDefaultValue	uuid_generate_v4()
ch.ehi.ili2db.inheritanceTrafo	smart2
ch.ehi.ili2db.catalogueRefTrafo	coalesce
ch.ehi.ili2db.multiPointTrafo	coalesce
ch.ehi.ili2db.StrokeArcs	enable
ch.ehi.ili2db.multiLineTrafo	coalesce
ch.ehi.ili2db.multiSurfaceTrafo	coalesce
ch.ehi.ili2db.multilingualTrafo	expand
\.


--
-- TOC entry 15752 (class 0 OID 1804769321)
-- Dependencies: 3817
-- Data for Name: t_ili2db_table_prop; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.t_ili2db_table_prop (tablename, tag, setting) FROM stdin;
statutjuridique	ch.ehi.ili2db.tableKind	ENUM
localiseduri	ch.ehi.ili2db.tableKind	STRUCTURE
multilingualuri	ch.ehi.ili2db.tableKind	STRUCTURE
languagecode_iso639_1	ch.ehi.ili2db.tableKind	ENUM
autresdocuments	ch.ehi.ili2db.tableKind	ASSOCIATION
forceobligatoire	ch.ehi.ili2db.tableKind	ENUM
chcantoncode	ch.ehi.ili2db.tableKind	ENUM
type_document	ch.ehi.ili2db.tableKind	ASSOCIATION
\.


--
-- TOC entry 15753 (class 0 OID 1804769327)
-- Dependencies: 3818
-- Data for Name: t_ili2db_trafo; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.t_ili2db_trafo (iliname, tag, setting) FROM stdin;
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.Document	ch.ehi.ili2db.inheritance	newAndSubClass
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.ContenuPonctuel	ch.ehi.ili2db.inheritance	newAndSubClass
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Geometrie	ch.ehi.ili2db.inheritance	newAndSubClass
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type	ch.ehi.ili2db.inheritance	newAndSubClass
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.ContenuLineaire	ch.ehi.ili2db.inheritance	newAndSubClass
PlansDAffectation_MN95_V1_1.MultilingualUri	ch.ehi.ili2db.inheritance	newAndSubClass
PlansDAffectation_AffectationPrincipale_V1_1.Affectation_CH.AffectationPrincipale_CH	ch.ehi.ili2db.inheritance	newAndSubClass
PlansDAffectation_MN95_V1_1.MetadonneesTransfer.Donnees_orgResp	ch.ehi.ili2db.inheritance	newAndSubClass
PlansDAffectation_MN95_V1_1.LocalisedUri	ch.ehi.ili2db.inheritance	newAndSubClass
PlansDAffectation_MN95_V1_1.MetadonneesTransfer.Office	ch.ehi.ili2db.inheritance	newAndSubClass
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.TypeCt_AffectationPrincipaleCH	ch.ehi.ili2db.inheritance	newAndSubClass
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Geometrie	ch.ehi.ili2db.inheritance	subClass
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Document	ch.ehi.ili2db.inheritance	newAndSubClass
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Ct	ch.ehi.ili2db.inheritance	newAndSubClass
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.AffectationPrimaire_SurfaceDeZones	ch.ehi.ili2db.inheritance	newAndSubClass
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.Type_Type_Ct	ch.ehi.ili2db.inheritance	newAndSubClass
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.DispositionJuridique	ch.ehi.ili2db.inheritance	newAndSubClass
PlansDAffectation_MN95_V1_1.MetadonneesTransfer.JeuDeDonnees	ch.ehi.ili2db.inheritance	newAndSubClass
PlansDAffectation_MN95_V1_1.GeodonneesDeBase.ZoneSuperposee	ch.ehi.ili2db.inheritance	newAndSubClass
PlansDAffectation_MN95_V1_1.DispositionsJuridiques.autresDocuments	ch.ehi.ili2db.inheritance	newAndSubClass
\.


--
-- TOC entry 15754 (class 0 OID 1804769333)
-- Dependencies: 3819
-- Data for Name: type; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.type (t_id, t_ili_tid, code, designation, abreviation, forceobligatoire, indiceutilisation, indiceutilisationtype, remarques, symbole, type_ct) FROM stdin;
468	c990fefc-eac5-492f-9220-2e0fd2922f92	440101	Aire forestière 18 LAT	ZFOR18LAT	Contenu_contraignant	0.00		\N	\\x	28
479	f6bd9951-13e7-4b78-b176-a00e10adb77c	420201	Zone ferroviaire 18 LAT	ZFER18LAT	Contenu_contraignant	0.00		\N	\\x	25
\.


--
-- TOC entry 15755 (class 0 OID 1804769341)
-- Dependencies: 3820
-- Data for Name: type_ct; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.type_ct (t_id, t_ili_tid, code, designation, abreviation, remarques, affectationprincipale_ch) FROM stdin;
1	34e47f4c-8ca6-4b83-8b65-37ddd9be7e74	1101	Zone d'habitation de très faible densité 15 LAT	ZHTF15LAT	\N	11
2	0fecb534-bf9f-4433-8bf5-17d2db266db2	1102	Zone d'habitation de faible densité 15 LAT	ZHFA15LAT	\N	11
3	7dd6bd31-2d99-4841-b6cd-44251c4010d6	1103	Zone d'habitation de moyenne densité 15 LAT	ZHMO15LAT	\N	11
4	b4461581-d15b-4f5d-8755-4e2d1cd0d92a	1104	Zone d'habitation de forte densité 15 LAT	ZHFO15LAT	\N	11
5	d1ec896e-5cea-4041-b976-d0dce25bccf8	1201	Zone d'activités économiques 15 LAT	ZECO15LAT	\N	12
6	2564d678-a570-4fd4-a465-1fe48958f093	1301	Zone mixte 15 LAT	ZMIX15LAT	\N	13
7	81f84a39-31d3-48dc-a249-679f3fcc996f	1401	Zone centrale 15 LAT	ZCEN15LAT	\N	14
8	ebe5aff0-de74-4c58-a1aa-a7430322e523	1501	Zone affectée à des besoins publics 15 LAT	ZPUB15LAT	\N	15
9	463a4b90-3e0c-4535-bf54-014fcef6d0fe	1601	Zone de verdure 15 LAT	ZVER15LAT	\N	16
10	9ba4da31-16a5-487d-94ef-f852db6e5036	1701	Zone de tourisme et de loisirs 15 LAT	ZTOU15LAT	\N	17
11	564d0291-5877-4f47-b40a-de2526df5cd3	1801	Zone de desserte 15 LAT	ZROU15LAT	\N	18
12	87a990f8-325b-4e15-b879-43d8a93503b0	1802	Zone ferroviaire 15 LAT	ZFER15LAT	\N	18
13	2485f8e4-3c63-47d6-b04c-a8bc44aee54c	1803	Zone d'aérodrome 15 LAT	ZAER15LAT	\N	18
14	758ce432-4ecc-4a1f-82c0-9f9e07cec5bc	1901	Zone à options 15 LAT	ZOPT15LAT	\N	19
15	7e546415-9049-4023-b52d-26c73d13fdeb	2101	Zone agricole 16 LAT	ZAGR16LAT	\N	21
16	abcd215c-8a17-4771-8da1-1c13d602e783	2201	Zone agricole spécialisée 16 LAT	ZAGS16LAT	\N	22
17	168b122b-e4a7-4c18-acd2-08a71605299d	2301	Zone viticole 16 LAT	ZVIT16LAT	\N	23
18	f4c53ccf-0a5b-487b-a39a-7701cf0d0d23	2901	Zone agricole protégée 16 LAT	ZAGP16LAT	\N	29
19	933064a8-8594-4a54-8d55-b1f078c4209f	2902	Zone viticole protégée 16 LAT	ZVIP16LAT	\N	29
20	aa95909a-22a5-40b1-a707-f2bf3ed705b6	3101	Zone de protection de la nature et du paysage 17 LAT	ZNAT17LAT	\N	31
21	f4e3af08-54e2-480b-b2e4-11860c9f45b9	3201	Zone des eaux 17 LAT	ZEAU17LAT	\N	32
22	32a49cfb-2276-4793-b6d5-028d32a5e2ac	3901	Zone de site construit protégé 17 LAT	ZCON17LAT	\N	39
23	4b206ea4-cf83-444f-81b6-db8f626b19ac	4101	Zone pour petites entités urbanisées 18 LAT	ZPET18LAT	\N	41
24	2e6a6a50-b604-4836-a763-c101c9a008d5	4201	Zone de desserte 18 LAT	ZROU18LAT	\N	42
25	afc45f3c-a5a6-4846-9558-0cfdbb76196d	4202	Zone ferroviaire 18 LAT	ZFER18LAT	\N	42
26	2bad5efd-1df0-4abe-90de-406f863591de	4203	Zone d'aérodrome 18 LAT	ZAER18LAT	\N	42
27	6e358508-1813-4aa3-9daf-9d654d6ae836	4301	Zone intermédiaire 18 LAT	ZINT18LAT	\N	43
28	87401dda-aae8-4ab1-b80a-3302abab3561	4401	Aire forestière 18 LAT	ZFOR18LAT	\N	44
29	84843a6d-32ae-431e-bb6c-13d0e4505c59	4402	Aire forestière sylvo-pastorale 18 LAT	ZFSY18LAT	\N	44
30	eec86a61-9cb0-449c-83c9-b490897f599e	4901	Zone militaire 18 LAT	ZFSY18LAT	\N	49
31	5b7e6037-caf7-409e-9943-4cb379ecd268	4902	Zone d'extraction et de dépôt de matériaux 18 LAT	ZEXD18LAT	\N	49
32	64f6986b-e331-4bd8-9725-7a50ee8f1598	4903	Zone de production d'énergie 18 LAT	ZENE18LAT	\N	49
33	f4189b10-8ffd-489e-a4f1-16aabe3c911a	4904	Zone de tourisme et de loisirs 18 LAT	ZTOU18LAT	\N	49
34	6bf16abc-3bb3-4e3e-87eb-953089ec2752	4905	Zone para-agricole 18 LAT	ZPAG18LAT	\N	49
35	e084d32f-dd64-4ba4-bda7-3de040978ba0	4906	Zone affectée à des besoins publics 18 LAT	ZPUB18LAT	\N	49
36	7b161617-8fc7-4303-8774-0d164a2a73ae	4907	Zone de sport d'hiver 18 LAT	ZSPO18LAT	\N	49
38	f1adadf2-4398-4d70-9435-718d1a4b4315	5101	Secteurs de protection du site bâti 17 LAT	SECTBATI	\N	51
39	2f5bcff7-764a-4ad7-ba40-668089ae179f	5201	Secteurs de protection de la nature et du paysage 17 LAT	SECTNAT	\N	52
40	aa568155-5e2b-4e6c-b929-7e43bd9d93f5	5301	Secteurs de restrictions liés aux dangers naturels	SECTDN	\N	53
41	a50d4a03-749c-4963-b0ae-4c614ceab490	5901	Secteurs de sport d'hiver 18 LAT	SECTH	\N	59
42	5961bc75-4311-46f8-9a6e-8248a38245e6	5909	Autres zones superposées	AUTRESSUP	\N	59
43	23aebc04-4a2a-4234-8b23-6f7687b366b8	6101	Périmètres des plans d'affectation légalisés	PERIMPLAN	\N	61
44	6a5562ed-7147-4883-a6f3-245484ca784b	6102	Périmètres des plans superposés	PERIMSUP	\N	61
45	2f1db344-ff85-4d91-9832-be9610538fe3	6201	Périmètres à développer par plan d'affectation	PERIMDEV	\N	62
46	6ae959e8-cf3c-4a6a-b9d4-f0920fe84fb0	6301	Périmètres avec étape d'équipement différée	PERIMETA	\N	63
47	c00451ac-a7ad-473d-9fda-0e292c74e7c9	7101	Alignement	ALIGNE	\N	71
48	850bde10-8c25-477b-b244-2ef40e5ca82b	7909	Autres contenus linéaires	AUTRELIN	\N	79
49	74aba028-0f26-4b30-afd4-48d65c67bec6	8101	Objets naturels	OBJNAT	\N	81
50	6398ed4f-0667-48e7-9a1b-6accbd53fb0c	8201	Monuments culturels	OBJCULT	\N	82
51	0a6116b5-c57d-495c-be4c-2bde2dbe08e9	8909	Autres contenus ponctuels	AUTREOBJ	\N	89
\.


--
-- TOC entry 15756 (class 0 OID 1804769348)
-- Dependencies: 3821
-- Data for Name: type_document; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.type_document (t_id, t_ili_tid, atype, disposition_document, disposition_dispositionjuridique) FROM stdin;
\.


--
-- TOC entry 15757 (class 0 OID 1804769352)
-- Dependencies: 3822
-- Data for Name: zonesuperposee; Type: TABLE DATA; Schema: normat_vd_demo; Owner: sit-admin
--

COPY normat_vd_demo.zonesuperposee (t_id, t_ili_tid, publieedepuis, statutjuridique, remarques, atype, geometrie) FROM stdin;
299	{061b1098-c808-4bfc-b146-86718b649dbe}	2020-06-19	En_cours_modification	\N	479	0103000020080800000100000005000000D6050241B46243418E600BA9EBF231419FD7021D8B634341D8BD7D9B2CFF314155ED374A79654341401418FBEDFF3141327B04D53865434103983DD4E9F13141D6050241B46243418E600BA9EBF23141
\.


--
-- TOC entry 15867 (class 0 OID 0)
-- Dependencies: 3823
-- Name: zonesuperposee_t_id_seq; Type: SEQUENCE SET; Schema: normat_vd_demo; Owner: sit-admin
--

SELECT pg_catalog.setval('normat_vd_demo.zonesuperposee_t_id_seq', 300, true);


--
-- TOC entry 15258 (class 2606 OID 1804769492)
-- Name: affectationprimaire_surfacedezones affectationprimaire_surfacedezones_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.affectationprimaire_surfacedezones
    ADD CONSTRAINT affectationprimaire_surfacedezones_pkey PRIMARY KEY (t_id);


--
-- TOC entry 15262 (class 2606 OID 1804769494)
-- Name: affectationprincipale_ch affectationprincipale_ch_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.affectationprincipale_ch
    ADD CONSTRAINT affectationprincipale_ch_pkey PRIMARY KEY (t_id);


--
-- TOC entry 15268 (class 2606 OID 1804769496)
-- Name: autresdocuments autresdocuments_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.autresdocuments
    ADD CONSTRAINT autresdocuments_pkey PRIMARY KEY (t_id);


--
-- TOC entry 15270 (class 2606 OID 1804769498)
-- Name: chcantoncode chcantoncode_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.chcantoncode
    ADD CONSTRAINT chcantoncode_pkey PRIMARY KEY (itfcode);


--
-- TOC entry 15274 (class 2606 OID 1804769500)
-- Name: contenulineaire contenulineaire_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.contenulineaire
    ADD CONSTRAINT contenulineaire_pkey PRIMARY KEY (t_id);


--
-- TOC entry 15278 (class 2606 OID 1804769502)
-- Name: contenuponctuel contenuponctuel_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.contenuponctuel
    ADD CONSTRAINT contenuponctuel_pkey PRIMARY KEY (t_id);


--
-- TOC entry 15280 (class 2606 OID 1804769504)
-- Name: dispositionjuridique dispositionjuridique_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.dispositionjuridique
    ADD CONSTRAINT dispositionjuridique_pkey PRIMARY KEY (t_id);


--
-- TOC entry 15282 (class 2606 OID 1804769506)
-- Name: document document_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.document
    ADD CONSTRAINT document_pkey PRIMARY KEY (t_id);


--
-- TOC entry 15284 (class 2606 OID 1804769508)
-- Name: forceobligatoire forceobligatoire_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.forceobligatoire
    ADD CONSTRAINT forceobligatoire_pkey PRIMARY KEY (itfcode);


--
-- TOC entry 15287 (class 2606 OID 1804769510)
-- Name: jeudedonnees jeudedonnees_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.jeudedonnees
    ADD CONSTRAINT jeudedonnees_pkey PRIMARY KEY (t_id);


--
-- TOC entry 15289 (class 2606 OID 1804769512)
-- Name: languagecode_iso639_1 languagecode_iso639_1_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.languagecode_iso639_1
    ADD CONSTRAINT languagecode_iso639_1_pkey PRIMARY KEY (itfcode);


--
-- TOC entry 15292 (class 2606 OID 1804769514)
-- Name: localiseduri localiseduri_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.localiseduri
    ADD CONSTRAINT localiseduri_pkey PRIMARY KEY (t_id);


--
-- TOC entry 15297 (class 2606 OID 1804769516)
-- Name: multilingualuri multilingualuri_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.multilingualuri
    ADD CONSTRAINT multilingualuri_pkey PRIMARY KEY (t_id);


--
-- TOC entry 15299 (class 2606 OID 1804769518)
-- Name: office office_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.office
    ADD CONSTRAINT office_pkey PRIMARY KEY (t_id);


--
-- TOC entry 15301 (class 2606 OID 1804769520)
-- Name: statutjuridique statutjuridique_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.statutjuridique
    ADD CONSTRAINT statutjuridique_pkey PRIMARY KEY (itfcode);


--
-- TOC entry 15303 (class 2606 OID 1804769522)
-- Name: t_ili2db_attrname t_ili2db_attrname_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.t_ili2db_attrname
    ADD CONSTRAINT t_ili2db_attrname_pkey PRIMARY KEY (sqlname, owner);


--
-- TOC entry 15307 (class 2606 OID 1804769524)
-- Name: t_ili2db_basket t_ili2db_basket_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_pkey PRIMARY KEY (t_id);


--
-- TOC entry 15309 (class 2606 OID 1804769526)
-- Name: t_ili2db_classname t_ili2db_classname_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.t_ili2db_classname
    ADD CONSTRAINT t_ili2db_classname_pkey PRIMARY KEY (iliname);


--
-- TOC entry 15312 (class 2606 OID 1804769528)
-- Name: t_ili2db_dataset t_ili2db_dataset_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.t_ili2db_dataset
    ADD CONSTRAINT t_ili2db_dataset_pkey PRIMARY KEY (t_id);


--
-- TOC entry 15319 (class 2606 OID 1804769530)
-- Name: t_ili2db_import_basket t_ili2db_import_basket_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.t_ili2db_import_basket
    ADD CONSTRAINT t_ili2db_import_basket_pkey PRIMARY KEY (t_id);


--
-- TOC entry 15321 (class 2606 OID 1804769532)
-- Name: t_ili2db_import_object t_ili2db_import_object_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.t_ili2db_import_object
    ADD CONSTRAINT t_ili2db_import_object_pkey PRIMARY KEY (t_id);


--
-- TOC entry 15315 (class 2606 OID 1804769534)
-- Name: t_ili2db_import t_ili2db_import_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.t_ili2db_import
    ADD CONSTRAINT t_ili2db_import_pkey PRIMARY KEY (t_id);


--
-- TOC entry 15323 (class 2606 OID 1804769536)
-- Name: t_ili2db_inheritance t_ili2db_inheritance_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.t_ili2db_inheritance
    ADD CONSTRAINT t_ili2db_inheritance_pkey PRIMARY KEY (thisclass);


--
-- TOC entry 15326 (class 2606 OID 1804769538)
-- Name: t_ili2db_model t_ili2db_model_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.t_ili2db_model
    ADD CONSTRAINT t_ili2db_model_pkey PRIMARY KEY (modelname, iliversion);


--
-- TOC entry 15328 (class 2606 OID 1804769540)
-- Name: t_ili2db_settings t_ili2db_settings_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.t_ili2db_settings
    ADD CONSTRAINT t_ili2db_settings_pkey PRIMARY KEY (tag);


--
-- TOC entry 15334 (class 2606 OID 1804769542)
-- Name: type_ct type_ct_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.type_ct
    ADD CONSTRAINT type_ct_pkey PRIMARY KEY (t_id);


--
-- TOC entry 15339 (class 2606 OID 1804769544)
-- Name: type_document type_document_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.type_document
    ADD CONSTRAINT type_document_pkey PRIMARY KEY (t_id);


--
-- TOC entry 15330 (class 2606 OID 1804769546)
-- Name: type type_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.type
    ADD CONSTRAINT type_pkey PRIMARY KEY (t_id);


--
-- TOC entry 15343 (class 2606 OID 1804769548)
-- Name: zonesuperposee zonesuperposee_pkey; Type: CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.zonesuperposee
    ADD CONSTRAINT zonesuperposee_pkey PRIMARY KEY (t_id);


--
-- TOC entry 15259 (class 1259 OID 1804769549)
-- Name: affectationprimr_srfcdznes_atype_idx; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX affectationprimr_srfcdznes_atype_idx ON normat_vd_demo.affectationprimaire_surfacedezones USING btree (atype);


--
-- TOC entry 15260 (class 1259 OID 1804769550)
-- Name: affectationprimr_srfcdznes_geometrie_idx; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX affectationprimr_srfcdznes_geometrie_idx ON normat_vd_demo.affectationprimaire_surfacedezones USING gist (geometrie);


--
-- TOC entry 15263 (class 1259 OID 1804769551)
-- Name: autresdocuments_document_dispositionjrdque_idx; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX autresdocuments_document_dispositionjrdque_idx ON normat_vd_demo.autresdocuments USING btree (document_dispositionjuridique);


--
-- TOC entry 15264 (class 1259 OID 1804769552)
-- Name: autresdocuments_document_document_idx; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX autresdocuments_document_document_idx ON normat_vd_demo.autresdocuments USING btree (document_document);


--
-- TOC entry 15265 (class 1259 OID 1804769553)
-- Name: autresdocuments_origine_dispositionjurdque_idx; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX autresdocuments_origine_dispositionjurdque_idx ON normat_vd_demo.autresdocuments USING btree (origine_dispositionjuridique);


--
-- TOC entry 15266 (class 1259 OID 1804769554)
-- Name: autresdocuments_origine_document_idx; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX autresdocuments_origine_document_idx ON normat_vd_demo.autresdocuments USING btree (origine_document);


--
-- TOC entry 15271 (class 1259 OID 1804769555)
-- Name: contenulineaire_atype_1572603058617; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX contenulineaire_atype_1572603058617 ON normat_vd_demo.contenulineaire USING btree (atype);


--
-- TOC entry 15272 (class 1259 OID 1804769556)
-- Name: contenulineaire_geometrie_1572603058634; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX contenulineaire_geometrie_1572603058634 ON normat_vd_demo.contenulineaire USING gist (geometrie);


--
-- TOC entry 15275 (class 1259 OID 1804769557)
-- Name: contenuponctuel_atype_1572603058637; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX contenuponctuel_atype_1572603058637 ON normat_vd_demo.contenuponctuel USING btree (atype);


--
-- TOC entry 15276 (class 1259 OID 1804769558)
-- Name: contenuponctuel_geometrie_1572603058651; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX contenuponctuel_geometrie_1572603058651 ON normat_vd_demo.contenuponctuel USING gist (geometrie);


--
-- TOC entry 15285 (class 1259 OID 1804769559)
-- Name: jeudedonnees_organismeresponsable_idx; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX jeudedonnees_organismeresponsable_idx ON normat_vd_demo.jeudedonnees USING btree (organismeresponsable);


--
-- TOC entry 15290 (class 1259 OID 1804769560)
-- Name: localiseduri_multilingualuri_loclsdtext_idx; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX localiseduri_multilingualuri_loclsdtext_idx ON normat_vd_demo.localiseduri USING btree (multilingualuri_localisedtext);


--
-- TOC entry 15293 (class 1259 OID 1804769561)
-- Name: multilingualuri_dispositionjuridq_txtnlgne_idx; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX multilingualuri_dispositionjuridq_txtnlgne_idx ON normat_vd_demo.multilingualuri USING btree (dispositionjuridique_texteenligne);


--
-- TOC entry 15294 (class 1259 OID 1804769562)
-- Name: multilingualuri_document_texteenligne_idx; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX multilingualuri_document_texteenligne_idx ON normat_vd_demo.multilingualuri USING btree (document_texteenligne);


--
-- TOC entry 15295 (class 1259 OID 1804769563)
-- Name: multilingualuri_office_guichetenligne_idx; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX multilingualuri_office_guichetenligne_idx ON normat_vd_demo.multilingualuri USING btree (office_guichetenligne);


--
-- TOC entry 15304 (class 1259 OID 1804769564)
-- Name: t_ili2db_attrname_sqlname_owner_key; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE UNIQUE INDEX t_ili2db_attrname_sqlname_owner_key ON normat_vd_demo.t_ili2db_attrname USING btree (sqlname, owner);


--
-- TOC entry 15305 (class 1259 OID 1804769565)
-- Name: t_ili2db_basket_dataset_idx; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX t_ili2db_basket_dataset_idx ON normat_vd_demo.t_ili2db_basket USING btree (dataset);


--
-- TOC entry 15310 (class 1259 OID 1804769566)
-- Name: t_ili2db_dataset_datasetname_key; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE UNIQUE INDEX t_ili2db_dataset_datasetname_key ON normat_vd_demo.t_ili2db_dataset USING btree (datasetname);


--
-- TOC entry 15316 (class 1259 OID 1804769567)
-- Name: t_ili2db_import_basket_basket_idx; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX t_ili2db_import_basket_basket_idx ON normat_vd_demo.t_ili2db_import_basket USING btree (basket);


--
-- TOC entry 15317 (class 1259 OID 1804769568)
-- Name: t_ili2db_import_basket_import_idx; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX t_ili2db_import_basket_import_idx ON normat_vd_demo.t_ili2db_import_basket USING btree (import);


--
-- TOC entry 15313 (class 1259 OID 1804769569)
-- Name: t_ili2db_import_dataset_idx; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX t_ili2db_import_dataset_idx ON normat_vd_demo.t_ili2db_import USING btree (dataset);


--
-- TOC entry 15324 (class 1259 OID 1804769570)
-- Name: t_ili2db_model_modelname_iliversion_key; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE UNIQUE INDEX t_ili2db_model_modelname_iliversion_key ON normat_vd_demo.t_ili2db_model USING btree (modelname, iliversion);


--
-- TOC entry 15332 (class 1259 OID 1804769571)
-- Name: type_ct_affectationprincipale_ch_idx; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX type_ct_affectationprincipale_ch_idx ON normat_vd_demo.type_ct USING btree (affectationprincipale_ch);


--
-- TOC entry 15335 (class 1259 OID 1804769572)
-- Name: type_document_atype_idx; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX type_document_atype_idx ON normat_vd_demo.type_document USING btree (atype);


--
-- TOC entry 15336 (class 1259 OID 1804769573)
-- Name: type_document_disposition_dispostnjrdque_idx; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX type_document_disposition_dispostnjrdque_idx ON normat_vd_demo.type_document USING btree (disposition_dispositionjuridique);


--
-- TOC entry 15337 (class 1259 OID 1804769574)
-- Name: type_document_disposition_document_idx; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX type_document_disposition_document_idx ON normat_vd_demo.type_document USING btree (disposition_document);


--
-- TOC entry 15331 (class 1259 OID 1804769575)
-- Name: type_type_ct_idx; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX type_type_ct_idx ON normat_vd_demo.type USING btree (type_ct);


--
-- TOC entry 15340 (class 1259 OID 1804769576)
-- Name: zonesuperposee_atype_1572601321618; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX zonesuperposee_atype_1572601321618 ON normat_vd_demo.zonesuperposee USING btree (atype);


--
-- TOC entry 15341 (class 1259 OID 1804769577)
-- Name: zonesuperposee_geometrie_1572601321635; Type: INDEX; Schema: normat_vd_demo; Owner: sit-admin
--

CREATE INDEX zonesuperposee_geometrie_1572601321635 ON normat_vd_demo.zonesuperposee USING gist (geometrie);


--
-- TOC entry 15344 (class 2606 OID 1804769578)
-- Name: affectationprimaire_surfacedezones affectationprimr_srfcdznes_atype_fkey; Type: FK CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.affectationprimaire_surfacedezones
    ADD CONSTRAINT affectationprimr_srfcdznes_atype_fkey FOREIGN KEY (atype) REFERENCES normat_vd_demo.type(t_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 15348 (class 2606 OID 1804769583)
-- Name: autresdocuments autresdocuments_document_dispositionjrdque_fkey; Type: FK CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.autresdocuments
    ADD CONSTRAINT autresdocuments_document_dispositionjrdque_fkey FOREIGN KEY (document_dispositionjuridique) REFERENCES normat_vd_demo.dispositionjuridique(t_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 15347 (class 2606 OID 1804769588)
-- Name: autresdocuments autresdocuments_document_document_fkey; Type: FK CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.autresdocuments
    ADD CONSTRAINT autresdocuments_document_document_fkey FOREIGN KEY (document_document) REFERENCES normat_vd_demo.document(t_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 15346 (class 2606 OID 1804769593)
-- Name: autresdocuments autresdocuments_origine_dispositionjurdque_fkey; Type: FK CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.autresdocuments
    ADD CONSTRAINT autresdocuments_origine_dispositionjurdque_fkey FOREIGN KEY (origine_dispositionjuridique) REFERENCES normat_vd_demo.dispositionjuridique(t_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 15345 (class 2606 OID 1804769598)
-- Name: autresdocuments autresdocuments_origine_document_fkey; Type: FK CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.autresdocuments
    ADD CONSTRAINT autresdocuments_origine_document_fkey FOREIGN KEY (origine_document) REFERENCES normat_vd_demo.document(t_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 15349 (class 2606 OID 1804769603)
-- Name: jeudedonnees jeudedonnees_organismeresponsable_fkey; Type: FK CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.jeudedonnees
    ADD CONSTRAINT jeudedonnees_organismeresponsable_fkey FOREIGN KEY (organismeresponsable) REFERENCES normat_vd_demo.office(t_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 15350 (class 2606 OID 1804769608)
-- Name: localiseduri localiseduri_multilingualuri_loclsdtext_fkey; Type: FK CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.localiseduri
    ADD CONSTRAINT localiseduri_multilingualuri_loclsdtext_fkey FOREIGN KEY (multilingualuri_localisedtext) REFERENCES normat_vd_demo.multilingualuri(t_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 15353 (class 2606 OID 1804769613)
-- Name: multilingualuri multilingualuri_dispositionjuridq_txtnlgne_fkey; Type: FK CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.multilingualuri
    ADD CONSTRAINT multilingualuri_dispositionjuridq_txtnlgne_fkey FOREIGN KEY (dispositionjuridique_texteenligne) REFERENCES normat_vd_demo.dispositionjuridique(t_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 15352 (class 2606 OID 1804769618)
-- Name: multilingualuri multilingualuri_document_texteenligne_fkey; Type: FK CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.multilingualuri
    ADD CONSTRAINT multilingualuri_document_texteenligne_fkey FOREIGN KEY (document_texteenligne) REFERENCES normat_vd_demo.document(t_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 15351 (class 2606 OID 1804769623)
-- Name: multilingualuri multilingualuri_office_guichetenligne_fkey; Type: FK CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.multilingualuri
    ADD CONSTRAINT multilingualuri_office_guichetenligne_fkey FOREIGN KEY (office_guichetenligne) REFERENCES normat_vd_demo.office(t_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 15354 (class 2606 OID 1804769628)
-- Name: t_ili2db_basket t_ili2db_basket_dataset_fkey; Type: FK CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_dataset_fkey FOREIGN KEY (dataset) REFERENCES normat_vd_demo.t_ili2db_dataset(t_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 15356 (class 2606 OID 1804769633)
-- Name: t_ili2db_import_basket t_ili2db_import_basket_basket_fkey; Type: FK CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.t_ili2db_import_basket
    ADD CONSTRAINT t_ili2db_import_basket_basket_fkey FOREIGN KEY (basket) REFERENCES normat_vd_demo.t_ili2db_basket(t_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 15355 (class 2606 OID 1804769638)
-- Name: t_ili2db_import_basket t_ili2db_import_basket_import_fkey; Type: FK CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.t_ili2db_import_basket
    ADD CONSTRAINT t_ili2db_import_basket_import_fkey FOREIGN KEY (import) REFERENCES normat_vd_demo.t_ili2db_import(t_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 15358 (class 2606 OID 1804769643)
-- Name: type_ct type_ct_affectationprincipale_ch_fkey; Type: FK CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.type_ct
    ADD CONSTRAINT type_ct_affectationprincipale_ch_fkey FOREIGN KEY (affectationprincipale_ch) REFERENCES normat_vd_demo.affectationprincipale_ch(t_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 15361 (class 2606 OID 1804769648)
-- Name: type_document type_document_atype_fkey; Type: FK CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.type_document
    ADD CONSTRAINT type_document_atype_fkey FOREIGN KEY (atype) REFERENCES normat_vd_demo.type(t_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 15360 (class 2606 OID 1804769653)
-- Name: type_document type_document_disposition_dispostnjrdque_fkey; Type: FK CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.type_document
    ADD CONSTRAINT type_document_disposition_dispostnjrdque_fkey FOREIGN KEY (disposition_dispositionjuridique) REFERENCES normat_vd_demo.dispositionjuridique(t_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 15359 (class 2606 OID 1804769658)
-- Name: type_document type_document_disposition_document_fkey; Type: FK CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.type_document
    ADD CONSTRAINT type_document_disposition_document_fkey FOREIGN KEY (disposition_document) REFERENCES normat_vd_demo.document(t_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 15357 (class 2606 OID 1804769663)
-- Name: type type_type_ct_fkey; Type: FK CONSTRAINT; Schema: normat_vd_demo; Owner: sit-admin
--

ALTER TABLE ONLY normat_vd_demo.type
    ADD CONSTRAINT type_type_ct_fkey FOREIGN KEY (type_ct) REFERENCES normat_vd_demo.type_ct(t_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 15764 (class 0 OID 0)
-- Dependencies: 89
-- Name: SCHEMA normat_vd_demo; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA normat_vd_demo FROM PUBLIC;
REVOKE ALL ON SCHEMA normat_vd_demo FROM postgres;
GRANT ALL ON SCHEMA normat_vd_demo TO postgres;
GRANT ALL ON SCHEMA normat_vd_demo TO PUBLIC;


--
-- TOC entry 15770 (class 0 OID 0)
-- Dependencies: 3788
-- Name: TABLE affectationprimaire_surfacedezones; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.affectationprimaire_surfacedezones FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.affectationprimaire_surfacedezones FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.affectationprimaire_surfacedezones TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.affectationprimaire_surfacedezones TO PUBLIC;


--
-- TOC entry 15774 (class 0 OID 0)
-- Dependencies: 3789
-- Name: TABLE affectationprincipale_ch; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.affectationprincipale_ch FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.affectationprincipale_ch FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.affectationprincipale_ch TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.affectationprincipale_ch TO PUBLIC;


--
-- TOC entry 15776 (class 0 OID 0)
-- Dependencies: 3790
-- Name: TABLE autresdocuments; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.autresdocuments FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.autresdocuments FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.autresdocuments TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.autresdocuments TO PUBLIC;


--
-- TOC entry 15777 (class 0 OID 0)
-- Dependencies: 3791
-- Name: TABLE chcantoncode; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.chcantoncode FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.chcantoncode FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.chcantoncode TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.chcantoncode TO PUBLIC;


--
-- TOC entry 15778 (class 0 OID 0)
-- Dependencies: 3792
-- Name: TABLE contenulineaire; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.contenulineaire FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.contenulineaire FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.contenulineaire TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.contenulineaire TO PUBLIC;


--
-- TOC entry 15780 (class 0 OID 0)
-- Dependencies: 3794
-- Name: TABLE contenuponctuel; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.contenuponctuel FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.contenuponctuel FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.contenuponctuel TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.contenuponctuel TO PUBLIC;


--
-- TOC entry 15792 (class 0 OID 0)
-- Dependencies: 3796
-- Name: TABLE dispositionjuridique; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.dispositionjuridique FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.dispositionjuridique FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.dispositionjuridique TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.dispositionjuridique TO PUBLIC;


--
-- TOC entry 15803 (class 0 OID 0)
-- Dependencies: 3797
-- Name: TABLE document; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.document FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.document FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.document TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.document TO PUBLIC;


--
-- TOC entry 15804 (class 0 OID 0)
-- Dependencies: 3798
-- Name: TABLE forceobligatoire; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.forceobligatoire FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.forceobligatoire FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.forceobligatoire TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.forceobligatoire TO PUBLIC;


--
-- TOC entry 15810 (class 0 OID 0)
-- Dependencies: 3799
-- Name: TABLE jeudedonnees; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.jeudedonnees FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.jeudedonnees FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.jeudedonnees TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.jeudedonnees TO PUBLIC;


--
-- TOC entry 15811 (class 0 OID 0)
-- Dependencies: 3800
-- Name: TABLE languagecode_iso639_1; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.languagecode_iso639_1 FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.languagecode_iso639_1 FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.languagecode_iso639_1 TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.languagecode_iso639_1 TO PUBLIC;


--
-- TOC entry 15816 (class 0 OID 0)
-- Dependencies: 3801
-- Name: TABLE localiseduri; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.localiseduri FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.localiseduri FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.localiseduri TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.localiseduri TO PUBLIC;


--
-- TOC entry 15821 (class 0 OID 0)
-- Dependencies: 3802
-- Name: TABLE multilingualuri; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.multilingualuri FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.multilingualuri FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.multilingualuri TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.multilingualuri TO PUBLIC;


--
-- TOC entry 15825 (class 0 OID 0)
-- Dependencies: 3803
-- Name: TABLE office; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.office FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.office FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.office TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.office TO PUBLIC;


--
-- TOC entry 15826 (class 0 OID 0)
-- Dependencies: 3804
-- Name: TABLE statutjuridique; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.statutjuridique FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.statutjuridique FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.statutjuridique TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.statutjuridique TO PUBLIC;


--
-- TOC entry 15827 (class 0 OID 0)
-- Dependencies: 3805
-- Name: TABLE t_ili2db_attrname; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_attrname FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_attrname FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_attrname TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_attrname TO PUBLIC;


--
-- TOC entry 15828 (class 0 OID 0)
-- Dependencies: 3806
-- Name: TABLE t_ili2db_basket; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_basket FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_basket FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_basket TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_basket TO PUBLIC;


--
-- TOC entry 15829 (class 0 OID 0)
-- Dependencies: 3807
-- Name: TABLE t_ili2db_classname; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_classname FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_classname FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_classname TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_classname TO PUBLIC;


--
-- TOC entry 15830 (class 0 OID 0)
-- Dependencies: 3808
-- Name: TABLE t_ili2db_column_prop; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_column_prop FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_column_prop FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_column_prop TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_column_prop TO PUBLIC;


--
-- TOC entry 15831 (class 0 OID 0)
-- Dependencies: 3809
-- Name: TABLE t_ili2db_dataset; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_dataset FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_dataset FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_dataset TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_dataset TO PUBLIC;


--
-- TOC entry 15833 (class 0 OID 0)
-- Dependencies: 3810
-- Name: TABLE t_ili2db_import; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_import FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_import FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_import TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_import TO PUBLIC;


--
-- TOC entry 15835 (class 0 OID 0)
-- Dependencies: 3811
-- Name: TABLE t_ili2db_import_basket; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_import_basket FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_import_basket FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_import_basket TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_import_basket TO PUBLIC;


--
-- TOC entry 15837 (class 0 OID 0)
-- Dependencies: 3812
-- Name: TABLE t_ili2db_import_object; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_import_object FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_import_object FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_import_object TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_import_object TO PUBLIC;


--
-- TOC entry 15838 (class 0 OID 0)
-- Dependencies: 3813
-- Name: TABLE t_ili2db_inheritance; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_inheritance FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_inheritance FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_inheritance TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_inheritance TO PUBLIC;


--
-- TOC entry 15839 (class 0 OID 0)
-- Dependencies: 3814
-- Name: TABLE t_ili2db_meta_attrs; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_meta_attrs FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_meta_attrs FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_meta_attrs TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_meta_attrs TO PUBLIC;


--
-- TOC entry 15840 (class 0 OID 0)
-- Dependencies: 3815
-- Name: TABLE t_ili2db_model; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_model FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_model FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_model TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_model TO PUBLIC;


--
-- TOC entry 15841 (class 0 OID 0)
-- Dependencies: 3816
-- Name: TABLE t_ili2db_settings; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_settings FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_settings FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_settings TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_settings TO PUBLIC;


--
-- TOC entry 15842 (class 0 OID 0)
-- Dependencies: 3817
-- Name: TABLE t_ili2db_table_prop; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_table_prop FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_table_prop FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_table_prop TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_table_prop TO PUBLIC;


--
-- TOC entry 15843 (class 0 OID 0)
-- Dependencies: 3818
-- Name: TABLE t_ili2db_trafo; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_trafo FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.t_ili2db_trafo FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_trafo TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.t_ili2db_trafo TO PUBLIC;


--
-- TOC entry 15853 (class 0 OID 0)
-- Dependencies: 3819
-- Name: TABLE type; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.type FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.type FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.type TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.type TO PUBLIC;


--
-- TOC entry 15859 (class 0 OID 0)
-- Dependencies: 3820
-- Name: TABLE type_ct; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.type_ct FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.type_ct FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.type_ct TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.type_ct TO PUBLIC;


--
-- TOC entry 15861 (class 0 OID 0)
-- Dependencies: 3821
-- Name: TABLE type_document; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.type_document FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.type_document FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.type_document TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.type_document TO PUBLIC;


--
-- TOC entry 15862 (class 0 OID 0)
-- Dependencies: 3822
-- Name: TABLE zonesuperposee; Type: ACL; Schema: normat_vd_demo; Owner: sit-admin
--

REVOKE ALL ON TABLE normat_vd_demo.zonesuperposee FROM PUBLIC;
REVOKE ALL ON TABLE normat_vd_demo.zonesuperposee FROM "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.zonesuperposee TO "sit-admin";
GRANT ALL ON TABLE normat_vd_demo.zonesuperposee TO PUBLIC;


--
-- TOC entry 14862 (class 826 OID 1804769670)
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: normat_vd_demo; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA normat_vd_demo REVOKE ALL ON TABLES  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA normat_vd_demo REVOKE ALL ON TABLES  FROM postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA normat_vd_demo GRANT ALL ON TABLES  TO PUBLIC;


-- Completed on 2020-06-02 10:53:48

--
-- PostgreSQL database dump complete
--

