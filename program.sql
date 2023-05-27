PGDMP                         {           cuma    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    cuma    DATABASE     w   CREATE DATABASE cuma WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE cuma;
                postgres    false            �            1259    16431    program    TABLE     �   CREATE TABLE public.program (
    id bigint NOT NULL,
    name text,
    academic_level text,
    faculty_id bigint,
    doc_id text,
    rev_date date
);
    DROP TABLE public.program;
       public         heap    postgres    false            �            1259    16444    program_id_seq    SEQUENCE     �   ALTER TABLE public.program ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.program_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            	          0    16431    program 
   TABLE DATA                 public          postgres    false    220   �
                  0    0    program_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.program_id_seq', 1, true);
          public          postgres    false    221            y           2606    16437    program program_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.program
    ADD CONSTRAINT program_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.program DROP CONSTRAINT program_pkey;
       public            postgres    false    220            w           1259    16443    fki_faculty_id    INDEX     H   CREATE INDEX fki_faculty_id ON public.program USING btree (faculty_id);
 "   DROP INDEX public.fki_faculty_id;
       public            postgres    false    220            z           2606    16438    program faculty_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.program
    ADD CONSTRAINT faculty_id FOREIGN KEY (faculty_id) REFERENCES public.faculty(id) NOT VALID;
 <   ALTER TABLE ONLY public.program DROP CONSTRAINT faculty_id;
       public          postgres    false    220            	   �   x�%�]�0����
+4������&t%k{���1�пO��|�N���� ɪ�}*��ڌ�a=xRX�g{��*-�V͟f[������6�yM�"�&Y壬h
ut�ӿ���ܔM3[��V\�^�Y����0a׳5��:�W;��� ؅�.8���q�/��;d     