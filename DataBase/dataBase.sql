PGDMP                         {            GestionDesStages    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    25037    GestionDesStages    DATABASE     �   CREATE DATABASE "GestionDesStages" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';
 "   DROP DATABASE "GestionDesStages";
                postgres    false            �            1259    25070    admin    TABLE     6   CREATE TABLE public.admin (
    id bigint NOT NULL
);
    DROP TABLE public.admin;
       public         heap    postgres    false            �            1259    25046    societe    TABLE       CREATE TABLE public.societe (
    domaine character varying(255),
    matricule_fiscale character varying(255),
    nom_societe character varying(255),
    secteur character varying(255),
    taille bigint NOT NULL,
    id bigint NOT NULL,
    url_lego character varying(255)
);
    DROP TABLE public.societe;
       public         heap    postgres    false            �            1259    25058 	   stagiaire    TABLE     �   CREATE TABLE public.stagiaire (
    urlcv character varying(255),
    url_linkedin character varying(255),
    id bigint NOT NULL
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
       public          postgres    false                      0    25070    admin 
   TABLE DATA           #   COPY public.admin (id) FROM stdin;
    public          postgres    false    218   >                 0    25046    societe 
   TABLE DATA           i   COPY public.societe (domaine, matricule_fiscale, nom_societe, secteur, taille, id, url_lego) FROM stdin;
    public          postgres    false    216   [                 0    25058 	   stagiaire 
   TABLE DATA           <   COPY public.stagiaire (urlcv, url_linkedin, id) FROM stdin;
    public          postgres    false    217   x       
          0    25038    utilisateur 
   TABLE DATA           Q   COPY public.utilisateur (id, adresse, nom, "prénom", "téléphone") FROM stdin;
    public          postgres    false    214   �                  0    0    utilisateur_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.utilisateur_seq', 1, false);
          public          postgres    false    215            x           2606    25074    admin admin_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    218            t           2606    25052    societe societe_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.societe
    ADD CONSTRAINT societe_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.societe DROP CONSTRAINT societe_pkey;
       public            postgres    false    216            v           2606    25064    stagiaire stagiaire_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.stagiaire
    ADD CONSTRAINT stagiaire_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.stagiaire DROP CONSTRAINT stagiaire_pkey;
       public            postgres    false    217            r           2606    25044    utilisateur utilisateur_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT utilisateur_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.utilisateur DROP CONSTRAINT utilisateur_pkey;
       public            postgres    false    214            y           2606    25053 #   societe fkdjxurhkv9bh01e6s5nnrx4gc7    FK CONSTRAINT     �   ALTER TABLE ONLY public.societe
    ADD CONSTRAINT fkdjxurhkv9bh01e6s5nnrx4gc7 FOREIGN KEY (id) REFERENCES public.utilisateur(id);
 M   ALTER TABLE ONLY public.societe DROP CONSTRAINT fkdjxurhkv9bh01e6s5nnrx4gc7;
       public          postgres    false    3186    216    214            {           2606    25075 !   admin fkgodqjbbtwk30kf3s0xuxklkr3    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT fkgodqjbbtwk30kf3s0xuxklkr3 FOREIGN KEY (id) REFERENCES public.utilisateur(id);
 K   ALTER TABLE ONLY public.admin DROP CONSTRAINT fkgodqjbbtwk30kf3s0xuxklkr3;
       public          postgres    false    218    214    3186            z           2606    25065 %   stagiaire fkq7yf225arediwm36e5hiy8aqw    FK CONSTRAINT     �   ALTER TABLE ONLY public.stagiaire
    ADD CONSTRAINT fkq7yf225arediwm36e5hiy8aqw FOREIGN KEY (id) REFERENCES public.utilisateur(id);
 O   ALTER TABLE ONLY public.stagiaire DROP CONSTRAINT fkq7yf225arediwm36e5hiy8aqw;
       public          postgres    false    3186    217    214                  x������ � �            x������ � �            x������ � �      
      x������ � �     