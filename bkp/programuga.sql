PGDMP     )                    {           cuma    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    cuma    DATABASE     w   CREATE DATABASE cuma WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE cuma;
                postgres    false            �            1259    16445 
   programuga    TABLE     {   CREATE TABLE public.programuga (
    id bigint NOT NULL,
    project_id bigint,
    description text,
    ugaalign text
);
    DROP TABLE public.programuga;
       public         heap    postgres    false            �            1259    16452    projectuga_id_seq    SEQUENCE     �   ALTER TABLE public.programuga ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.projectuga_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    222            	          0    16445 
   programuga 
   TABLE DATA                 public          postgres    false    222   �
                  0    0    projectuga_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.projectuga_id_seq', 1, false);
          public          postgres    false    223            y           2606    16451    programuga projectuga_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.programuga
    ADD CONSTRAINT projectuga_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.programuga DROP CONSTRAINT projectuga_pkey;
       public            postgres    false    222            w           1259    16458    fki_project_id    INDEX     K   CREATE INDEX fki_project_id ON public.programuga USING btree (project_id);
 "   DROP INDEX public.fki_project_id;
       public            postgres    false    222            z           2606    16453    programuga project_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.programuga
    ADD CONSTRAINT project_id FOREIGN KEY (project_id) REFERENCES public.project(id) NOT VALID;
 ?   ALTER TABLE ONLY public.programuga DROP CONSTRAINT project_id;
       public          postgres    false    222            	   
   x���         