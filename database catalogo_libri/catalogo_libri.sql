PGDMP     ;    ;                z            catalogo_libri    14.1    14.1 *    4           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            5           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            6           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            7           1262    100345    catalogo_libri    DATABASE     j   CREATE DATABASE catalogo_libri WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Italian_Italy.1252';
    DROP DATABASE catalogo_libri;
                postgres    false            �            1259    111127    autore    TABLE     |   CREATE TABLE public.autore (
    id bigint NOT NULL,
    cognome character varying(255),
    nome character varying(255)
);
    DROP TABLE public.autore;
       public         heap    postgres    false            �            1259    110157    autore_libri    TABLE     b   CREATE TABLE public.autore_libri (
    autore_id bigint NOT NULL,
    libri_id bigint NOT NULL
);
     DROP TABLE public.autore_libri;
       public         heap    postgres    false            �            1259    111134 	   categoria    TABLE     [   CREATE TABLE public.categoria (
    id bigint NOT NULL,
    nome character varying(255)
);
    DROP TABLE public.categoria;
       public         heap    postgres    false            �            1259    110167    categoria_libri    TABLE     h   CREATE TABLE public.categoria_libri (
    categoria_id bigint NOT NULL,
    libri_id bigint NOT NULL
);
 #   DROP TABLE public.categoria_libri;
       public         heap    postgres    false            �            1259    111126    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            �            1259    111139    libro    TABLE     �   CREATE TABLE public.libro (
    id bigint NOT NULL,
    anno_pubblicazione integer NOT NULL,
    prezzo double precision NOT NULL,
    titolo character varying(255)
);
    DROP TABLE public.libro;
       public         heap    postgres    false            �            1259    111144    libro_autore    TABLE     b   CREATE TABLE public.libro_autore (
    libro_id bigint NOT NULL,
    autore_id bigint NOT NULL
);
     DROP TABLE public.libro_autore;
       public         heap    postgres    false            �            1259    110460    libro_autori    TABLE     b   CREATE TABLE public.libro_autori (
    libro_id bigint NOT NULL,
    autori_id bigint NOT NULL
);
     DROP TABLE public.libro_autori;
       public         heap    postgres    false            �            1259    111147    libro_categoria    TABLE     h   CREATE TABLE public.libro_categoria (
    libro_id bigint NOT NULL,
    categoria_id bigint NOT NULL
);
 #   DROP TABLE public.libro_categoria;
       public         heap    postgres    false            �            1259    110463    libro_categorie    TABLE     h   CREATE TABLE public.libro_categorie (
    libro_id bigint NOT NULL,
    categorie_id bigint NOT NULL
);
 #   DROP TABLE public.libro_categorie;
       public         heap    postgres    false            �            1259    111150    role    TABLE     W   CREATE TABLE public.role (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.role;
       public         heap    postgres    false            �            1259    111155 	   user_role    TABLE     ]   CREATE TABLE public.user_role (
    user_id bigint NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.user_role;
       public         heap    postgres    false            �            1259    111160    user_spring    TABLE     �   CREATE TABLE public.user_spring (
    id bigint NOT NULL,
    email character varying(255),
    is_active boolean NOT NULL,
    password character varying(255),
    user_name character varying(255)
);
    DROP TABLE public.user_spring;
       public         heap    postgres    false            *          0    111127    autore 
   TABLE DATA           3   COPY public.autore (id, cognome, nome) FROM stdin;
    public          postgres    false    214   �,       %          0    110157    autore_libri 
   TABLE DATA           ;   COPY public.autore_libri (autore_id, libri_id) FROM stdin;
    public          postgres    false    209   '-       +          0    111134 	   categoria 
   TABLE DATA           -   COPY public.categoria (id, nome) FROM stdin;
    public          postgres    false    215   D-       &          0    110167    categoria_libri 
   TABLE DATA           A   COPY public.categoria_libri (categoria_id, libri_id) FROM stdin;
    public          postgres    false    210   x-       ,          0    111139    libro 
   TABLE DATA           G   COPY public.libro (id, anno_pubblicazione, prezzo, titolo) FROM stdin;
    public          postgres    false    216   �-       -          0    111144    libro_autore 
   TABLE DATA           ;   COPY public.libro_autore (libro_id, autore_id) FROM stdin;
    public          postgres    false    217   �-       '          0    110460    libro_autori 
   TABLE DATA           ;   COPY public.libro_autori (libro_id, autori_id) FROM stdin;
    public          postgres    false    211   �-       .          0    111147    libro_categoria 
   TABLE DATA           A   COPY public.libro_categoria (libro_id, categoria_id) FROM stdin;
    public          postgres    false    218   .       (          0    110463    libro_categorie 
   TABLE DATA           A   COPY public.libro_categorie (libro_id, categorie_id) FROM stdin;
    public          postgres    false    212   ;.       /          0    111150    role 
   TABLE DATA           (   COPY public.role (id, name) FROM stdin;
    public          postgres    false    219   a.       0          0    111155 	   user_role 
   TABLE DATA           5   COPY public.user_role (user_id, role_id) FROM stdin;
    public          postgres    false    220   �.       1          0    111160    user_spring 
   TABLE DATA           P   COPY public.user_spring (id, email, is_active, password, user_name) FROM stdin;
    public          postgres    false    221   �.       8           0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 13, true);
          public          postgres    false    213            �           2606    111133    autore autore_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.autore
    ADD CONSTRAINT autore_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.autore DROP CONSTRAINT autore_pkey;
       public            postgres    false    214            �           2606    111138    categoria categoria_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            postgres    false    215            �           2606    111143    libro libro_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.libro
    ADD CONSTRAINT libro_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.libro DROP CONSTRAINT libro_pkey;
       public            postgres    false    216            �           2606    111154    role role_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    219            �           2606    111159    user_role user_role_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (user_id, role_id);
 B   ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_pkey;
       public            postgres    false    220    220            �           2606    111166    user_spring user_spring_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.user_spring
    ADD CONSTRAINT user_spring_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.user_spring DROP CONSTRAINT user_spring_pkey;
       public            postgres    false    221            �           2606    111182 +   libro_categoria fk11952p0wwxdk8rtrftctop2on    FK CONSTRAINT     �   ALTER TABLE ONLY public.libro_categoria
    ADD CONSTRAINT fk11952p0wwxdk8rtrftctop2on FOREIGN KEY (libro_id) REFERENCES public.libro(id);
 U   ALTER TABLE ONLY public.libro_categoria DROP CONSTRAINT fk11952p0wwxdk8rtrftctop2on;
       public          postgres    false    3213    216    218            �           2606    111187 %   user_role fka68196081fvovjhkek5m97n3y    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fka68196081fvovjhkek5m97n3y FOREIGN KEY (role_id) REFERENCES public.role(id);
 O   ALTER TABLE ONLY public.user_role DROP CONSTRAINT fka68196081fvovjhkek5m97n3y;
       public          postgres    false    3215    219    220            �           2606    111177 +   libro_categoria fkj6mhf7vwwovtyqpcxj7r9nlvg    FK CONSTRAINT     �   ALTER TABLE ONLY public.libro_categoria
    ADD CONSTRAINT fkj6mhf7vwwovtyqpcxj7r9nlvg FOREIGN KEY (categoria_id) REFERENCES public.categoria(id);
 U   ALTER TABLE ONLY public.libro_categoria DROP CONSTRAINT fkj6mhf7vwwovtyqpcxj7r9nlvg;
       public          postgres    false    3211    215    218            �           2606    111192 %   user_role fkjnbh64dhuo55gh2jd9d21d245    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fkjnbh64dhuo55gh2jd9d21d245 FOREIGN KEY (user_id) REFERENCES public.user_spring(id);
 O   ALTER TABLE ONLY public.user_role DROP CONSTRAINT fkjnbh64dhuo55gh2jd9d21d245;
       public          postgres    false    3219    221    220            �           2606    111172 (   libro_autore fkjqi5oqp3sw7g9mm1bhhqy1pi8    FK CONSTRAINT     �   ALTER TABLE ONLY public.libro_autore
    ADD CONSTRAINT fkjqi5oqp3sw7g9mm1bhhqy1pi8 FOREIGN KEY (libro_id) REFERENCES public.libro(id);
 R   ALTER TABLE ONLY public.libro_autore DROP CONSTRAINT fkjqi5oqp3sw7g9mm1bhhqy1pi8;
       public          postgres    false    217    3213    216            �           2606    111167 (   libro_autore fksgfg0ss84qscvi1l8fdd45qwj    FK CONSTRAINT     �   ALTER TABLE ONLY public.libro_autore
    ADD CONSTRAINT fksgfg0ss84qscvi1l8fdd45qwj FOREIGN KEY (autore_id) REFERENCES public.autore(id);
 R   ALTER TABLE ONLY public.libro_autore DROP CONSTRAINT fksgfg0ss84qscvi1l8fdd45qwj;
       public          postgres    false    214    3209    217            *   )   x�3��/.���M,����(*M�K�t�L������ �j	E      %      x������ � �      +   $   x�3�t)J��M,�L��2�tK�+I,������ ;      &      x������ � �      ,   ,   x�34�4���z���E���y\�F�@X\R�������� �U�      -      x�34������� pU      '      x���4�24������� 	�      .      x�34�4����� bS      (      x���4�24�4����� ��      /   !   x�3���q�v�2��]|=��b���� t��      0      x�3�4�2�4�2�1z\\\ k      1   �   x�U�;�0  й=s)��$*?	� �Bi��bK��qry�#�no��.�^�6,l�ټpd5�/)V�!�˄�-c�:8^�k�^_D���^�-�o�L�?�/gJ�=�6"+��*	Z�	�o�h%B,�y���Sې��c�#K����d84�     