toc.dat                                                                                             0000600 0004000 0002000 00000022075 14346014275 0014453 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                           z         	   penjualan    15.0    15.0                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    16595 	   penjualan    DATABASE     �   CREATE DATABASE penjualan WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE penjualan;
                postgres    false         �            1259    16611    barang    TABLE     �   CREATE TABLE public.barang (
    no integer,
    kode_barang integer NOT NULL,
    nama_barang character varying(30),
    stok_awal character varying(25),
    stok_akhir character varying(15)
);
    DROP TABLE public.barang;
       public         heap    postgres    false         �            1259    16610    barang_kode_barang_seq    SEQUENCE     �   CREATE SEQUENCE public.barang_kode_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.barang_kode_barang_seq;
       public          postgres    false    215                    0    0    barang_kode_barang_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.barang_kode_barang_seq OWNED BY public.barang.kode_barang;
          public          postgres    false    214         �            1259    16633    orderan    TABLE       CREATE TABLE public.orderan (
    no integer,
    kode_orderan integer NOT NULL,
    kode_pelanggan integer,
    kode_barang integer,
    jumlah_orderan integer,
    harga_jual integer,
    harga_beli integer,
    total_harga integer,
    tanggal_orderan date
);
    DROP TABLE public.orderan;
       public         heap    postgres    false         �            1259    16632    orderan_kode_orderan_seq    SEQUENCE     �   CREATE SEQUENCE public.orderan_kode_orderan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.orderan_kode_orderan_seq;
       public          postgres    false    219                    0    0    orderan_kode_orderan_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.orderan_kode_orderan_seq OWNED BY public.orderan.kode_orderan;
          public          postgres    false    218         �            1259    16618 	   pelanggan    TABLE     �   CREATE TABLE public.pelanggan (
    no integer,
    kode_pelanggan integer NOT NULL,
    phone character varying(30),
    nama_pelanggan character varying(20),
    alamat character varying(50)
);
    DROP TABLE public.pelanggan;
       public         heap    postgres    false         �            1259    16617    pelanggan_kode_pelanggan_seq    SEQUENCE     �   CREATE SEQUENCE public.pelanggan_kode_pelanggan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.pelanggan_kode_pelanggan_seq;
       public          postgres    false    217                    0    0    pelanggan_kode_pelanggan_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.pelanggan_kode_pelanggan_seq OWNED BY public.pelanggan.kode_pelanggan;
          public          postgres    false    216         �            1259    16640 
   pembayaran    TABLE     �   CREATE TABLE public.pembayaran (
    no integer,
    no_pembayaran integer NOT NULL,
    kode_orderan integer,
    total_bayar integer,
    tanggal_orderan date,
    keterangan character varying(50)
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false         �            1259    16639    pembayaran_no_pembayaran_seq    SEQUENCE     �   CREATE SEQUENCE public.pembayaran_no_pembayaran_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.pembayaran_no_pembayaran_seq;
       public          postgres    false    221                    0    0    pembayaran_no_pembayaran_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.pembayaran_no_pembayaran_seq OWNED BY public.pembayaran.no_pembayaran;
          public          postgres    false    220         t           2604    16614    barang kode_barang    DEFAULT     x   ALTER TABLE ONLY public.barang ALTER COLUMN kode_barang SET DEFAULT nextval('public.barang_kode_barang_seq'::regclass);
 A   ALTER TABLE public.barang ALTER COLUMN kode_barang DROP DEFAULT;
       public          postgres    false    215    214    215         v           2604    16636    orderan kode_orderan    DEFAULT     |   ALTER TABLE ONLY public.orderan ALTER COLUMN kode_orderan SET DEFAULT nextval('public.orderan_kode_orderan_seq'::regclass);
 C   ALTER TABLE public.orderan ALTER COLUMN kode_orderan DROP DEFAULT;
       public          postgres    false    218    219    219         u           2604    16621    pelanggan kode_pelanggan    DEFAULT     �   ALTER TABLE ONLY public.pelanggan ALTER COLUMN kode_pelanggan SET DEFAULT nextval('public.pelanggan_kode_pelanggan_seq'::regclass);
 G   ALTER TABLE public.pelanggan ALTER COLUMN kode_pelanggan DROP DEFAULT;
       public          postgres    false    217    216    217         w           2604    16643    pembayaran no_pembayaran    DEFAULT     �   ALTER TABLE ONLY public.pembayaran ALTER COLUMN no_pembayaran SET DEFAULT nextval('public.pembayaran_no_pembayaran_seq'::regclass);
 G   ALTER TABLE public.pembayaran ALTER COLUMN no_pembayaran DROP DEFAULT;
       public          postgres    false    220    221    221                   0    16611    barang 
   TABLE DATA           U   COPY public.barang (no, kode_barang, nama_barang, stok_awal, stok_akhir) FROM stdin;
    public          postgres    false    215       3343.dat           0    16633    orderan 
   TABLE DATA           �   COPY public.orderan (no, kode_orderan, kode_pelanggan, kode_barang, jumlah_orderan, harga_jual, harga_beli, total_harga, tanggal_orderan) FROM stdin;
    public          postgres    false    219       3347.dat           0    16618 	   pelanggan 
   TABLE DATA           V   COPY public.pelanggan (no, kode_pelanggan, phone, nama_pelanggan, alamat) FROM stdin;
    public          postgres    false    217       3345.dat           0    16640 
   pembayaran 
   TABLE DATA           o   COPY public.pembayaran (no, no_pembayaran, kode_orderan, total_bayar, tanggal_orderan, keterangan) FROM stdin;
    public          postgres    false    221       3349.dat             0    0    barang_kode_barang_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.barang_kode_barang_seq', 1, false);
          public          postgres    false    214         !           0    0    orderan_kode_orderan_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.orderan_kode_orderan_seq', 1, false);
          public          postgres    false    218         "           0    0    pelanggan_kode_pelanggan_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.pelanggan_kode_pelanggan_seq', 1, false);
          public          postgres    false    216         #           0    0    pembayaran_no_pembayaran_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.pembayaran_no_pembayaran_seq', 1, false);
          public          postgres    false    220         y           2606    16616    barang barang_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (kode_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    215         }           2606    16638    orderan orderan_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.orderan
    ADD CONSTRAINT orderan_pkey PRIMARY KEY (kode_orderan);
 >   ALTER TABLE ONLY public.orderan DROP CONSTRAINT orderan_pkey;
       public            postgres    false    219         {           2606    16623    pelanggan pelanggan_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (kode_pelanggan);
 B   ALTER TABLE ONLY public.pelanggan DROP CONSTRAINT pelanggan_pkey;
       public            postgres    false    217                    2606    16645    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (no_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    221                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3343.dat                                                                                            0000600 0004000 0002000 00000000535 14346014275 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	5550	Loose powder	24	12
2	5551	Foundation	20	10
3	5552	BB cream	30	15
4	5553	Lip stick	14	7
5	5554	Lip cream	60	30
6	5555	Lip balm	16	8
7	5556	Lip tint	12	6
8	5557	Pensil alis	80	40
9	5558	Eyeshadow	10	5
10	5559	Blush on	15	1
11	5560	Maskara	50	25
12	5561	Highlighter	36	12
13	5562	Bronzer	45	10
14	5563	Eyeliner	20	7
15	5564	Concealer	35	15
\.


                                                                                                                                                                   3347.dat                                                                                            0000600 0004000 0002000 00000001331 14346014275 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2520	2021	5550	5	20000	15000	75000	2022-12-01
2	2521	2022	5551	2	25000	30000	60000	2022-12-02
3	2522	2023	5552	4	20000	15000	60000	2022-12-03
4	2523	2024	5553	6	10000	5000	30000	2022-12-04
5	2524	2025	5554	3	30000	25000	75000	2022-12-05
6	2525	2026	5555	1	25000	15000	15000	2022-12-06
7	2526	2027	5556	2	30000	20000	40000	2022-12-07
8	2527	2028	5557	9	15000	10000	90000	2022-12-08
9	2528	2029	5558	5	20000	10000	50000	2022-12-09
10	2529	2030	5559	7	1000	5000	35000	2022-12-10
11	2530	2031	5560	2	50000	60000	120000	2022-12-11
12	2531	2032	5561	1	15000	10000	10000	2022-12-12
13	2532	2033	5562	3	30000	25000	75000	2022-12-13
14	2533	2034	5563	4	20000	15000	60000	2022-12-14
15	2534	2035	5564	8	15000	10000	80000	2022-12-15
\.


                                                                                                                                                                                                                                                                                                       3345.dat                                                                                            0000600 0004000 0002000 00000001012 14346014275 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2021	089818606277	PUTRI	WONOMULYO
2	2022	081234677859	SOPHIA	MAKASSAR
3	2023	082445112345	MEY	BALI
4	2024	089778111231	DHEA	POLEWALI
5	2025	089801121777	KHEZIA	MAJENE
6	2026	081113721899	DITA	MAROS
7	2027	082360200133	NURDIANA	PANGKEP
8	2028	089009567455	VINA	SIDRAP
9	2029	085707231126	FANI	KALIMANTAN
10	2030	081211352212	NECKLIN	BANDUNG
11	2031	081788909003	AYU	BOGOR
12	2032	085255113213	AJENG	SURABAYA
13	2033	089002356721	CLARISA	JAKARTA
14	2034	081111988765	MARLINA	BARRU
15	2035	082919606722	MARISSA	MAMASA
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      3349.dat                                                                                            0000600 0004000 0002000 00000001067 14346014275 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	250010	2520	75000	2022-12-01	lunas
2	250011	2521	60000	2022-12-02	lunas
3	250012	2522	60000	2022-12-03	lunas
4	250013	2523	30000	2022-12-04	lunas
5	250014	2524	75000	2011-12-05	lunas
6	250015	2525	15000	2022-12-06	lunas
7	250016	2526	40000	2022-12-07	lunas
8	250017	2527	90000	2022-12-08	lunas
9	250018	2528	50000	2022-12-09	lunas
10	250019	2529	35000	2022-12-10	lunas
11	250020	2530	120000	2022-12-11	lunas
12	250021	2531	10000	2011-12-12	lunas
13	250022	2532	75000	2022-12-13	lunas
14	250023	2533	60000	2022-12-14	lunas
15	250024	2534	80000	2022-12-15	lunas
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                         restore.sql                                                                                         0000600 0004000 0002000 00000020050 14346014275 0015367 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE penjualan;
--
-- Name: penjualan; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE penjualan WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';


ALTER DATABASE penjualan OWNER TO postgres;

\connect penjualan

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: barang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.barang (
    no integer,
    kode_barang integer NOT NULL,
    nama_barang character varying(30),
    stok_awal character varying(25),
    stok_akhir character varying(15)
);


ALTER TABLE public.barang OWNER TO postgres;

--
-- Name: barang_kode_barang_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.barang_kode_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.barang_kode_barang_seq OWNER TO postgres;

--
-- Name: barang_kode_barang_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.barang_kode_barang_seq OWNED BY public.barang.kode_barang;


--
-- Name: orderan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orderan (
    no integer,
    kode_orderan integer NOT NULL,
    kode_pelanggan integer,
    kode_barang integer,
    jumlah_orderan integer,
    harga_jual integer,
    harga_beli integer,
    total_harga integer,
    tanggal_orderan date
);


ALTER TABLE public.orderan OWNER TO postgres;

--
-- Name: orderan_kode_orderan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orderan_kode_orderan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orderan_kode_orderan_seq OWNER TO postgres;

--
-- Name: orderan_kode_orderan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orderan_kode_orderan_seq OWNED BY public.orderan.kode_orderan;


--
-- Name: pelanggan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pelanggan (
    no integer,
    kode_pelanggan integer NOT NULL,
    phone character varying(30),
    nama_pelanggan character varying(20),
    alamat character varying(50)
);


ALTER TABLE public.pelanggan OWNER TO postgres;

--
-- Name: pelanggan_kode_pelanggan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pelanggan_kode_pelanggan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pelanggan_kode_pelanggan_seq OWNER TO postgres;

--
-- Name: pelanggan_kode_pelanggan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pelanggan_kode_pelanggan_seq OWNED BY public.pelanggan.kode_pelanggan;


--
-- Name: pembayaran; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pembayaran (
    no integer,
    no_pembayaran integer NOT NULL,
    kode_orderan integer,
    total_bayar integer,
    tanggal_orderan date,
    keterangan character varying(50)
);


ALTER TABLE public.pembayaran OWNER TO postgres;

--
-- Name: pembayaran_no_pembayaran_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pembayaran_no_pembayaran_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pembayaran_no_pembayaran_seq OWNER TO postgres;

--
-- Name: pembayaran_no_pembayaran_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pembayaran_no_pembayaran_seq OWNED BY public.pembayaran.no_pembayaran;


--
-- Name: barang kode_barang; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barang ALTER COLUMN kode_barang SET DEFAULT nextval('public.barang_kode_barang_seq'::regclass);


--
-- Name: orderan kode_orderan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orderan ALTER COLUMN kode_orderan SET DEFAULT nextval('public.orderan_kode_orderan_seq'::regclass);


--
-- Name: pelanggan kode_pelanggan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelanggan ALTER COLUMN kode_pelanggan SET DEFAULT nextval('public.pelanggan_kode_pelanggan_seq'::regclass);


--
-- Name: pembayaran no_pembayaran; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pembayaran ALTER COLUMN no_pembayaran SET DEFAULT nextval('public.pembayaran_no_pembayaran_seq'::regclass);


--
-- Data for Name: barang; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.barang (no, kode_barang, nama_barang, stok_awal, stok_akhir) FROM stdin;
\.
COPY public.barang (no, kode_barang, nama_barang, stok_awal, stok_akhir) FROM '$$PATH$$/3343.dat';

--
-- Data for Name: orderan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orderan (no, kode_orderan, kode_pelanggan, kode_barang, jumlah_orderan, harga_jual, harga_beli, total_harga, tanggal_orderan) FROM stdin;
\.
COPY public.orderan (no, kode_orderan, kode_pelanggan, kode_barang, jumlah_orderan, harga_jual, harga_beli, total_harga, tanggal_orderan) FROM '$$PATH$$/3347.dat';

--
-- Data for Name: pelanggan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pelanggan (no, kode_pelanggan, phone, nama_pelanggan, alamat) FROM stdin;
\.
COPY public.pelanggan (no, kode_pelanggan, phone, nama_pelanggan, alamat) FROM '$$PATH$$/3345.dat';

--
-- Data for Name: pembayaran; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pembayaran (no, no_pembayaran, kode_orderan, total_bayar, tanggal_orderan, keterangan) FROM stdin;
\.
COPY public.pembayaran (no, no_pembayaran, kode_orderan, total_bayar, tanggal_orderan, keterangan) FROM '$$PATH$$/3349.dat';

--
-- Name: barang_kode_barang_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.barang_kode_barang_seq', 1, false);


--
-- Name: orderan_kode_orderan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orderan_kode_orderan_seq', 1, false);


--
-- Name: pelanggan_kode_pelanggan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pelanggan_kode_pelanggan_seq', 1, false);


--
-- Name: pembayaran_no_pembayaran_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pembayaran_no_pembayaran_seq', 1, false);


--
-- Name: barang barang_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (kode_barang);


--
-- Name: orderan orderan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orderan
    ADD CONSTRAINT orderan_pkey PRIMARY KEY (kode_orderan);


--
-- Name: pelanggan pelanggan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (kode_pelanggan);


--
-- Name: pembayaran pembayaran_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (no_pembayaran);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        