
--

CREATE TABLE public.categorie (
    id_cat integer NOT NULL,
    nom_categorie text NOT NULL,
    image_cat text
);


--
-- TOC entry 200 (class 1259 OID 50507)
-- Name: categorie_id_cat_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.categorie_id_cat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3010 (class 0 OID 0)
-- Dependencies: 200
-- Name: categorie_id_cat_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.categorie_id_cat_seq OWNED BY public.categorie.id_cat;


--
-- TOC entry 203 (class 1259 OID 50520)
-- Name: produit; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.produit (
    id_produit integer NOT NULL,
    nom_produit text NOT NULL,
    image text,
    prix_produit numeric,
    description text,
    id_cat integer
);


--
-- TOC entry 202 (class 1259 OID 50518)
-- Name: produit_id_produit_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.produit_id_produit_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3011 (class 0 OID 0)
-- Dependencies: 202
-- Name: produit_id_produit_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.produit_id_produit_seq OWNED BY public.produit.id_produit;


--
-- TOC entry 204 (class 1259 OID 50538)
-- Name: vue_produits_categories; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW public.vue_produits_categories AS
 SELECT categorie.id_cat,
    categorie.nom_categorie,
    produit.id_produit,
    produit.nom_produit,
    produit.image,
    produit.prix_produit,
    produit.description
   FROM public.categorie,
    public.produit
  WHERE (categorie.id_cat = produit.id_cat);






--
-- TOC entry 2862 (class 2604 OID 50512)
-- Name: categorie id_cat; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categorie ALTER COLUMN id_cat SET DEFAULT nextval('public.categorie_id_cat_seq'::regclass);


--
-- TOC entry 2863 (class 2604 OID 50523)
-- Name: produit id_produit; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produit ALTER COLUMN id_produit SET DEFAULT nextval('public.produit_id_produit_seq'::regclass);


--
-- TOC entry 3001 (class 0 OID 50509)
-- Dependencies: 201
-- Data for Name: categorie; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.categorie (id_cat, nom_categorie, image_cat) VALUES (2, 'Pâtisseries individuelles', NULL);
INSERT INTO public.categorie (id_cat, nom_categorie, image_cat) VALUES (1, 'Pains et viennoiseries', NULL);
INSERT INTO public.categorie (id_cat, nom_categorie, image_cat) VALUES (3, 'Tartes et gâteaux', NULL);


--
-- TOC entry 3003 (class 0 OID 50520)
-- Dependencies: 203
-- Data for Name: produit; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.produit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (10, 'Croissants nature', 'viennoiseries2.jpg', 0.50, 'Croissant', 1);
INSERT INTO public.produit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (11, 'Pains au chocolat', 'viennoiseries1.jpg', 0.50, 'Pain au chocolat traditionnels', 1);
INSERT INTO public.produit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (9, 'Eclairs au chocolat', 'patisserie2.jpg', 10.99, 'Pâtisseries pour tous les jours', 2);
INSERT INTO public.produit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (8, 'Tartelette aux fraises', 'patisserie3.jpg', 12.99, 'Pâtisserie de saison', 2);
INSERT INTO public.produit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (2, 'Gâteau festif', 'cake2.jpg', 34.59, 'Gâteau type Forêt Noire', 3);
INSERT INTO public.produit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (4, 'Bûche de Noël vanillée', 'christmas2.jpg', 21.49, 'Bûche vanille - chocolat fondant', 3);
INSERT INTO public.produit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (3, 'Bûche de Noël moka', 'christmas1.jpg', 18.49, 'Bûche roulée au moka et noix de pécan', 3);
INSERT INTO public.produit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (6, 'Gâteau de mariage', 'wedding2.jpg', 75.99, 'Pièce montée crème', 3);
INSERT INTO public.produit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (12, 'Petits choux garnis', 'patisserie1.jpg', 3.50, 'Petits choux garnis, ganache vanille', 2);
INSERT INTO public.produit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (1, 'Pains de froment', 'pain_blanc.jpg', 1.00, 'Pain blanc', 1);
INSERT INTO public.produit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (5, 'Gâteau traditionnel de Noël', 'cake2.jpg', 15.09, 'Gâteau aux fruits confits', 3);
INSERT INTO public.produit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (7, 'Gâteaux aux fraises', 'cake3.jpg', 12.99, 'Pour 8 personnes', 3);


--
-- TOC entry 3012 (class 0 OID 0)
-- Dependencies: 200
-- Name: categorie_id_cat_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.categorie_id_cat_seq', 3, true);


--
-- TOC entry 3013 (class 0 OID 0)
-- Dependencies: 202
-- Name: produit_id_produit_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.produit_id_produit_seq', 1, false);


--
-- TOC entry 2865 (class 2606 OID 50517)
-- Name: categorie categorie_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categorie
    ADD CONSTRAINT categorie_pkey PRIMARY KEY (id_cat);


--
-- TOC entry 2867 (class 2606 OID 50528)
-- Name: produit produit_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produit
    ADD CONSTRAINT produit_pkey PRIMARY KEY (id_produit);


--
-- TOC entry 2868 (class 2606 OID 50529)
-- Name: produit produit_id_cat_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produit
    ADD CONSTRAINT produit_id_cat_fkey FOREIGN KEY (id_cat) REFERENCES public.categorie(id_cat);


-- Completed on 2023-03-08 14:02:31

--
-- PostgreSQL database dump complete
--

