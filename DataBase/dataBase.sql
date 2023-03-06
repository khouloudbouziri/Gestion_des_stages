PGDMP                         {            GestionDesStages    15.1    15.1 2    B           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            C           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            D           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            E           1262    25037    GestionDesStages    DATABASE     �   CREATE DATABASE "GestionDesStages" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';
 "   DROP DATABASE "GestionDesStages";
                postgres    false            �            1259    25070    admin    TABLE     6   CREATE TABLE public.admin (
    id bigint NOT NULL
);
    DROP TABLE public.admin;
       public         heap    postgres    false            �            1259    25093    departement_scolaire    TABLE     �   CREATE TABLE public.departement_scolaire (
    id_deps bigint NOT NULL,
    libelle character varying(255),
    id_etablissement bigint
);
 (   DROP TABLE public.departement_scolaire;
       public         heap    postgres    false            �            1259    25098    departement_scolaire_seq    SEQUENCE     �   CREATE SEQUENCE public.departement_scolaire_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.departement_scolaire_seq;
       public          postgres    false            �            1259    25114    departement_societe    TABLE     �   CREATE TABLE public.departement_societe (
    id_dep_societe bigint NOT NULL,
    libelle character varying(255),
    id bigint
);
 '   DROP TABLE public.departement_societe;
       public         heap    postgres    false            �            1259    25119    departement_societe_seq    SEQUENCE     �   CREATE SEQUENCE public.departement_societe_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.departement_societe_seq;
       public          postgres    false            �            1259    25104 	   encadrant    TABLE     \   CREATE TABLE public.encadrant (
    id_encadrant bigint NOT NULL,
    id bigint NOT NULL
);
    DROP TABLE public.encadrant;
       public         heap    postgres    false            �            1259    25080    etablissement    TABLE        CREATE TABLE public.etablissement (
    id_etablissement bigint NOT NULL,
    adressee character varying(255),
    email character varying(255),
    fax character varying(255),
    nome character varying(255),
    telephonee character varying(255),
    nom_etab character varying(255)
);
 !   DROP TABLE public.etablissement;
       public         heap    postgres    false            �            1259    25087    etablissement_seq    SEQUENCE     {   CREATE SEQUENCE public.etablissement_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.etablissement_seq;
       public          postgres    false            �            1259    25125    reunion    TABLE     �   CREATE TABLE public.reunion (
    id_reunion bigint NOT NULL,
    description character varying(255),
    date timestamp(6) without time zone,
    type character varying(255),
    id_encadrant bigint,
    id bigint
);
    DROP TABLE public.reunion;
       public         heap    postgres    false            �            1259    25132    reunion_seq    SEQUENCE     u   CREATE SEQUENCE public.reunion_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.reunion_seq;
       public          postgres    false            �            1259    25046    societe    TABLE     <  CREATE TABLE public.societe (
    domaine character varying(255),
    matricule_fiscale character varying(255),
    nom_societe character varying(255),
    secteur character varying(255),
    taille bigint NOT NULL,
    id bigint NOT NULL,
    url_lego character varying(255),
    url_logo character varying(255)
);
    DROP TABLE public.societe;
       public         heap    postgres    false            �            1259    25058 	   stagiaire    TABLE     �   CREATE TABLE public.stagiaire (
    urlcv character varying(255),
    url_linkedin character varying(255),
    id bigint NOT NULL,
    id_etablissement bigint
);
    DROP TABLE public.stagiaire;
       public         heap    postgres    false            �            1259    25038    utilisateur    TABLE     �   CREATE TABLE public.utilisateur (
    id bigint NOT NULL,
    adresse character varying(255),
    nom character varying(255),
    "prénom" character varying(255),
    "téléphone" character varying(255)
);
    DROP TABLE public.utilisateur;
       public         heap    postgres    false            �            1259    25045    utilisateur_seq    SEQUENCE     y   CREATE SEQUENCE public.utilisateur_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.utilisateur_seq;
       public          postgres    false            6          0    25070    admin 
   TABLE DATA           #   COPY public.admin (id) FROM stdin;
    public          postgres    false    218   �;       9          0    25093    departement_scolaire 
   TABLE DATA           R   COPY public.departement_scolaire (id_deps, libelle, id_etablissement) FROM stdin;
    public          postgres    false    221   �;       <          0    25114    departement_societe 
   TABLE DATA           J   COPY public.departement_societe (id_dep_societe, libelle, id) FROM stdin;
    public          postgres    false    224   �;       ;          0    25104 	   encadrant 
   TABLE DATA           5   COPY public.encadrant (id_encadrant, id) FROM stdin;
    public          postgres    false    223   <       7          0    25080    etablissement 
   TABLE DATA           k   COPY public.etablissement (id_etablissement, adressee, email, fax, nome, telephonee, nom_etab) FROM stdin;
    public          postgres    false    219   <       >          0    25125    reunion 
   TABLE DATA           X   COPY public.reunion (id_reunion, description, date, type, id_encadrant, id) FROM stdin;
    public          postgres    false    226   ;<       4          0    25046    societe 
   TABLE DATA           s   COPY public.societe (domaine, matricule_fiscale, nom_societe, secteur, taille, id, url_lego, url_logo) FROM stdin;
    public          postgres    false    216   X<       5          0    25058 	   stagiaire 
   TABLE DATA           N   COPY public.stagiaire (urlcv, url_linkedin, id, id_etablissement) FROM stdin;
    public          postgres    false    217   u<       2          0    25038    utilisateur 
   TABLE DATA           Q   COPY public.utilisateur (id, adresse, nom, "prénom", "téléphone") FROM stdin;
    public          postgres    false    214   �<       F           0    0    departement_scolaire_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.departement_scolaire_seq', 1, false);
          public          postgres    false    222            G           0    0    departement_societe_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.departement_societe_seq', 1, false);
          public          postgres    false    225            H           0    0    etablissement_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.etablissement_seq', 1, false);
          public          postgres    false    220            I           0    0    reunion_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.reunion_seq', 1, false);
          public          postgres    false    227            J           0    0    utilisateur_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.utilisateur_seq', 1, false);
          public          postgres    false    215            �           2606    25074    admin admin_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    218            �           2606    25097 .   departement_scolaire departement_scolaire_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.departement_scolaire
    ADD CONSTRAINT departement_scolaire_pkey PRIMARY KEY (id_deps);
 X   ALTER TABLE ONLY public.departement_scolaire DROP CONSTRAINT departement_scolaire_pkey;
       public            postgres    false    221            �           2606    25118 ,   departement_societe departement_societe_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.departement_societe
    ADD CONSTRAINT departement_societe_pkey PRIMARY KEY (id_dep_societe);
 V   ALTER TABLE ONLY public.departement_societe DROP CONSTRAINT departement_societe_pkey;
       public            postgres    false    224            �           2606    25108    encadrant encadrant_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.encadrant
    ADD CONSTRAINT encadrant_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.encadrant DROP CONSTRAINT encadrant_pkey;
       public            postgres    false    223            �           2606    25086     etablissement etablissement_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.etablissement
    ADD CONSTRAINT etablissement_pkey PRIMARY KEY (id_etablissement);
 J   ALTER TABLE ONLY public.etablissement DROP CONSTRAINT etablissement_pkey;
       public            postgres    false    219            �           2606    25131    reunion reunion_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.reunion
    ADD CONSTRAINT reunion_pkey PRIMARY KEY (id_reunion);
 >   ALTER TABLE ONLY public.reunion DROP CONSTRAINT reunion_pkey;
       public            postgres    false    226            �           2606    25052    societe societe_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.societe
    ADD CONSTRAINT societe_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.societe DROP CONSTRAINT societe_pkey;
       public            postgres    false    216            �           2606    25064    stagiaire stagiaire_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.stagiaire
    ADD CONSTRAINT stagiaire_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.stagiaire DROP CONSTRAINT stagiaire_pkey;
       public            postgres    false    217            �           2606    25044    utilisateur utilisateur_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT utilisateur_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.utilisateur DROP CONSTRAINT utilisateur_pkey;
       public            postgres    false    214            �           2606    25138 #   reunion fk1biikx40h1k2vres4iwx3jk38    FK CONSTRAINT     �   ALTER TABLE ONLY public.reunion
    ADD CONSTRAINT fk1biikx40h1k2vres4iwx3jk38 FOREIGN KEY (id) REFERENCES public.stagiaire(id);
 M   ALTER TABLE ONLY public.reunion DROP CONSTRAINT fk1biikx40h1k2vres4iwx3jk38;
       public          postgres    false    217    226    3214            �           2606    25120 /   departement_societe fk24cvrl2k8g08v8l6w4tdurbdn    FK CONSTRAINT     �   ALTER TABLE ONLY public.departement_societe
    ADD CONSTRAINT fk24cvrl2k8g08v8l6w4tdurbdn FOREIGN KEY (id) REFERENCES public.societe(id);
 Y   ALTER TABLE ONLY public.departement_societe DROP CONSTRAINT fk24cvrl2k8g08v8l6w4tdurbdn;
       public          postgres    false    3212    216    224            �           2606    25099 0   departement_scolaire fk5y4lrocjsjjmupfj7gup0opag    FK CONSTRAINT     �   ALTER TABLE ONLY public.departement_scolaire
    ADD CONSTRAINT fk5y4lrocjsjjmupfj7gup0opag FOREIGN KEY (id_etablissement) REFERENCES public.etablissement(id_etablissement);
 Z   ALTER TABLE ONLY public.departement_scolaire DROP CONSTRAINT fk5y4lrocjsjjmupfj7gup0opag;
       public          postgres    false    3218    221    219            �           2606    25133 #   reunion fkcc52focr8ndvh578qc87oqd7l    FK CONSTRAINT     �   ALTER TABLE ONLY public.reunion
    ADD CONSTRAINT fkcc52focr8ndvh578qc87oqd7l FOREIGN KEY (id_encadrant) REFERENCES public.encadrant(id);
 M   ALTER TABLE ONLY public.reunion DROP CONSTRAINT fkcc52focr8ndvh578qc87oqd7l;
       public          postgres    false    226    223    3222            �           2606    25053 #   societe fkdjxurhkv9bh01e6s5nnrx4gc7    FK CONSTRAINT     �   ALTER TABLE ONLY public.societe
    ADD CONSTRAINT fkdjxurhkv9bh01e6s5nnrx4gc7 FOREIGN KEY (id) REFERENCES public.utilisateur(id);
 M   ALTER TABLE ONLY public.societe DROP CONSTRAINT fkdjxurhkv9bh01e6s5nnrx4gc7;
       public          postgres    false    3210    216    214            �           2606    25109 %   encadrant fke5uaoyhb8o7wxeuifky3j6axu    FK CONSTRAINT     �   ALTER TABLE ONLY public.encadrant
    ADD CONSTRAINT fke5uaoyhb8o7wxeuifky3j6axu FOREIGN KEY (id) REFERENCES public.societe(id);
 O   ALTER TABLE ONLY public.encadrant DROP CONSTRAINT fke5uaoyhb8o7wxeuifky3j6axu;
       public          postgres    false    216    3212    223            �           2606    25075 !   admin fkgodqjbbtwk30kf3s0xuxklkr3    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT fkgodqjbbtwk30kf3s0xuxklkr3 FOREIGN KEY (id) REFERENCES public.utilisateur(id);
 K   ALTER TABLE ONLY public.admin DROP CONSTRAINT fkgodqjbbtwk30kf3s0xuxklkr3;
       public          postgres    false    214    218    3210            �           2606    25088 %   stagiaire fkpfd9d4ldf88cxp70gv0s3csrt    FK CONSTRAINT     �   ALTER TABLE ONLY public.stagiaire
    ADD CONSTRAINT fkpfd9d4ldf88cxp70gv0s3csrt FOREIGN KEY (id_etablissement) REFERENCES public.etablissement(id_etablissement);
 O   ALTER TABLE ONLY public.stagiaire DROP CONSTRAINT fkpfd9d4ldf88cxp70gv0s3csrt;
       public          postgres    false    217    3218    219            �           2606    25065 %   stagiaire fkq7yf225arediwm36e5hiy8aqw    FK CONSTRAINT     �   ALTER TABLE ONLY public.stagiaire
    ADD CONSTRAINT fkq7yf225arediwm36e5hiy8aqw FOREIGN KEY (id) REFERENCES public.utilisateur(id);
 O   ALTER TABLE ONLY public.stagiaire DROP CONSTRAINT fkq7yf225arediwm36e5hiy8aqw;
       public          postgres    false    217    214    3210            6      x������ � �      9      x������ � �      <      x������ � �      ;      x������ � �      7      x������ � �      >      x������ � �      4      x������ � �      5      x������ � �      2      x������ � �     