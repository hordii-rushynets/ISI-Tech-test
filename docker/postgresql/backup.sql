PGDMP             
            }            isi_tech     12.22 (Debian 12.22-1.pgdg120+1)     12.22 (Debian 12.22-1.pgdg120+1) �    n           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            o           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            p           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            q           1262    16385    isi_tech    DATABASE     x   CREATE DATABASE isi_tech WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
    DROP DATABASE isi_tech;
                {POSTGRES_USER}    false            r           0    0    DATABASE isi_tech    ACL     ,   GRANT ALL ON DATABASE isi_tech TO isi_tech;
                   {POSTGRES_USER}    false    3185            �            1259    16418 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    isi_tech    false            �            1259    16416    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          isi_tech    false    209            s           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          isi_tech    false    208            �            1259    16428    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    isi_tech    false            �            1259    16426    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          isi_tech    false    211            t           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          isi_tech    false    210            �            1259    16410    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    isi_tech    false            �            1259    16408    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          isi_tech    false    207            u           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          isi_tech    false    206            �            1259    16436 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    isi_tech    false            �            1259    16446    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    isi_tech    false            �            1259    16444    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          isi_tech    false    215            v           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          isi_tech    false    214            �            1259    16434    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          isi_tech    false    213            w           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          isi_tech    false    212            �            1259    16454    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    isi_tech    false            �            1259    16452 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          isi_tech    false    217            x           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          isi_tech    false    216            �            1259    16514    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    isi_tech    false            �            1259    16512    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          isi_tech    false    219            y           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          isi_tech    false    218            �            1259    16400    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    isi_tech    false            �            1259    16398    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          isi_tech    false    205            z           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          isi_tech    false    204            �            1259    16389    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    isi_tech    false            �            1259    16387    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          isi_tech    false    203            {           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          isi_tech    false    202            �            1259    16545    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    isi_tech    false            �            1259    16573    thread_message    TABLE     �   CREATE TABLE public.thread_message (
    id bigint NOT NULL,
    text text NOT NULL,
    created timestamp with time zone NOT NULL,
    sender_id integer NOT NULL,
    thread_id bigint NOT NULL
);
 "   DROP TABLE public.thread_message;
       public         heap    isi_tech    false            �            1259    16571    thread_message_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.thread_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.thread_message_id_seq;
       public          isi_tech    false    226            |           0    0    thread_message_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.thread_message_id_seq OWNED BY public.thread_message.id;
          public          isi_tech    false    225            �            1259    16584    thread_messagereadstatus    TABLE     �   CREATE TABLE public.thread_messagereadstatus (
    id bigint NOT NULL,
    read_at timestamp with time zone,
    message_id bigint NOT NULL,
    user_id integer NOT NULL,
    is_read boolean NOT NULL
);
 ,   DROP TABLE public.thread_messagereadstatus;
       public         heap    isi_tech    false            �            1259    16582    thread_messagereadstatus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.thread_messagereadstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.thread_messagereadstatus_id_seq;
       public          isi_tech    false    228            }           0    0    thread_messagereadstatus_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.thread_messagereadstatus_id_seq OWNED BY public.thread_messagereadstatus.id;
          public          isi_tech    false    227            �            1259    16557    thread_thread    TABLE     �   CREATE TABLE public.thread_thread (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    owner_id integer NOT NULL
);
 !   DROP TABLE public.thread_thread;
       public         heap    isi_tech    false            �            1259    16555    thread_thread_id_seq    SEQUENCE     }   CREATE SEQUENCE public.thread_thread_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.thread_thread_id_seq;
       public          isi_tech    false    222            ~           0    0    thread_thread_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.thread_thread_id_seq OWNED BY public.thread_thread.id;
          public          isi_tech    false    221            �            1259    16565    thread_thread_participants    TABLE     �   CREATE TABLE public.thread_thread_participants (
    id bigint NOT NULL,
    thread_id bigint NOT NULL,
    user_id integer NOT NULL
);
 .   DROP TABLE public.thread_thread_participants;
       public         heap    isi_tech    false            �            1259    16563 !   thread_thread_participants_id_seq    SEQUENCE     �   CREATE SEQUENCE public.thread_thread_participants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.thread_thread_participants_id_seq;
       public          isi_tech    false    224                       0    0 !   thread_thread_participants_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.thread_thread_participants_id_seq OWNED BY public.thread_thread_participants.id;
          public          isi_tech    false    223            v           2604    16421    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          isi_tech    false    208    209    209            w           2604    16431    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          isi_tech    false    210    211    211            u           2604    16413    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          isi_tech    false    207    206    207            x           2604    16439    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          isi_tech    false    213    212    213            y           2604    16449    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          isi_tech    false    214    215    215            z           2604    16457    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          isi_tech    false    216    217    217            {           2604    16517    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          isi_tech    false    218    219    219            t           2604    16403    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          isi_tech    false    204    205    205            s           2604    16392    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          isi_tech    false    203    202    203                       2604    16576    thread_message id    DEFAULT     v   ALTER TABLE ONLY public.thread_message ALTER COLUMN id SET DEFAULT nextval('public.thread_message_id_seq'::regclass);
 @   ALTER TABLE public.thread_message ALTER COLUMN id DROP DEFAULT;
       public          isi_tech    false    225    226    226            �           2604    16587    thread_messagereadstatus id    DEFAULT     �   ALTER TABLE ONLY public.thread_messagereadstatus ALTER COLUMN id SET DEFAULT nextval('public.thread_messagereadstatus_id_seq'::regclass);
 J   ALTER TABLE public.thread_messagereadstatus ALTER COLUMN id DROP DEFAULT;
       public          isi_tech    false    227    228    228            }           2604    16560    thread_thread id    DEFAULT     t   ALTER TABLE ONLY public.thread_thread ALTER COLUMN id SET DEFAULT nextval('public.thread_thread_id_seq'::regclass);
 ?   ALTER TABLE public.thread_thread ALTER COLUMN id DROP DEFAULT;
       public          isi_tech    false    221    222    222            ~           2604    16568    thread_thread_participants id    DEFAULT     �   ALTER TABLE ONLY public.thread_thread_participants ALTER COLUMN id SET DEFAULT nextval('public.thread_thread_participants_id_seq'::regclass);
 L   ALTER TABLE public.thread_thread_participants ALTER COLUMN id DROP DEFAULT;
       public          isi_tech    false    223    224    224            X          0    16418 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          isi_tech    false    209   ��       Z          0    16428    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          isi_tech    false    211   �       V          0    16410    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          isi_tech    false    207   +�       \          0    16436 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          isi_tech    false    213   ��       ^          0    16446    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          isi_tech    false    215   ��       `          0    16454    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          isi_tech    false    217   ��       b          0    16514    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          isi_tech    false    219   ��       T          0    16400    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          isi_tech    false    205   ��       R          0    16389    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          isi_tech    false    203   ��       c          0    16545    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          isi_tech    false    220   u�       i          0    16573    thread_message 
   TABLE DATA           Q   COPY public.thread_message (id, text, created, sender_id, thread_id) FROM stdin;
    public          isi_tech    false    226   ��       k          0    16584    thread_messagereadstatus 
   TABLE DATA           ]   COPY public.thread_messagereadstatus (id, read_at, message_id, user_id, is_read) FROM stdin;
    public          isi_tech    false    228   �       e          0    16557    thread_thread 
   TABLE DATA           G   COPY public.thread_thread (id, created, updated, owner_id) FROM stdin;
    public          isi_tech    false    222   ��       g          0    16565    thread_thread_participants 
   TABLE DATA           L   COPY public.thread_thread_participants (id, thread_id, user_id) FROM stdin;
    public          isi_tech    false    224   4�       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          isi_tech    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          isi_tech    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
          public          isi_tech    false    206            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          isi_tech    false    214            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 5, true);
          public          isi_tech    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          isi_tech    false    216            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 9, true);
          public          isi_tech    false    218            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
          public          isi_tech    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);
          public          isi_tech    false    202            �           0    0    thread_message_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.thread_message_id_seq', 9, true);
          public          isi_tech    false    225            �           0    0    thread_messagereadstatus_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.thread_messagereadstatus_id_seq', 34, true);
          public          isi_tech    false    227            �           0    0    thread_thread_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.thread_thread_id_seq', 3, true);
          public          isi_tech    false    221            �           0    0 !   thread_thread_participants_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.thread_thread_participants_id_seq', 6, true);
          public          isi_tech    false    223            �           2606    16543    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            isi_tech    false    209            �           2606    16470 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            isi_tech    false    211    211            �           2606    16433 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            isi_tech    false    211            �           2606    16423    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            isi_tech    false    209            �           2606    16461 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            isi_tech    false    207    207            �           2606    16415 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            isi_tech    false    207            �           2606    16451 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            isi_tech    false    215            �           2606    16485 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            isi_tech    false    215    215            �           2606    16441    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            isi_tech    false    213            �           2606    16459 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            isi_tech    false    217            �           2606    16499 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            isi_tech    false    217    217            �           2606    16537     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            isi_tech    false    213            �           2606    16523 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            isi_tech    false    219            �           2606    16407 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            isi_tech    false    205    205            �           2606    16405 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            isi_tech    false    205            �           2606    16397 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            isi_tech    false    203            �           2606    16552 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            isi_tech    false    220            �           2606    16581 "   thread_message thread_message_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.thread_message
    ADD CONSTRAINT thread_message_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.thread_message DROP CONSTRAINT thread_message_pkey;
       public            isi_tech    false    226            �           2606    16623 R   thread_messagereadstatus thread_messagereadstatus_message_id_user_id_c556351f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.thread_messagereadstatus
    ADD CONSTRAINT thread_messagereadstatus_message_id_user_id_c556351f_uniq UNIQUE (message_id, user_id);
 |   ALTER TABLE ONLY public.thread_messagereadstatus DROP CONSTRAINT thread_messagereadstatus_message_id_user_id_c556351f_uniq;
       public            isi_tech    false    228    228            �           2606    16589 6   thread_messagereadstatus thread_messagereadstatus_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.thread_messagereadstatus
    ADD CONSTRAINT thread_messagereadstatus_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.thread_messagereadstatus DROP CONSTRAINT thread_messagereadstatus_pkey;
       public            isi_tech    false    228            �           2606    16570 :   thread_thread_participants thread_thread_participants_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.thread_thread_participants
    ADD CONSTRAINT thread_thread_participants_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.thread_thread_participants DROP CONSTRAINT thread_thread_participants_pkey;
       public            isi_tech    false    224            �           2606    16597 U   thread_thread_participants thread_thread_participants_thread_id_user_id_47ade298_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.thread_thread_participants
    ADD CONSTRAINT thread_thread_participants_thread_id_user_id_47ade298_uniq UNIQUE (thread_id, user_id);
    ALTER TABLE ONLY public.thread_thread_participants DROP CONSTRAINT thread_thread_participants_thread_id_user_id_47ade298_uniq;
       public            isi_tech    false    224    224            �           2606    16562     thread_thread thread_thread_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.thread_thread
    ADD CONSTRAINT thread_thread_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.thread_thread DROP CONSTRAINT thread_thread_pkey;
       public            isi_tech    false    222            �           1259    16544    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            isi_tech    false    209            �           1259    16481 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            isi_tech    false    211            �           1259    16482 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            isi_tech    false    211            �           1259    16467 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            isi_tech    false    207            �           1259    16497 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            isi_tech    false    215            �           1259    16496 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            isi_tech    false    215            �           1259    16511 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            isi_tech    false    217            �           1259    16510 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            isi_tech    false    217            �           1259    16538     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            isi_tech    false    213            �           1259    16534 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            isi_tech    false    219            �           1259    16535 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            isi_tech    false    219            �           1259    16554 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            isi_tech    false    220            �           1259    16553 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            isi_tech    false    220            �           1259    16620 !   thread_message_sender_id_7f0730b0    INDEX     a   CREATE INDEX thread_message_sender_id_7f0730b0 ON public.thread_message USING btree (sender_id);
 5   DROP INDEX public.thread_message_sender_id_7f0730b0;
       public            isi_tech    false    226            �           1259    16621 !   thread_message_thread_id_73bf0507    INDEX     a   CREATE INDEX thread_message_thread_id_73bf0507 ON public.thread_message USING btree (thread_id);
 5   DROP INDEX public.thread_message_thread_id_73bf0507;
       public            isi_tech    false    226            �           1259    16634 ,   thread_messagereadstatus_message_id_15370e13    INDEX     w   CREATE INDEX thread_messagereadstatus_message_id_15370e13 ON public.thread_messagereadstatus USING btree (message_id);
 @   DROP INDEX public.thread_messagereadstatus_message_id_15370e13;
       public            isi_tech    false    228            �           1259    16635 )   thread_messagereadstatus_user_id_65b22080    INDEX     q   CREATE INDEX thread_messagereadstatus_user_id_65b22080 ON public.thread_messagereadstatus USING btree (user_id);
 =   DROP INDEX public.thread_messagereadstatus_user_id_65b22080;
       public            isi_tech    false    228            �           1259    16595    thread_thread_owner_id_0e553af7    INDEX     ]   CREATE INDEX thread_thread_owner_id_0e553af7 ON public.thread_thread USING btree (owner_id);
 3   DROP INDEX public.thread_thread_owner_id_0e553af7;
       public            isi_tech    false    222            �           1259    16608 -   thread_thread_participants_thread_id_5fcefe45    INDEX     y   CREATE INDEX thread_thread_participants_thread_id_5fcefe45 ON public.thread_thread_participants USING btree (thread_id);
 A   DROP INDEX public.thread_thread_participants_thread_id_5fcefe45;
       public            isi_tech    false    224            �           1259    16609 +   thread_thread_participants_user_id_b802489f    INDEX     u   CREATE INDEX thread_thread_participants_user_id_b802489f ON public.thread_thread_participants USING btree (user_id);
 ?   DROP INDEX public.thread_thread_participants_user_id_b802489f;
       public            isi_tech    false    224            �           2606    16476 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          isi_tech    false    207    2955    211            �           2606    16471 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          isi_tech    false    209    211    2960            �           2606    16462 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          isi_tech    false    2950    205    207            �           2606    16491 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          isi_tech    false    2960    209    215            �           2606    16486 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          isi_tech    false    213    215    2968            �           2606    16505 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          isi_tech    false    217    2955    207            �           2606    16500 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          isi_tech    false    2968    217    213            �           2606    16524 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          isi_tech    false    2950    205    219            �           2606    16529 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          isi_tech    false    219    213    2968            �           2606    16610 @   thread_message thread_message_sender_id_7f0730b0_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.thread_message
    ADD CONSTRAINT thread_message_sender_id_7f0730b0_fk_auth_user_id FOREIGN KEY (sender_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.thread_message DROP CONSTRAINT thread_message_sender_id_7f0730b0_fk_auth_user_id;
       public          isi_tech    false    213    2968    226            �           2606    16615 D   thread_message thread_message_thread_id_73bf0507_fk_thread_thread_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.thread_message
    ADD CONSTRAINT thread_message_thread_id_73bf0507_fk_thread_thread_id FOREIGN KEY (thread_id) REFERENCES public.thread_thread(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.thread_message DROP CONSTRAINT thread_message_thread_id_73bf0507_fk_thread_thread_id;
       public          isi_tech    false    2994    226    222            �           2606    16624 N   thread_messagereadstatus thread_messagereadst_message_id_15370e13_fk_thread_me    FK CONSTRAINT     �   ALTER TABLE ONLY public.thread_messagereadstatus
    ADD CONSTRAINT thread_messagereadst_message_id_15370e13_fk_thread_me FOREIGN KEY (message_id) REFERENCES public.thread_message(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.thread_messagereadstatus DROP CONSTRAINT thread_messagereadst_message_id_15370e13_fk_thread_me;
       public          isi_tech    false    228    226    3002            �           2606    16629 R   thread_messagereadstatus thread_messagereadstatus_user_id_65b22080_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.thread_messagereadstatus
    ADD CONSTRAINT thread_messagereadstatus_user_id_65b22080_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.thread_messagereadstatus DROP CONSTRAINT thread_messagereadstatus_user_id_65b22080_fk_auth_user_id;
       public          isi_tech    false    2968    228    213            �           2606    16590 =   thread_thread thread_thread_owner_id_0e553af7_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.thread_thread
    ADD CONSTRAINT thread_thread_owner_id_0e553af7_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.thread_thread DROP CONSTRAINT thread_thread_owner_id_0e553af7_fk_auth_user_id;
       public          isi_tech    false    2968    222    213            �           2606    16598 O   thread_thread_participants thread_thread_partic_thread_id_5fcefe45_fk_thread_th    FK CONSTRAINT     �   ALTER TABLE ONLY public.thread_thread_participants
    ADD CONSTRAINT thread_thread_partic_thread_id_5fcefe45_fk_thread_th FOREIGN KEY (thread_id) REFERENCES public.thread_thread(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.thread_thread_participants DROP CONSTRAINT thread_thread_partic_thread_id_5fcefe45_fk_thread_th;
       public          isi_tech    false    222    224    2994            �           2606    16603 V   thread_thread_participants thread_thread_participants_user_id_b802489f_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.thread_thread_participants
    ADD CONSTRAINT thread_thread_participants_user_id_b802489f_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.thread_thread_participants DROP CONSTRAINT thread_thread_participants_user_id_b802489f_fk_auth_user_id;
       public          isi_tech    false    2968    213    224            X      x������ � �      Z      x������ � �      V   z  x�m��n�0�����	��S��^c҄JD+�� l���C�;l�?�ߙ�v�ڮ�c��!�/��Vo5�6�zk��+*�, �����%�?w�����PEf����e����A���r
D;����bQP�+*w!�~�� �֝��1G/D�t:�A$g� d�.~6%�֕r?Nq}*�\��w�V��6_�!l-�ɛ
��w�k�H���/�+��O���5t��z��� ���UޙAO�T�C=�D�+B8�ϭ���4`���UșA#�T�C#�D�#B8��6��3g��-T��@�R�&eHd�P9�"�M���%�a]�E�iľ-�7K^����՛;&��M����u������ׇ�����      \   �  x�u�Mo�@���+��03|$MD+8E?����
�~�U7&ƞ�9y�7y�Á�;�ܜ#b�@�^��⊺Rz*RӨU-����O
'�K峜k�qdB}i.ɠ��f�֥O��;�,�o,|��?�P�Y��#�Q�eA\?�'  ��v�����A�|����i��X7r�3�(̱j�|&T�`��h,�dN�0Tw&�j��oYMCz����_��6^��;�6A �ݹؔ�]�,oW�;O����2xRbc�7�����)>g&�zC�,R�~�0F�5v�r��0LrQ�V���k4m��2.UU����ϼ| �=��b�Hdɘ��k ����2���D���H`H`�f�X�ӏ�ű��Wɐ\�K0+m<Q'���a���@���>�/������O�ҥ�_����zQ�L���5�� ��ۆ�I*2���T��8��9��<�P�-��gz��Ç���n��N������(      ^      x������ � �      `      x������ � �      b     x��ұN�0���y��+�:����L�L����@��Hq���;I��)�-Y�o���p�.��=E��@�hCl�14B��YeJ����$t�S�z`��Y>�o���ː/U8��[n�C��6=u���|,~m��:�]�	1��w��)[�ɳV��s}،�=.\��{Ȕf�+ĺ��y���lߦ�}׷�:��/�sƐr�*��+�<Ϡr��h�4����C�Φt���Bp�⑦���sA�kiF�;�g�$�'��      T   q   x�]�K�@C��a�(�]�D4���|�d�=�P	��ߓ}&S��.A�댎��DU4E�X2.�	ZZ�u�f���U�/7���/�F&�ێ�;����70����O�ݜ��' ˺:�      R   �  x���ߎ� ���S��f8��Y6!�eZp2}����Դ7ƨ���w����d��n��Bk7��L� ����/-���#��(��4fJ�7RR!K�4�ܻ�u$?���}D@w��7l￬��{m�����
�=���9mN��Av�OW�N��S&@Ya���^��B�7z0�}�%i!�Uh�%�hC�b,���ͷ��p�_=%�/(��Ȃ�b��޸�%�RP(j��-�\j9~L;v"�6�������T̻�����9�D�~a�Rx��wra�[��"m"����K)_�sg�|���6toc4����,���d�ɧv^i�cQIt%���B	l��(��%�i|#�3����1+�z�����?�a>�Y��vW�.��-U֯,�D�����Pyn�m�&]�5��o�h	9*��ch��D)	 �%�<������p�d�7�M���-3U�d�u��&��-aG�(��?����vZ��      c   
  x���n�@  г|E�fq�� .#������ed��XV����+�Vof^����,��Q�:0Z�z�X��\�Ο��\u��s���u��[Ǣ�b;�{տޤ5�=�<���|o�8��x�������ӥ*��xj����ɥq�����a�Ho�U
՛f�ִ�Pw��E�O�A����ح�'���;��Ͷ�ֳ=:W�T�ф}��K��/j�x,ە�"�ߡ�K�Qݽ�\�'�~�P�N���B���t�%� "�' ��RQ��u^�      i   �   x�m�1
�0D�Z:���e4�+�:��&U*��
H��[���J��<��#1�\X�<7Brq[� �F�?P�F������ִ
��I���51s�f������n��؍)�F���c� #sE�      k   �   x��б1��:����N�d&�f�8>	8@tW��.��	�z"�`Ь<A���H�4!�2k��ߚ���'*�'5HwR��7t�������-�$JE�y4'�9� ��H!����%�\�%���VDUmMA��S��b�� m�����S��v"����K�q���?�E�?�K���� �f�.%�|<<`�      e   5   x�3�4202�50�52W02�25�21ҳ400�0�60�!kibj������ ��y      g      x�3�4�4�2��\f@҄+F��� "��     