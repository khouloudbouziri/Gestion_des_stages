PGDMP     ,                    {            GestionDesStages    15.1    15.1 	    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16829    GestionDesStages    DATABASE     �   CREATE DATABASE "GestionDesStages" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';
 "   DROP DATABASE "GestionDesStages";
                postgres    false            �            1259    16841    utilisateur    TABLE     �   CREATE TABLE public.utilisateur (
    id bigint NOT NULL,
    adresse character varying(255),
    nom character varying(255),
    "prénom" character varying(255),
    "téléphone" character varying(255)
);
    DROP TABLE public.utilisateur;
       public         heap    postgres    false            �            1259    16840    utilisateur_seq    SEQUENCE     y   CREATE SEQUENCE public.utilisateur_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.utilisateur_seq;
       public          postgres    false            �          0    16841    utilisateur 
   TABLE DATA           Q   COPY public.utilisateur (id, adresse, nom, "prénom", "téléphone") FROM stdin;
    public          postgres    false    215   �       �           0    0    utilisateur_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.utilisateur_seq', 1, false);
          public          postgres    false    214            f           2606    16847    utilisateur utilisateur_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT utilisateur_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.utilisateur DROP CONSTRAINT utilisateur_pkey;
       public            postgres    false    215            �   /   x�3�,N,*J��M���L�,RH�H��/M�45563512����� ��
�     