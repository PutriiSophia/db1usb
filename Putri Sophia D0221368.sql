PGDMP          6        	    
    z            tugasku    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16424    tugasku    DATABASE     ~   CREATE DATABASE tugasku WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE tugasku;
                postgres    false            �            1259    16440    dosen    TABLE     �   CREATE TABLE public.dosen (
    pengajar character varying(90),
    matakuliah character varying(80),
    kode integer NOT NULL
);
    DROP TABLE public.dosen;
       public         heap    postgres    false            �            1259    16439    dosen_kode_seq    SEQUENCE     �   CREATE SEQUENCE public.dosen_kode_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.dosen_kode_seq;
       public          postgres    false    219                       0    0    dosen_kode_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.dosen_kode_seq OWNED BY public.dosen.kode;
          public          postgres    false    218            �            1259    16426 	   mahasiswi    TABLE     ~   CREATE TABLE public.mahasiswi (
    nim integer NOT NULL,
    nama character varying(90),
    alamat character varying(80)
);
    DROP TABLE public.mahasiswi;
       public         heap    postgres    false            �            1259    16425    mahasiswi_nim_seq    SEQUENCE     �   CREATE SEQUENCE public.mahasiswi_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.mahasiswi_nim_seq;
       public          postgres    false    215                       0    0    mahasiswi_nim_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.mahasiswi_nim_seq OWNED BY public.mahasiswi.nim;
          public          postgres    false    214            �            1259    16433 
   matakuliah    TABLE     �   CREATE TABLE public.matakuliah (
    matkul character varying(70),
    waktu character varying(60),
    sks integer NOT NULL
);
    DROP TABLE public.matakuliah;
       public         heap    postgres    false            �            1259    16432    matakuliah_sks_seq    SEQUENCE     �   CREATE SEQUENCE public.matakuliah_sks_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.matakuliah_sks_seq;
       public          postgres    false    217                       0    0    matakuliah_sks_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.matakuliah_sks_seq OWNED BY public.matakuliah.sks;
          public          postgres    false    216            q           2604    16443 
   dosen kode    DEFAULT     h   ALTER TABLE ONLY public.dosen ALTER COLUMN kode SET DEFAULT nextval('public.dosen_kode_seq'::regclass);
 9   ALTER TABLE public.dosen ALTER COLUMN kode DROP DEFAULT;
       public          postgres    false    218    219    219            o           2604    16429    mahasiswi nim    DEFAULT     n   ALTER TABLE ONLY public.mahasiswi ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswi_nim_seq'::regclass);
 <   ALTER TABLE public.mahasiswi ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    214    215    215            p           2604    16436    matakuliah sks    DEFAULT     p   ALTER TABLE ONLY public.matakuliah ALTER COLUMN sks SET DEFAULT nextval('public.matakuliah_sks_seq'::regclass);
 =   ALTER TABLE public.matakuliah ALTER COLUMN sks DROP DEFAULT;
       public          postgres    false    217    216    217                      0    16440    dosen 
   TABLE DATA           ;   COPY public.dosen (pengajar, matakuliah, kode) FROM stdin;
    public          postgres    false    219   >                 0    16426 	   mahasiswi 
   TABLE DATA           6   COPY public.mahasiswi (nim, nama, alamat) FROM stdin;
    public          postgres    false    215   �       	          0    16433 
   matakuliah 
   TABLE DATA           8   COPY public.matakuliah (matkul, waktu, sks) FROM stdin;
    public          postgres    false    217                     0    0    dosen_kode_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.dosen_kode_seq', 1, false);
          public          postgres    false    218                       0    0    mahasiswi_nim_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.mahasiswi_nim_seq', 1, false);
          public          postgres    false    214                       0    0    matakuliah_sks_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.matakuliah_sks_seq', 1, false);
          public          postgres    false    216            w           2606    16445    dosen dosen_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.dosen
    ADD CONSTRAINT dosen_pkey PRIMARY KEY (kode);
 :   ALTER TABLE ONLY public.dosen DROP CONSTRAINT dosen_pkey;
       public            postgres    false    219            s           2606    16431    mahasiswi mahasiswi_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mahasiswi
    ADD CONSTRAINT mahasiswi_pkey PRIMARY KEY (nim);
 B   ALTER TABLE ONLY public.mahasiswi DROP CONSTRAINT mahasiswi_pkey;
       public            postgres    false    215            u           2606    16438    matakuliah matakuliah_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.matakuliah
    ADD CONSTRAINT matakuliah_pkey PRIMARY KEY (sks);
 D   ALTER TABLE ONLY public.matakuliah DROP CONSTRAINT matakuliah_pkey;
       public            postgres    false    217               c   x��,�M,�S*�y���ޜ�f�F��\��
����
��E��ŕ���@9��sFbfQ��_i��g^qb^&g@jnQ~zQ"����$NCCcc��=... �         U   x�34446��(-)�T�/��L��L�OIL��22226���--�L,J�t�O�/�2sN�L��ļL΀����ĜL�=... ů�      	   L   x�sJ,�,VpI,I�HL��4�rJ�H,NT��KO/�,��L�K�4�r��JLJ,R���KM,��/J�4����� ��     