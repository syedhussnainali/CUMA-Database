PGDMP     *                    {           cuma    15.2    15.2 	               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    cuma    DATABASE     w   CREATE DATABASE cuma WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE cuma;
                postgres    false            �            1259    16401 
   login_uwin    TABLE     �   CREATE TABLE public.login_uwin (
    id integer NOT NULL,
    uwinid character varying NOT NULL,
    password character varying NOT NULL,
    firstname character varying NOT NULL,
    lastname character varying NOT NULL
);
    DROP TABLE public.login_uwin;
       public         heap    postgres    false            �            1259    16430    login_uwin_id_seq    SEQUENCE     �   ALTER TABLE public.login_uwin ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.login_uwin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214                      0    16401 
   login_uwin 
   TABLE DATA                 public          postgres    false    214   �                  0    0    login_uwin_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.login_uwin_id_seq', 1, true);
          public          postgres    false    219            x           2606    16407    login_uwin login_uwin_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.login_uwin
    ADD CONSTRAINT login_uwin_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.login_uwin DROP CONSTRAINT login_uwin_pkey;
       public            postgres    false    214               �   x���v
Q���W((M��L���O�̋/-��S��L�Q �@tAbqqy~���YT\��������ai*���y�x��+G���*�9���B�`C��Ē��"��)��Ezɉ� ���# � ��R״��� ��3�     