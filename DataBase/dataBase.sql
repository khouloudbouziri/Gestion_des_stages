PGDMP     (                    {            GestionDesStages    15.1    15.1 H    j           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            k           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            l           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            m           1262    25037    GestionDesStages    DATABASE     �   CREATE DATABASE "GestionDesStages" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';
 "   DROP DATABASE "GestionDesStages";
                postgres    false            �            1259    25070    admin    TABLE     6   CREATE TABLE public.admin (
    id bigint NOT NULL
);
    DROP TABLE public.admin;
       public         heap    postgres    false            �            1259    25202    demande_de_stage    TABLE     �   CREATE TABLE public.demande_de_stage (
    id bigint NOT NULL,
    id_stage bigint NOT NULL,
    description character varying(255)
);
 $   DROP TABLE public.demande_de_stage;
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
       public          postgres    false            �            1259    25183    offre_de_stage    TABLE     �  CREATE TABLE public.offre_de_stage (
    id bigint NOT NULL,
    id_stage bigint NOT NULL,
    environnement_technique character varying(255),
    renumere boolean,
    date_deb timestamp(6) without time zone,
    date_fin timestamp(6) without time zone,
    description character varying(255),
    location character varying(255),
    nombre_de_stagiaire integer NOT NULL,
    "profil_recherché" character varying(255),
    "travail_demandé" character varying(255),
    type character varying(255)
);
 "   DROP TABLE public.offre_de_stage;
       public         heap    postgres    false            �            1259    25125    reunion    TABLE     �   CREATE TABLE public.reunion (
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
       public         heap    postgres    false            �            1259    25143    stage    TABLE     u   CREATE TABLE public.stage (
    id_stage bigint NOT NULL,
    duree bigint NOT NULL,
    note character varying[]
);
    DROP TABLE public.stage;
       public         heap    postgres    false            �            1259    25153 	   stage_seq    SEQUENCE     s   CREATE SEQUENCE public.stage_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.stage_seq;
       public          postgres    false            �            1259    25058 	   stagiaire    TABLE     �   CREATE TABLE public.stagiaire (
    urlcv character varying(255),
    url_linkedin character varying(255),
    id bigint NOT NULL,
    id_etablissement bigint
);
    DROP TABLE public.stagiaire;
       public         heap    postgres    false            �            1259    25166    suivie    TABLE     �   CREATE TABLE public.suivie (
    id_encadrant bigint NOT NULL,
    id_stage bigint NOT NULL,
    note character varying(255)
);
    DROP TABLE public.suivie;
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
       public          postgres    false            Y          0    25070    admin 
   TABLE DATA           #   COPY public.admin (id) FROM stdin;
    public          postgres    false    218   Y       g          0    25202    demande_de_stage 
   TABLE DATA           E   COPY public.demande_de_stage (id, id_stage, description) FROM stdin;
    public          postgres    false    232   7Y       \          0    25093    departement_scolaire 
   TABLE DATA           R   COPY public.departement_scolaire (id_deps, libelle, id_etablissement) FROM stdin;
    public          postgres    false    221   TY       _          0    25114    departement_societe 
   TABLE DATA           J   COPY public.departement_societe (id_dep_societe, libelle, id) FROM stdin;
    public          postgres    false    224   qY       ^          0    25104 	   encadrant 
   TABLE DATA           5   COPY public.encadrant (id_encadrant, id) FROM stdin;
    public          postgres    false    223   �Y       Z          0    25080    etablissement 
   TABLE DATA           k   COPY public.etablissement (id_etablissement, adressee, email, fax, nome, telephonee, nom_etab) FROM stdin;
    public          postgres    false    219   �Y       f          0    25183    offre_de_stage 
   TABLE DATA           �   COPY public.offre_de_stage (id, id_stage, environnement_technique, renumere, date_deb, date_fin, description, location, nombre_de_stagiaire, "profil_recherché", "travail_demandé", type) FROM stdin;
    public          postgres    false    231   �Y       a          0    25125    reunion 
   TABLE DATA           X   COPY public.reunion (id_reunion, description, date, type, id_encadrant, id) FROM stdin;
    public          postgres    false    226   �Y       W          0    25046    societe 
   TABLE DATA           s   COPY public.societe (domaine, matricule_fiscale, nom_societe, secteur, taille, id, url_lego, url_logo) FROM stdin;
    public          postgres    false    216   Z       c          0    25143    stage 
   TABLE DATA           6   COPY public.stage (id_stage, duree, note) FROM stdin;
    public          postgres    false    228   Z       X          0    25058 	   stagiaire 
   TABLE DATA           N   COPY public.stagiaire (urlcv, url_linkedin, id, id_etablissement) FROM stdin;
    public          postgres    false    217   <Z       e          0    25166    suivie 
   TABLE DATA           >   COPY public.suivie (id_encadrant, id_stage, note) FROM stdin;
    public          postgres    false    230   YZ       U          0    25038    utilisateur 
   TABLE DATA           Q   COPY public.utilisateur (id, adresse, nom, "prénom", "téléphone") FROM stdin;
    public          postgres    false    214   vZ       n           0    0    departement_scolaire_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.departement_scolaire_seq', 1, false);
          public          postgres    false    222            o           0    0    departement_societe_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.departement_societe_seq', 1, false);
          public          postgres    false    225            p           0    0    etablissement_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.etablissement_seq', 1, false);
          public          postgres    false    220            q           0    0    reunion_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.reunion_seq', 1, false);
          public          postgres    false    227            r           0    0 	   stage_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.stage_seq', 1, false);
          public          postgres    false    229            s           0    0    utilisateur_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.utilisateur_seq', 1, false);
          public          postgres    false    215            �           2606    25074    admin admin_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    218            �           2606    25206 &   demande_de_stage demande_de_stage_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.demande_de_stage
    ADD CONSTRAINT demande_de_stage_pkey PRIMARY KEY (id, id_stage);
 P   ALTER TABLE ONLY public.demande_de_stage DROP CONSTRAINT demande_de_stage_pkey;
       public            postgres    false    232    232            �           2606    25097 .   departement_scolaire departement_scolaire_pkey 
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
       public            postgres    false    219            �           2606    25189 "   offre_de_stage offre_de_stage_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.offre_de_stage
    ADD CONSTRAINT offre_de_stage_pkey PRIMARY KEY (id, id_stage);
 L   ALTER TABLE ONLY public.offre_de_stage DROP CONSTRAINT offre_de_stage_pkey;
       public            postgres    false    231    231            �           2606    25131    reunion reunion_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.reunion
    ADD CONSTRAINT reunion_pkey PRIMARY KEY (id_reunion);
 >   ALTER TABLE ONLY public.reunion DROP CONSTRAINT reunion_pkey;
       public            postgres    false    226            �           2606    25052    societe societe_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.societe
    ADD CONSTRAINT societe_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.societe DROP CONSTRAINT societe_pkey;
       public            postgres    false    216            �           2606    25147    stage stage_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.stage
    ADD CONSTRAINT stage_pkey PRIMARY KEY (id_stage);
 :   ALTER TABLE ONLY public.stage DROP CONSTRAINT stage_pkey;
       public            postgres    false    228            �           2606    25064    stagiaire stagiaire_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.stagiaire
    ADD CONSTRAINT stagiaire_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.stagiaire DROP CONSTRAINT stagiaire_pkey;
       public            postgres    false    217            �           2606    25170    suivie suivie_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.suivie
    ADD CONSTRAINT suivie_pkey PRIMARY KEY (id_encadrant, id_stage);
 <   ALTER TABLE ONLY public.suivie DROP CONSTRAINT suivie_pkey;
       public            postgres    false    230    230            �           2606    25172 #   suivie uk_9k8l4a95ggul66yqq6p1sg3tc 
   CONSTRAINT     b   ALTER TABLE ONLY public.suivie
    ADD CONSTRAINT uk_9k8l4a95ggul66yqq6p1sg3tc UNIQUE (id_stage);
 M   ALTER TABLE ONLY public.suivie DROP CONSTRAINT uk_9k8l4a95ggul66yqq6p1sg3tc;
       public            postgres    false    230            �           2606    25191 +   offre_de_stage uk_chf32kekfw4sb5pj5gcx1dmmb 
   CONSTRAINT     j   ALTER TABLE ONLY public.offre_de_stage
    ADD CONSTRAINT uk_chf32kekfw4sb5pj5gcx1dmmb UNIQUE (id_stage);
 U   ALTER TABLE ONLY public.offre_de_stage DROP CONSTRAINT uk_chf32kekfw4sb5pj5gcx1dmmb;
       public            postgres    false    231            �           2606    25044    utilisateur utilisateur_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT utilisateur_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.utilisateur DROP CONSTRAINT utilisateur_pkey;
       public            postgres    false    214            �           2606    25138 #   reunion fk1biikx40h1k2vres4iwx3jk38    FK CONSTRAINT     �   ALTER TABLE ONLY public.reunion
    ADD CONSTRAINT fk1biikx40h1k2vres4iwx3jk38 FOREIGN KEY (id) REFERENCES public.stagiaire(id);
 M   ALTER TABLE ONLY public.reunion DROP CONSTRAINT fk1biikx40h1k2vres4iwx3jk38;
       public          postgres    false    226    3231    217            �           2606    25120 /   departement_societe fk24cvrl2k8g08v8l6w4tdurbdn    FK CONSTRAINT     �   ALTER TABLE ONLY public.departement_societe
    ADD CONSTRAINT fk24cvrl2k8g08v8l6w4tdurbdn FOREIGN KEY (id) REFERENCES public.societe(id);
 Y   ALTER TABLE ONLY public.departement_societe DROP CONSTRAINT fk24cvrl2k8g08v8l6w4tdurbdn;
       public          postgres    false    3229    216    224            �           2606    25099 0   departement_scolaire fk5y4lrocjsjjmupfj7gup0opag    FK CONSTRAINT     �   ALTER TABLE ONLY public.departement_scolaire
    ADD CONSTRAINT fk5y4lrocjsjjmupfj7gup0opag FOREIGN KEY (id_etablissement) REFERENCES public.etablissement(id_etablissement);
 Z   ALTER TABLE ONLY public.departement_scolaire DROP CONSTRAINT fk5y4lrocjsjjmupfj7gup0opag;
       public          postgres    false    3235    221    219            �           2606    25133 #   reunion fkcc52focr8ndvh578qc87oqd7l    FK CONSTRAINT     �   ALTER TABLE ONLY public.reunion
    ADD CONSTRAINT fkcc52focr8ndvh578qc87oqd7l FOREIGN KEY (id_encadrant) REFERENCES public.encadrant(id);
 M   ALTER TABLE ONLY public.reunion DROP CONSTRAINT fkcc52focr8ndvh578qc87oqd7l;
       public          postgres    false    226    3239    223            �           2606    25197 *   offre_de_stage fkctx9i9h16971pn9xvxjlx1ekk    FK CONSTRAINT     �   ALTER TABLE ONLY public.offre_de_stage
    ADD CONSTRAINT fkctx9i9h16971pn9xvxjlx1ekk FOREIGN KEY (id) REFERENCES public.societe(id);
 T   ALTER TABLE ONLY public.offre_de_stage DROP CONSTRAINT fkctx9i9h16971pn9xvxjlx1ekk;
       public          postgres    false    231    216    3229            �           2606    25053 #   societe fkdjxurhkv9bh01e6s5nnrx4gc7    FK CONSTRAINT     �   ALTER TABLE ONLY public.societe
    ADD CONSTRAINT fkdjxurhkv9bh01e6s5nnrx4gc7 FOREIGN KEY (id) REFERENCES public.utilisateur(id);
 M   ALTER TABLE ONLY public.societe DROP CONSTRAINT fkdjxurhkv9bh01e6s5nnrx4gc7;
       public          postgres    false    3227    214    216            �           2606    25178 "   suivie fke18pgar8y05173dr5w1ci43g0    FK CONSTRAINT     �   ALTER TABLE ONLY public.suivie
    ADD CONSTRAINT fke18pgar8y05173dr5w1ci43g0 FOREIGN KEY (id_encadrant) REFERENCES public.encadrant(id);
 L   ALTER TABLE ONLY public.suivie DROP CONSTRAINT fke18pgar8y05173dr5w1ci43g0;
       public          postgres    false    3239    223    230            �           2606    25109 %   encadrant fke5uaoyhb8o7wxeuifky3j6axu    FK CONSTRAINT     �   ALTER TABLE ONLY public.encadrant
    ADD CONSTRAINT fke5uaoyhb8o7wxeuifky3j6axu FOREIGN KEY (id) REFERENCES public.societe(id);
 O   ALTER TABLE ONLY public.encadrant DROP CONSTRAINT fke5uaoyhb8o7wxeuifky3j6axu;
       public          postgres    false    223    3229    216            �           2606    25192 *   offre_de_stage fkfh13j39roausnu0tipsdh66hw    FK CONSTRAINT     �   ALTER TABLE ONLY public.offre_de_stage
    ADD CONSTRAINT fkfh13j39roausnu0tipsdh66hw FOREIGN KEY (id_stage) REFERENCES public.stage(id_stage);
 T   ALTER TABLE ONLY public.offre_de_stage DROP CONSTRAINT fkfh13j39roausnu0tipsdh66hw;
       public          postgres    false    231    228    3245            �           2606    25075 !   admin fkgodqjbbtwk30kf3s0xuxklkr3    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT fkgodqjbbtwk30kf3s0xuxklkr3 FOREIGN KEY (id) REFERENCES public.utilisateur(id);
 K   ALTER TABLE ONLY public.admin DROP CONSTRAINT fkgodqjbbtwk30kf3s0xuxklkr3;
       public          postgres    false    218    3227    214            �           2606    25212 ,   demande_de_stage fkn7ptqbrwt5r9js92qj4ywwrkx    FK CONSTRAINT     �   ALTER TABLE ONLY public.demande_de_stage
    ADD CONSTRAINT fkn7ptqbrwt5r9js92qj4ywwrkx FOREIGN KEY (id) REFERENCES public.stagiaire(id);
 V   ALTER TABLE ONLY public.demande_de_stage DROP CONSTRAINT fkn7ptqbrwt5r9js92qj4ywwrkx;
       public          postgres    false    3231    232    217            �           2606    25088 %   stagiaire fkpfd9d4ldf88cxp70gv0s3csrt    FK CONSTRAINT     �   ALTER TABLE ONLY public.stagiaire
    ADD CONSTRAINT fkpfd9d4ldf88cxp70gv0s3csrt FOREIGN KEY (id_etablissement) REFERENCES public.etablissement(id_etablissement);
 O   ALTER TABLE ONLY public.stagiaire DROP CONSTRAINT fkpfd9d4ldf88cxp70gv0s3csrt;
       public          postgres    false    219    217    3235            �           2606    25065 %   stagiaire fkq7yf225arediwm36e5hiy8aqw    FK CONSTRAINT     �   ALTER TABLE ONLY public.stagiaire
    ADD CONSTRAINT fkq7yf225arediwm36e5hiy8aqw FOREIGN KEY (id) REFERENCES public.utilisateur(id);
 O   ALTER TABLE ONLY public.stagiaire DROP CONSTRAINT fkq7yf225arediwm36e5hiy8aqw;
       public          postgres    false    214    3227    217            �           2606    25173 "   suivie fkrog2rj1l4jvlvbdxeu32i8yup    FK CONSTRAINT     �   ALTER TABLE ONLY public.suivie
    ADD CONSTRAINT fkrog2rj1l4jvlvbdxeu32i8yup FOREIGN KEY (id_stage) REFERENCES public.stage(id_stage);
 L   ALTER TABLE ONLY public.suivie DROP CONSTRAINT fkrog2rj1l4jvlvbdxeu32i8yup;
       public          postgres    false    230    3245    228            �           2606    25207 ,   demande_de_stage fksw3ss8lbfuj3c73y0toq10dvj    FK CONSTRAINT     �   ALTER TABLE ONLY public.demande_de_stage
    ADD CONSTRAINT fksw3ss8lbfuj3c73y0toq10dvj FOREIGN KEY (id_stage) REFERENCES public.stage(id_stage);
 V   ALTER TABLE ONLY public.demande_de_stage DROP CONSTRAINT fksw3ss8lbfuj3c73y0toq10dvj;
       public          postgres    false    228    3245    232            Y      x������ � �      g      x������ � �      \      x������ � �      _      x������ � �      ^      x������ � �      Z      x������ � �      f      x������ � �      a      x������ � �      W      x������ � �      c      x������ � �      X      x������ � �      e      x������ � �      U      x������ � �     