PGDMP                         {           cuma    15.2    15.2 	               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    cuma    DATABASE     w   CREATE DATABASE cuma WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE cuma;
                postgres    false            �            1259    16415    faculty    TABLE     Q   CREATE TABLE public.faculty (
    id integer NOT NULL,
    name text NOT NULL
);
    DROP TABLE public.faculty;
       public         heap    postgres    false            �            1259    16422    faculty_id_seq    SEQUENCE     �   ALTER TABLE public.faculty ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.faculty_id_seq
    START WITH 9
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216                      0    16415    faculty 
   TABLE DATA                 public          postgres    false    216   �                  0    0    faculty_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.faculty_id_seq', 9, true);
          public          postgres    false    217            x           2606    16421    faculty faculty_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT faculty_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.faculty DROP CONSTRAINT faculty_pkey;
       public            postgres    false    216               �   x����
�0�}�bv*���bРVhj�eL���4	��;>>!�Y�{���$�Yq�G�֨�7�C�_��*�3�S��\lD�y�?B���w%�G	��λv�Q=��@�UR��ڸ�`�D��1%��Ck\DuB*�U��ckY<xJ0�w�k:��x�����'ܣv[�	?�gDqAb:u�%��������     