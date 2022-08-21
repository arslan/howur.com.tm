--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO postgres;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_id_seq OWNER TO postgres;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_permissions_role_links (
    permission_id integer,
    role_id integer
);


ALTER TABLE public.admin_permissions_role_links OWNER TO postgres;

--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO postgres;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_roles_id_seq OWNER TO postgres;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO postgres;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO postgres;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_users_roles_links (
    user_id integer,
    role_id integer
);


ALTER TABLE public.admin_users_roles_links OWNER TO postgres;

--
-- Name: brands; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brands (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    description text
);


ALTER TABLE public.brands OWNER TO postgres;

--
-- Name: brands_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brands_id_seq OWNER TO postgres;

--
-- Name: brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.brands_id_seq OWNED BY public.brands.id;


--
-- Name: brands_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brands_localizations_links (
    brand_id integer,
    inv_brand_id integer
);


ALTER TABLE public.brands_localizations_links OWNER TO postgres;

--
-- Name: certificate_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.certificate_lists (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.certificate_lists OWNER TO postgres;

--
-- Name: certificate_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.certificate_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.certificate_lists_id_seq OWNER TO postgres;

--
-- Name: certificate_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.certificate_lists_id_seq OWNED BY public.certificate_lists.id;


--
-- Name: certificate_lists_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.certificate_lists_localizations_links (
    certificate_list_id integer,
    inv_certificate_list_id integer
);


ALTER TABLE public.certificate_lists_localizations_links OWNER TO postgres;

--
-- Name: components_about_abouts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_about_abouts (
    id integer NOT NULL,
    heading character varying(255),
    under_heading text,
    description text
);


ALTER TABLE public.components_about_abouts OWNER TO postgres;

--
-- Name: components_about_abouts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_about_abouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_about_abouts_id_seq OWNER TO postgres;

--
-- Name: components_about_abouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_about_abouts_id_seq OWNED BY public.components_about_abouts.id;


--
-- Name: components_certificate_certificates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_certificate_certificates (
    id integer NOT NULL,
    under_heading text,
    heading character varying(255)
);


ALTER TABLE public.components_certificate_certificates OWNER TO postgres;

--
-- Name: components_certificate_certificates_certificate_lists_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_certificate_certificates_certificate_lists_links (
    certificate_id integer,
    certificate_list_id integer
);


ALTER TABLE public.components_certificate_certificates_certificate_lists_links OWNER TO postgres;

--
-- Name: components_certificate_certificates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_certificate_certificates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_certificate_certificates_id_seq OWNER TO postgres;

--
-- Name: components_certificate_certificates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_certificate_certificates_id_seq OWNED BY public.components_certificate_certificates.id;


--
-- Name: components_contacts_addresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_contacts_addresses (
    id integer NOT NULL,
    address character varying(255)
);


ALTER TABLE public.components_contacts_addresses OWNER TO postgres;

--
-- Name: components_contacts_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_contacts_addresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_contacts_addresses_id_seq OWNER TO postgres;

--
-- Name: components_contacts_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_contacts_addresses_id_seq OWNED BY public.components_contacts_addresses.id;


--
-- Name: components_contacts_mail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_contacts_mail (
    id integer NOT NULL,
    mail character varying(255)
);


ALTER TABLE public.components_contacts_mail OWNER TO postgres;

--
-- Name: components_contacts_mail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_contacts_mail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_contacts_mail_id_seq OWNER TO postgres;

--
-- Name: components_contacts_mail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_contacts_mail_id_seq OWNED BY public.components_contacts_mail.id;


--
-- Name: components_contacts_phone_numbers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_contacts_phone_numbers (
    id integer NOT NULL,
    number character varying(255)
);


ALTER TABLE public.components_contacts_phone_numbers OWNER TO postgres;

--
-- Name: components_contacts_phone_numbers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_contacts_phone_numbers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_contacts_phone_numbers_id_seq OWNER TO postgres;

--
-- Name: components_contacts_phone_numbers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_contacts_phone_numbers_id_seq OWNED BY public.components_contacts_phone_numbers.id;


--
-- Name: components_footer_footer_devs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_footer_footer_devs (
    id integer NOT NULL,
    permission character varying(255),
    dev_by character varying(255)
);


ALTER TABLE public.components_footer_footer_devs OWNER TO postgres;

--
-- Name: components_footer_footer_devs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_footer_footer_devs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_footer_footer_devs_id_seq OWNER TO postgres;

--
-- Name: components_footer_footer_devs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_footer_footer_devs_id_seq OWNED BY public.components_footer_footer_devs.id;


--
-- Name: components_footer_footer_mains; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_footer_footer_mains (
    id integer NOT NULL,
    description text,
    title_mail character varying(255),
    mail character varying(255)
);


ALTER TABLE public.components_footer_footer_mains OWNER TO postgres;

--
-- Name: components_footer_footer_mains_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_footer_footer_mains_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_footer_footer_mains_id_seq OWNER TO postgres;

--
-- Name: components_footer_footer_mains_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_footer_footer_mains_id_seq OWNED BY public.components_footer_footer_mains.id;


--
-- Name: components_form_form_mains; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_form_form_mains (
    id integer NOT NULL,
    heading character varying(255),
    name character varying(255),
    message character varying(255),
    mail character varying(255),
    button character varying(255)
);


ALTER TABLE public.components_form_form_mains OWNER TO postgres;

--
-- Name: components_form_form_mains_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_form_form_mains_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);


ALTER TABLE public.components_form_form_mains_components OWNER TO postgres;

--
-- Name: components_form_form_mains_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_form_form_mains_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_form_form_mains_components_id_seq OWNER TO postgres;

--
-- Name: components_form_form_mains_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_form_form_mains_components_id_seq OWNED BY public.components_form_form_mains_components.id;


--
-- Name: components_form_form_mains_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_form_form_mains_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_form_form_mains_id_seq OWNER TO postgres;

--
-- Name: components_form_form_mains_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_form_form_mains_id_seq OWNED BY public.components_form_form_mains.id;


--
-- Name: components_navbar_header_navbars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_navbar_header_navbars (
    id integer NOT NULL
);


ALTER TABLE public.components_navbar_header_navbars OWNER TO postgres;

--
-- Name: components_navbar_header_navbars_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_navbar_header_navbars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_navbar_header_navbars_id_seq OWNER TO postgres;

--
-- Name: components_navbar_header_navbars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_navbar_header_navbars_id_seq OWNED BY public.components_navbar_header_navbars.id;


--
-- Name: components_navbar_header_navbars_locals_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_navbar_header_navbars_locals_links (
    navbar_id integer,
    local_id integer
);


ALTER TABLE public.components_navbar_header_navbars_locals_links OWNER TO postgres;

--
-- Name: components_navbar_header_navbars_navigations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_navbar_header_navbars_navigations_links (
    navbar_id integer,
    navigation_id integer
);


ALTER TABLE public.components_navbar_header_navbars_navigations_links OWNER TO postgres;

--
-- Name: components_products_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_products_products (
    id integer NOT NULL,
    heading character varying(255)
);


ALTER TABLE public.components_products_products OWNER TO postgres;

--
-- Name: components_products_products_brands_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_products_products_brands_links (
    product_id integer,
    brand_id integer
);


ALTER TABLE public.components_products_products_brands_links OWNER TO postgres;

--
-- Name: components_products_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_products_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_products_products_id_seq OWNER TO postgres;

--
-- Name: components_products_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_products_products_id_seq OWNED BY public.components_products_products.id;


--
-- Name: components_services_services; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_services_services (
    id integer NOT NULL,
    heading character varying(255)
);


ALTER TABLE public.components_services_services OWNER TO postgres;

--
-- Name: components_services_services_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_services_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_services_services_id_seq OWNER TO postgres;

--
-- Name: components_services_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_services_services_id_seq OWNED BY public.components_services_services.id;


--
-- Name: components_services_services_service_lists_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_services_services_service_lists_links (
    services_id integer,
    service_list_id integer
);


ALTER TABLE public.components_services_services_service_lists_links OWNER TO postgres;

--
-- Name: files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO postgres;

--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_id_seq OWNER TO postgres;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files_related_morphs (
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" integer
);


ALTER TABLE public.files_related_morphs OWNER TO postgres;

--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO postgres;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locale_id_seq OWNER TO postgres;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: layouts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.layouts (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.layouts OWNER TO postgres;

--
-- Name: layouts_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.layouts_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);


ALTER TABLE public.layouts_components OWNER TO postgres;

--
-- Name: layouts_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.layouts_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.layouts_components_id_seq OWNER TO postgres;

--
-- Name: layouts_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.layouts_components_id_seq OWNED BY public.layouts_components.id;


--
-- Name: layouts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.layouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.layouts_id_seq OWNER TO postgres;

--
-- Name: layouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.layouts_id_seq OWNED BY public.layouts.id;


--
-- Name: layouts_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.layouts_localizations_links (
    layout_id integer,
    inv_layout_id integer
);


ALTER TABLE public.layouts_localizations_links OWNER TO postgres;

--
-- Name: locals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.locals (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.locals OWNER TO postgres;

--
-- Name: locals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.locals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.locals_id_seq OWNER TO postgres;

--
-- Name: locals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.locals_id_seq OWNED BY public.locals.id;


--
-- Name: locals_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.locals_localizations_links (
    local_id integer,
    inv_local_id integer
);


ALTER TABLE public.locals_localizations_links OWNER TO postgres;

--
-- Name: mains; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mains (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    head character varying(255),
    "desc" text,
    head_button character varying(255)
);


ALTER TABLE public.mains OWNER TO postgres;

--
-- Name: mains_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mains_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);


ALTER TABLE public.mains_components OWNER TO postgres;

--
-- Name: mains_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mains_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mains_components_id_seq OWNER TO postgres;

--
-- Name: mains_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mains_components_id_seq OWNED BY public.mains_components.id;


--
-- Name: mains_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mains_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mains_id_seq OWNER TO postgres;

--
-- Name: mains_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mains_id_seq OWNED BY public.mains.id;


--
-- Name: mains_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mains_localizations_links (
    main_id integer,
    inv_main_id integer
);


ALTER TABLE public.mains_localizations_links OWNER TO postgres;

--
-- Name: navigations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.navigations (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    href character varying(255),
    sort_id integer
);


ALTER TABLE public.navigations OWNER TO postgres;

--
-- Name: navigations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.navigations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.navigations_id_seq OWNER TO postgres;

--
-- Name: navigations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.navigations_id_seq OWNED BY public.navigations.id;


--
-- Name: navigations_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.navigations_localizations_links (
    navigation_id integer,
    inv_navigation_id integer
);


ALTER TABLE public.navigations_localizations_links OWNER TO postgres;

--
-- Name: pagas_services; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pagas_services (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    name character varying(255),
    sort_id integer,
    description text,
    under_description text,
    slug character varying(255)
);


ALTER TABLE public.pagas_services OWNER TO postgres;

--
-- Name: pagas_services_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pagas_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pagas_services_id_seq OWNER TO postgres;

--
-- Name: pagas_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pagas_services_id_seq OWNED BY public.pagas_services.id;


--
-- Name: pagas_services_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pagas_services_localizations_links (
    pagas_service_id integer,
    inv_pagas_service_id integer
);


ALTER TABLE public.pagas_services_localizations_links OWNER TO postgres;

--
-- Name: product_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_lists (
    id integer NOT NULL,
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.product_lists OWNER TO postgres;

--
-- Name: product_lists_brand_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_lists_brand_links (
    product_list_id integer,
    brand_id integer
);


ALTER TABLE public.product_lists_brand_links OWNER TO postgres;

--
-- Name: product_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_lists_id_seq OWNER TO postgres;

--
-- Name: product_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_lists_id_seq OWNED BY public.product_lists.id;


--
-- Name: product_lists_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_lists_localizations_links (
    product_list_id integer,
    inv_product_list_id integer
);


ALTER TABLE public.product_lists_localizations_links OWNER TO postgres;

--
-- Name: service_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.service_lists (
    id integer NOT NULL,
    heading character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    sort_id integer
);


ALTER TABLE public.service_lists OWNER TO postgres;

--
-- Name: service_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.service_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_lists_id_seq OWNER TO postgres;

--
-- Name: service_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.service_lists_id_seq OWNED BY public.service_lists.id;


--
-- Name: service_lists_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.service_lists_localizations_links (
    service_list_id integer,
    inv_service_list_id integer
);


ALTER TABLE public.service_lists_localizations_links OWNER TO postgres;

--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO postgres;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_tokens_id_seq OWNER TO postgres;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO postgres;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_core_store_settings_id_seq OWNER TO postgres;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO postgres;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_database_schema_id_seq OWNER TO postgres;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO postgres;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_id_seq OWNER TO postgres;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO postgres;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_id_seq OWNER TO postgres;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_permissions_role_links (
    permission_id integer,
    role_id integer
);


ALTER TABLE public.up_permissions_role_links OWNER TO postgres;

--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO postgres;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_roles_id_seq OWNER TO postgres;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO postgres;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_id_seq OWNER TO postgres;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_users_role_links (
    user_id integer,
    role_id integer
);


ALTER TABLE public.up_users_role_links OWNER TO postgres;

--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: brands id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands ALTER COLUMN id SET DEFAULT nextval('public.brands_id_seq'::regclass);


--
-- Name: certificate_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certificate_lists ALTER COLUMN id SET DEFAULT nextval('public.certificate_lists_id_seq'::regclass);


--
-- Name: components_about_abouts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_about_abouts ALTER COLUMN id SET DEFAULT nextval('public.components_about_abouts_id_seq'::regclass);


--
-- Name: components_certificate_certificates id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_certificate_certificates ALTER COLUMN id SET DEFAULT nextval('public.components_certificate_certificates_id_seq'::regclass);


--
-- Name: components_contacts_addresses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_contacts_addresses ALTER COLUMN id SET DEFAULT nextval('public.components_contacts_addresses_id_seq'::regclass);


--
-- Name: components_contacts_mail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_contacts_mail ALTER COLUMN id SET DEFAULT nextval('public.components_contacts_mail_id_seq'::regclass);


--
-- Name: components_contacts_phone_numbers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_contacts_phone_numbers ALTER COLUMN id SET DEFAULT nextval('public.components_contacts_phone_numbers_id_seq'::regclass);


--
-- Name: components_footer_footer_devs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_footer_footer_devs ALTER COLUMN id SET DEFAULT nextval('public.components_footer_footer_devs_id_seq'::regclass);


--
-- Name: components_footer_footer_mains id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_footer_footer_mains ALTER COLUMN id SET DEFAULT nextval('public.components_footer_footer_mains_id_seq'::regclass);


--
-- Name: components_form_form_mains id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_form_form_mains ALTER COLUMN id SET DEFAULT nextval('public.components_form_form_mains_id_seq'::regclass);


--
-- Name: components_form_form_mains_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_form_form_mains_components ALTER COLUMN id SET DEFAULT nextval('public.components_form_form_mains_components_id_seq'::regclass);


--
-- Name: components_navbar_header_navbars id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_navbar_header_navbars ALTER COLUMN id SET DEFAULT nextval('public.components_navbar_header_navbars_id_seq'::regclass);


--
-- Name: components_products_products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_products_products ALTER COLUMN id SET DEFAULT nextval('public.components_products_products_id_seq'::regclass);


--
-- Name: components_services_services id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_services_services ALTER COLUMN id SET DEFAULT nextval('public.components_services_services_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: layouts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layouts ALTER COLUMN id SET DEFAULT nextval('public.layouts_id_seq'::regclass);


--
-- Name: layouts_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layouts_components ALTER COLUMN id SET DEFAULT nextval('public.layouts_components_id_seq'::regclass);


--
-- Name: locals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locals ALTER COLUMN id SET DEFAULT nextval('public.locals_id_seq'::regclass);


--
-- Name: mains id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mains ALTER COLUMN id SET DEFAULT nextval('public.mains_id_seq'::regclass);


--
-- Name: mains_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mains_components ALTER COLUMN id SET DEFAULT nextval('public.mains_components_id_seq'::regclass);


--
-- Name: navigations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.navigations ALTER COLUMN id SET DEFAULT nextval('public.navigations_id_seq'::regclass);


--
-- Name: pagas_services id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pagas_services ALTER COLUMN id SET DEFAULT nextval('public.pagas_services_id_seq'::regclass);


--
-- Name: product_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_lists ALTER COLUMN id SET DEFAULT nextval('public.product_lists_id_seq'::regclass);


--
-- Name: service_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_lists ALTER COLUMN id SET DEFAULT nextval('public.service_lists_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::upload.read	\N	{}	[]	2022-06-20 11:57:02.826	2022-06-20 11:57:02.826	\N	\N
2	plugin::upload.assets.create	\N	{}	[]	2022-06-20 11:57:02.835	2022-06-20 11:57:02.835	\N	\N
3	plugin::upload.assets.update	\N	{}	[]	2022-06-20 11:57:02.842	2022-06-20 11:57:02.842	\N	\N
4	plugin::upload.assets.download	\N	{}	[]	2022-06-20 11:57:02.849	2022-06-20 11:57:02.849	\N	\N
5	plugin::upload.assets.copy-link	\N	{}	[]	2022-06-20 11:57:02.859	2022-06-20 11:57:02.859	\N	\N
6	plugin::upload.read	\N	{}	["admin::is-creator"]	2022-06-20 11:57:02.867	2022-06-20 11:57:02.867	\N	\N
7	plugin::upload.assets.create	\N	{}	[]	2022-06-20 11:57:02.873	2022-06-20 11:57:02.873	\N	\N
8	plugin::upload.assets.update	\N	{}	["admin::is-creator"]	2022-06-20 11:57:02.881	2022-06-20 11:57:02.881	\N	\N
9	plugin::upload.assets.download	\N	{}	[]	2022-06-20 11:57:02.888	2022-06-20 11:57:02.888	\N	\N
10	plugin::upload.assets.copy-link	\N	{}	[]	2022-06-20 11:57:02.895	2022-06-20 11:57:02.895	\N	\N
11	plugin::content-manager.explorer.create	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2022-06-20 11:57:02.92	2022-06-20 11:57:02.92	\N	\N
12	plugin::content-manager.explorer.read	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2022-06-20 11:57:02.927	2022-06-20 11:57:02.927	\N	\N
13	plugin::content-manager.explorer.update	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2022-06-20 11:57:02.934	2022-06-20 11:57:02.934	\N	\N
14	plugin::content-manager.explorer.delete	plugin::users-permissions.user	{}	[]	2022-06-20 11:57:02.941	2022-06-20 11:57:02.941	\N	\N
15	plugin::content-manager.single-types.configure-view	\N	{}	[]	2022-06-20 11:57:02.948	2022-06-20 11:57:02.948	\N	\N
16	plugin::content-manager.collection-types.configure-view	\N	{}	[]	2022-06-20 11:57:02.954	2022-06-20 11:57:02.954	\N	\N
17	plugin::content-manager.components.configure-layout	\N	{}	[]	2022-06-20 11:57:02.961	2022-06-20 11:57:02.961	\N	\N
18	plugin::content-type-builder.read	\N	{}	[]	2022-06-20 11:57:02.968	2022-06-20 11:57:02.968	\N	\N
19	plugin::email.settings.read	\N	{}	[]	2022-06-20 11:57:02.975	2022-06-20 11:57:02.975	\N	\N
20	plugin::upload.read	\N	{}	[]	2022-06-20 11:57:02.981	2022-06-20 11:57:02.981	\N	\N
21	plugin::upload.assets.create	\N	{}	[]	2022-06-20 11:57:02.987	2022-06-20 11:57:02.987	\N	\N
22	plugin::upload.assets.update	\N	{}	[]	2022-06-20 11:57:02.995	2022-06-20 11:57:02.995	\N	\N
23	plugin::upload.assets.download	\N	{}	[]	2022-06-20 11:57:03.004	2022-06-20 11:57:03.004	\N	\N
24	plugin::upload.assets.copy-link	\N	{}	[]	2022-06-20 11:57:03.012	2022-06-20 11:57:03.012	\N	\N
25	plugin::upload.settings.read	\N	{}	[]	2022-06-20 11:57:03.018	2022-06-20 11:57:03.018	\N	\N
26	plugin::users-permissions.roles.create	\N	{}	[]	2022-06-20 11:57:03.026	2022-06-20 11:57:03.026	\N	\N
27	plugin::users-permissions.roles.read	\N	{}	[]	2022-06-20 11:57:03.032	2022-06-20 11:57:03.032	\N	\N
28	plugin::users-permissions.roles.update	\N	{}	[]	2022-06-20 11:57:03.039	2022-06-20 11:57:03.039	\N	\N
29	plugin::users-permissions.roles.delete	\N	{}	[]	2022-06-20 11:57:03.045	2022-06-20 11:57:03.045	\N	\N
30	plugin::users-permissions.providers.read	\N	{}	[]	2022-06-20 11:57:03.051	2022-06-20 11:57:03.051	\N	\N
31	plugin::users-permissions.providers.update	\N	{}	[]	2022-06-20 11:57:03.058	2022-06-20 11:57:03.058	\N	\N
32	plugin::users-permissions.email-templates.read	\N	{}	[]	2022-06-20 11:57:03.064	2022-06-20 11:57:03.064	\N	\N
33	plugin::users-permissions.email-templates.update	\N	{}	[]	2022-06-20 11:57:03.071	2022-06-20 11:57:03.071	\N	\N
34	plugin::users-permissions.advanced-settings.read	\N	{}	[]	2022-06-20 11:57:03.077	2022-06-20 11:57:03.077	\N	\N
35	plugin::users-permissions.advanced-settings.update	\N	{}	[]	2022-06-20 11:57:03.084	2022-06-20 11:57:03.084	\N	\N
36	plugin::i18n.locale.create	\N	{}	[]	2022-06-20 11:57:03.09	2022-06-20 11:57:03.09	\N	\N
37	plugin::i18n.locale.read	\N	{}	[]	2022-06-20 11:57:03.098	2022-06-20 11:57:03.098	\N	\N
38	plugin::i18n.locale.update	\N	{}	[]	2022-06-20 11:57:03.105	2022-06-20 11:57:03.105	\N	\N
39	plugin::i18n.locale.delete	\N	{}	[]	2022-06-20 11:57:03.112	2022-06-20 11:57:03.112	\N	\N
40	admin::marketplace.read	\N	{}	[]	2022-06-20 11:57:03.119	2022-06-20 11:57:03.119	\N	\N
41	admin::marketplace.plugins.install	\N	{}	[]	2022-06-20 11:57:03.125	2022-06-20 11:57:03.125	\N	\N
42	admin::marketplace.plugins.uninstall	\N	{}	[]	2022-06-20 11:57:03.132	2022-06-20 11:57:03.132	\N	\N
43	admin::webhooks.create	\N	{}	[]	2022-06-20 11:57:03.138	2022-06-20 11:57:03.138	\N	\N
44	admin::webhooks.read	\N	{}	[]	2022-06-20 11:57:03.145	2022-06-20 11:57:03.145	\N	\N
45	admin::webhooks.update	\N	{}	[]	2022-06-20 11:57:03.152	2022-06-20 11:57:03.152	\N	\N
46	admin::webhooks.delete	\N	{}	[]	2022-06-20 11:57:03.16	2022-06-20 11:57:03.16	\N	\N
47	admin::users.create	\N	{}	[]	2022-06-20 11:57:03.167	2022-06-20 11:57:03.167	\N	\N
48	admin::users.read	\N	{}	[]	2022-06-20 11:57:03.174	2022-06-20 11:57:03.174	\N	\N
49	admin::users.update	\N	{}	[]	2022-06-20 11:57:03.181	2022-06-20 11:57:03.181	\N	\N
50	admin::users.delete	\N	{}	[]	2022-06-20 11:57:03.187	2022-06-20 11:57:03.187	\N	\N
51	admin::roles.create	\N	{}	[]	2022-06-20 11:57:03.194	2022-06-20 11:57:03.194	\N	\N
52	admin::roles.read	\N	{}	[]	2022-06-20 11:57:03.201	2022-06-20 11:57:03.201	\N	\N
53	admin::roles.update	\N	{}	[]	2022-06-20 11:57:03.208	2022-06-20 11:57:03.208	\N	\N
54	admin::roles.delete	\N	{}	[]	2022-06-20 11:57:03.214	2022-06-20 11:57:03.214	\N	\N
55	admin::api-tokens.create	\N	{}	[]	2022-06-20 11:57:03.221	2022-06-20 11:57:03.221	\N	\N
56	admin::api-tokens.read	\N	{}	[]	2022-06-20 11:57:03.228	2022-06-20 11:57:03.228	\N	\N
57	admin::api-tokens.update	\N	{}	[]	2022-06-20 11:57:03.235	2022-06-20 11:57:03.235	\N	\N
58	admin::api-tokens.delete	\N	{}	[]	2022-06-20 11:57:03.242	2022-06-20 11:57:03.242	\N	\N
59	admin::project-settings.update	\N	{}	[]	2022-06-20 11:57:03.249	2022-06-20 11:57:03.249	\N	\N
60	admin::project-settings.read	\N	{}	[]	2022-06-20 11:57:03.256	2022-06-20 11:57:03.256	\N	\N
64	plugin::content-manager.explorer.delete	api::main.main	{"locales": ["en", "tk", "ru"]}	[]	2022-06-20 12:04:12.854	2022-06-20 12:04:12.854	\N	\N
73	plugin::content-manager.explorer.create	api::local.local	{"fields": ["name"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 12:16:35.843	2022-06-20 12:16:35.843	\N	\N
74	plugin::content-manager.explorer.read	api::local.local	{"fields": ["name"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 12:16:35.862	2022-06-20 12:16:35.862	\N	\N
75	plugin::content-manager.explorer.update	api::local.local	{"fields": ["name"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 12:16:35.878	2022-06-20 12:16:35.878	\N	\N
76	plugin::content-manager.explorer.delete	api::local.local	{"locales": ["en", "tk", "ru"]}	[]	2022-06-20 12:16:35.895	2022-06-20 12:16:35.895	\N	\N
80	plugin::content-manager.explorer.delete	api::navigation.navigation	{"locales": ["en", "tk", "ru"]}	[]	2022-06-20 12:16:51.889	2022-06-20 12:16:51.889	\N	\N
209	plugin::content-manager.explorer.delete	api::brand.brand	{"locales": ["en", "tk", "ru"]}	[]	2022-06-24 10:58:43.361	2022-06-24 10:58:43.361	\N	\N
93	plugin::content-manager.explorer.delete	api::service-list.service-list	{"locales": ["en", "tk", "ru"]}	[]	2022-06-20 12:44:32.064	2022-06-20 12:44:32.064	\N	\N
100	plugin::content-manager.explorer.delete	api::product-list.product-list	{"locales": ["en", "tk", "ru"]}	[]	2022-06-20 12:56:35.231	2022-06-20 12:56:35.231	\N	\N
108	plugin::content-manager.explorer.create	api::certificate-list.certificate-list	{"fields": ["img"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 13:13:44.302	2022-06-20 13:13:44.302	\N	\N
109	plugin::content-manager.explorer.read	api::certificate-list.certificate-list	{"fields": ["img"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 13:13:44.329	2022-06-20 13:13:44.329	\N	\N
110	plugin::content-manager.explorer.update	api::certificate-list.certificate-list	{"fields": ["img"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 13:13:44.356	2022-06-20 13:13:44.356	\N	\N
111	plugin::content-manager.explorer.delete	api::certificate-list.certificate-list	{"locales": ["en", "tk", "ru"]}	[]	2022-06-20 13:13:44.379	2022-06-20 13:13:44.379	\N	\N
281	plugin::content-manager.explorer.create	api::navigation.navigation	{"fields": ["name", "href", "sort_id"], "locales": ["en", "tk", "ru"]}	[]	2022-06-27 17:12:34.798	2022-06-27 17:12:34.798	\N	\N
282	plugin::content-manager.explorer.read	api::navigation.navigation	{"fields": ["name", "href", "sort_id"], "locales": ["en", "tk", "ru"]}	[]	2022-06-27 17:12:34.808	2022-06-27 17:12:34.808	\N	\N
283	plugin::content-manager.explorer.update	api::navigation.navigation	{"fields": ["name", "href", "sort_id"], "locales": ["en", "tk", "ru"]}	[]	2022-06-27 17:12:34.816	2022-06-27 17:12:34.816	\N	\N
284	plugin::content-manager.explorer.create	api::service-list.service-list	{"fields": ["img", "heading", "description", "sort_id"], "locales": ["en", "tk", "ru"]}	[]	2022-06-28 12:06:40.428	2022-06-28 12:06:40.428	\N	\N
285	plugin::content-manager.explorer.read	api::service-list.service-list	{"fields": ["img", "heading", "description", "sort_id"], "locales": ["en", "tk", "ru"]}	[]	2022-06-28 12:06:40.438	2022-06-28 12:06:40.438	\N	\N
286	plugin::content-manager.explorer.update	api::service-list.service-list	{"fields": ["img", "heading", "description", "sort_id"], "locales": ["en", "tk", "ru"]}	[]	2022-06-28 12:06:40.446	2022-06-28 12:06:40.446	\N	\N
138	plugin::content-manager.explorer.delete	api::layout.layout	{"locales": ["en", "tk", "ru"]}	[]	2022-06-20 14:44:24.494	2022-06-20 14:44:24.494	\N	\N
154	plugin::documentation.read	\N	{}	[]	2022-06-20 15:00:12.222	2022-06-20 15:00:12.222	\N	\N
155	plugin::documentation.settings.update	\N	{}	[]	2022-06-20 15:00:12.231	2022-06-20 15:00:12.231	\N	\N
156	plugin::documentation.settings.regenerate	\N	{}	[]	2022-06-20 15:00:12.239	2022-06-20 15:00:12.239	\N	\N
157	plugin::documentation.settings.read	\N	{}	[]	2022-06-20 15:00:12.247	2022-06-20 15:00:12.247	\N	\N
200	plugin::content-manager.explorer.create	api::product-list.product-list	{"fields": ["img", "description", "brand"], "locales": ["en", "tk", "ru"]}	[]	2022-06-24 10:50:35.003	2022-06-24 10:50:35.003	\N	\N
202	plugin::content-manager.explorer.read	api::product-list.product-list	{"fields": ["img", "description", "brand"], "locales": ["en", "tk", "ru"]}	[]	2022-06-24 10:50:35.02	2022-06-24 10:50:35.02	\N	\N
204	plugin::content-manager.explorer.update	api::product-list.product-list	{"fields": ["img", "description", "brand"], "locales": ["en", "tk", "ru"]}	[]	2022-06-24 10:50:35.039	2022-06-24 10:50:35.039	\N	\N
299	plugin::content-manager.explorer.delete	api::pagas-service.pagas-service	{"locales": ["en", "tk", "ru"]}	[]	2022-07-06 16:33:22.107	2022-07-06 16:33:22.107	\N	\N
335	plugin::content-manager.explorer.create	api::layout.layout	{"fields": ["navbar.logo", "navbar.locals", "navbar.navigations", "address.address", "number.number", "footer.logo", "footer.description", "footer.title_mail", "footer.mail", "footer_dev.permission", "footer_dev.logo_dev", "footer_dev.logo_dev1", "footer_dev.devBy"], "locales": ["en", "tk", "ru"]}	[]	2022-07-07 12:20:14.75	2022-07-07 12:20:14.75	\N	\N
336	plugin::content-manager.explorer.read	api::layout.layout	{"fields": ["navbar.logo", "navbar.locals", "navbar.navigations", "address.address", "number.number", "footer.logo", "footer.description", "footer.title_mail", "footer.mail", "footer_dev.permission", "footer_dev.logo_dev", "footer_dev.logo_dev1", "footer_dev.devBy"], "locales": ["en", "tk", "ru"]}	[]	2022-07-07 12:20:14.758	2022-07-07 12:20:14.758	\N	\N
337	plugin::content-manager.explorer.update	api::layout.layout	{"fields": ["navbar.logo", "navbar.locals", "navbar.navigations", "address.address", "number.number", "footer.logo", "footer.description", "footer.title_mail", "footer.mail", "footer_dev.permission", "footer_dev.logo_dev", "footer_dev.logo_dev1", "footer_dev.devBy"], "locales": ["en", "tk", "ru"]}	[]	2022-07-07 12:20:14.768	2022-07-07 12:20:14.768	\N	\N
341	plugin::content-manager.explorer.create	api::brand.brand	{"fields": ["name", "product_lists", "description"], "locales": ["en", "tk", "ru"]}	[]	2022-07-07 15:20:18.875	2022-07-07 15:20:18.875	\N	\N
342	plugin::content-manager.explorer.read	api::brand.brand	{"fields": ["name", "product_lists", "description"], "locales": ["en", "tk", "ru"]}	[]	2022-07-07 15:20:18.883	2022-07-07 15:20:18.883	\N	\N
343	plugin::content-manager.explorer.update	api::brand.brand	{"fields": ["name", "product_lists", "description"], "locales": ["en", "tk", "ru"]}	[]	2022-07-07 15:20:18.891	2022-07-07 15:20:18.891	\N	\N
347	plugin::content-manager.explorer.create	api::pagas-service.pagas-service	{"fields": ["name", "description", "under_description", "img1", "img2", "img3", "sort_id", "slug"], "locales": ["en", "tk", "ru"]}	[]	2022-08-10 01:46:53.392	2022-08-10 01:46:53.392	\N	\N
348	plugin::content-manager.explorer.read	api::pagas-service.pagas-service	{"fields": ["name", "description", "under_description", "img1", "img2", "img3", "sort_id", "slug"], "locales": ["en", "tk", "ru"]}	[]	2022-08-10 01:46:53.398	2022-08-10 01:46:53.398	\N	\N
349	plugin::content-manager.explorer.update	api::pagas-service.pagas-service	{"fields": ["name", "description", "under_description", "img1", "img2", "img3", "sort_id", "slug"], "locales": ["en", "tk", "ru"]}	[]	2022-08-10 01:46:53.401	2022-08-10 01:46:53.401	\N	\N
350	plugin::content-manager.explorer.create	api::main.main	{"fields": ["headVideo", "services.heading", "services.service_lists", "product.heading", "product.brands", "about.headImg", "about.heading", "about.under_heading", "about.description", "about.descImg", "certificate.logo", "certificate.under_heading", "certificate.certificate_lists", "certificate.heading", "form.heading", "form.name", "form.message", "form.mail", "form.form_address.address", "form.form_mail.mail", "form.form_number.number", "form.button", "head", "desc", "headButton"], "locales": ["en", "tk", "ru"]}	[]	2022-08-12 12:20:59.407	2022-08-12 12:20:59.407	\N	\N
351	plugin::content-manager.explorer.read	api::main.main	{"fields": ["headVideo", "services.heading", "services.service_lists", "product.heading", "product.brands", "about.headImg", "about.heading", "about.under_heading", "about.description", "about.descImg", "certificate.logo", "certificate.under_heading", "certificate.certificate_lists", "certificate.heading", "form.heading", "form.name", "form.message", "form.mail", "form.form_address.address", "form.form_mail.mail", "form.form_number.number", "form.button", "head", "desc", "headButton"], "locales": ["en", "tk", "ru"]}	[]	2022-08-12 12:20:59.414	2022-08-12 12:20:59.414	\N	\N
352	plugin::content-manager.explorer.update	api::main.main	{"fields": ["headVideo", "services.heading", "services.service_lists", "product.heading", "product.brands", "about.headImg", "about.heading", "about.under_heading", "about.description", "about.descImg", "certificate.logo", "certificate.under_heading", "certificate.certificate_lists", "certificate.heading", "form.heading", "form.name", "form.message", "form.mail", "form.form_address.address", "form.form_mail.mail", "form.form_number.number", "form.button", "head", "desc", "headButton"], "locales": ["en", "tk", "ru"]}	[]	2022-08-12 12:20:59.418	2022-08-12 12:20:59.418	\N	\N
353	plugin::content-manager.explorer.create	plugin::users-permissions.user	{"fields": ["blocked", "confirmationToken", "confirmed", "email", "password", "provider", "resetPasswordToken", "role", "username"]}	[]	2022-08-19 16:19:49.564	2022-08-19 16:19:49.564	\N	\N
354	plugin::content-manager.explorer.read	plugin::users-permissions.user	{"fields": ["blocked", "confirmationToken", "confirmed", "email", "password", "provider", "resetPasswordToken", "role", "username"]}	[]	2022-08-19 16:19:49.571	2022-08-19 16:19:49.571	\N	\N
355	plugin::content-manager.explorer.update	plugin::users-permissions.user	{"fields": ["blocked", "confirmationToken", "confirmed", "email", "password", "provider", "resetPasswordToken", "role", "username"]}	[]	2022-08-19 16:19:49.576	2022-08-19 16:19:49.576	\N	\N
356	plugin::content-manager.explorer.delete	plugin::users-permissions.user	{}	[]	2022-08-19 16:19:49.581	2022-08-19 16:19:49.581	\N	\N
357	plugin::content-manager.explorer.create	api::brand.brand	{"fields": ["description", "name", "product_lists"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.594	2022-08-19 16:19:49.594	\N	\N
358	plugin::content-manager.explorer.read	api::brand.brand	{"fields": ["description", "name", "product_lists"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.598	2022-08-19 16:19:49.598	\N	\N
359	plugin::content-manager.explorer.update	api::brand.brand	{"fields": ["description", "name", "product_lists"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.607	2022-08-19 16:19:49.607	\N	\N
360	plugin::content-manager.explorer.delete	api::brand.brand	{"locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.611	2022-08-19 16:19:49.611	\N	\N
361	plugin::content-manager.explorer.create	api::certificate-list.certificate-list	{"fields": ["img"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.618	2022-08-19 16:19:49.618	\N	\N
362	plugin::content-manager.explorer.read	api::certificate-list.certificate-list	{"fields": ["img"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.624	2022-08-19 16:19:49.624	\N	\N
363	plugin::content-manager.explorer.update	api::certificate-list.certificate-list	{"fields": ["img"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.628	2022-08-19 16:19:49.628	\N	\N
364	plugin::content-manager.explorer.delete	api::certificate-list.certificate-list	{"locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.635	2022-08-19 16:19:49.635	\N	\N
365	plugin::content-manager.explorer.create	api::local.local	{"fields": ["name"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.641	2022-08-19 16:19:49.641	\N	\N
366	plugin::content-manager.explorer.read	api::local.local	{"fields": ["name"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.647	2022-08-19 16:19:49.647	\N	\N
367	plugin::content-manager.explorer.update	api::local.local	{"fields": ["name"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.652	2022-08-19 16:19:49.652	\N	\N
368	plugin::content-manager.explorer.delete	api::local.local	{"locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.657	2022-08-19 16:19:49.657	\N	\N
369	plugin::content-manager.explorer.create	api::navigation.navigation	{"fields": ["href", "name", "sort_id"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.661	2022-08-19 16:19:49.661	\N	\N
370	plugin::content-manager.explorer.read	api::navigation.navigation	{"fields": ["href", "name", "sort_id"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.666	2022-08-19 16:19:49.666	\N	\N
371	plugin::content-manager.explorer.update	api::navigation.navigation	{"fields": ["href", "name", "sort_id"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.671	2022-08-19 16:19:49.671	\N	\N
372	plugin::content-manager.explorer.delete	api::navigation.navigation	{"locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.677	2022-08-19 16:19:49.677	\N	\N
373	plugin::content-manager.explorer.create	api::pagas-service.pagas-service	{"fields": ["description", "img1", "img2", "img3", "name", "slug", "sort_id", "under_description"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.682	2022-08-19 16:19:49.682	\N	\N
374	plugin::content-manager.explorer.read	api::pagas-service.pagas-service	{"fields": ["description", "img1", "img2", "img3", "name", "slug", "sort_id", "under_description"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.686	2022-08-19 16:19:49.686	\N	\N
375	plugin::content-manager.explorer.update	api::pagas-service.pagas-service	{"fields": ["description", "img1", "img2", "img3", "name", "slug", "sort_id", "under_description"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.691	2022-08-19 16:19:49.691	\N	\N
376	plugin::content-manager.explorer.delete	api::pagas-service.pagas-service	{"locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.695	2022-08-19 16:19:49.695	\N	\N
377	plugin::content-manager.explorer.create	api::product-list.product-list	{"fields": ["brand", "description", "img"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.7	2022-08-19 16:19:49.7	\N	\N
378	plugin::content-manager.explorer.read	api::product-list.product-list	{"fields": ["brand", "description", "img"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.705	2022-08-19 16:19:49.705	\N	\N
379	plugin::content-manager.explorer.update	api::product-list.product-list	{"fields": ["brand", "description", "img"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.71	2022-08-19 16:19:49.71	\N	\N
380	plugin::content-manager.explorer.delete	api::product-list.product-list	{"locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.715	2022-08-19 16:19:49.715	\N	\N
381	plugin::content-manager.explorer.create	api::service-list.service-list	{"fields": ["description", "heading", "img", "sort_id"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.72	2022-08-19 16:19:49.72	\N	\N
382	plugin::content-manager.explorer.read	api::service-list.service-list	{"fields": ["description", "heading", "img", "sort_id"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.73	2022-08-19 16:19:49.73	\N	\N
383	plugin::content-manager.explorer.update	api::service-list.service-list	{"fields": ["description", "heading", "img", "sort_id"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.735	2022-08-19 16:19:49.735	\N	\N
384	plugin::content-manager.explorer.delete	api::service-list.service-list	{"locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.739	2022-08-19 16:19:49.739	\N	\N
412	plugin::content-manager.explorer.delete	api::navigation.navigation	{"locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.231	2022-08-19 16:20:53.231	\N	\N
385	plugin::content-manager.explorer.create	api::layout.layout	{"fields": ["address.address", "footer.description", "footer.logo", "footer.mail", "footer.title_mail", "footer_dev.devBy", "footer_dev.logo_dev", "footer_dev.logo_dev1", "footer_dev.permission", "navbar.locals", "navbar.logo", "navbar.navigations", "number.number"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.744	2022-08-19 16:19:49.744	\N	\N
386	plugin::content-manager.explorer.read	api::layout.layout	{"fields": ["address.address", "footer.description", "footer.logo", "footer.mail", "footer.title_mail", "footer_dev.devBy", "footer_dev.logo_dev", "footer_dev.logo_dev1", "footer_dev.permission", "navbar.locals", "navbar.logo", "navbar.navigations", "number.number"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.749	2022-08-19 16:19:49.749	\N	\N
387	plugin::content-manager.explorer.update	api::layout.layout	{"fields": ["address.address", "footer.description", "footer.logo", "footer.mail", "footer.title_mail", "footer_dev.devBy", "footer_dev.logo_dev", "footer_dev.logo_dev1", "footer_dev.permission", "navbar.locals", "navbar.logo", "navbar.navigations", "number.number"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.753	2022-08-19 16:19:49.753	\N	\N
388	plugin::content-manager.explorer.delete	api::layout.layout	{"locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.758	2022-08-19 16:19:49.758	\N	\N
389	plugin::content-manager.explorer.create	api::main.main	{"fields": ["about.descImg", "about.description", "about.headImg", "about.heading", "about.under_heading", "certificate.certificate_lists", "certificate.heading", "certificate.logo", "certificate.under_heading", "desc", "form.button", "form.form_address.address", "form.form_mail.mail", "form.form_number.number", "form.heading", "form.mail", "form.message", "form.name", "head", "headButton", "headVideo", "product.brands", "product.heading", "services.heading", "services.service_lists"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.762	2022-08-19 16:19:49.762	\N	\N
390	plugin::content-manager.explorer.read	api::main.main	{"fields": ["about.descImg", "about.description", "about.headImg", "about.heading", "about.under_heading", "certificate.certificate_lists", "certificate.heading", "certificate.logo", "certificate.under_heading", "desc", "form.button", "form.form_address.address", "form.form_mail.mail", "form.form_number.number", "form.heading", "form.mail", "form.message", "form.name", "head", "headButton", "headVideo", "product.brands", "product.heading", "services.heading", "services.service_lists"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.767	2022-08-19 16:19:49.767	\N	\N
391	plugin::content-manager.explorer.update	api::main.main	{"fields": ["about.descImg", "about.description", "about.headImg", "about.heading", "about.under_heading", "certificate.certificate_lists", "certificate.heading", "certificate.logo", "certificate.under_heading", "desc", "form.button", "form.form_address.address", "form.form_mail.mail", "form.form_number.number", "form.heading", "form.mail", "form.message", "form.name", "head", "headButton", "headVideo", "product.brands", "product.heading", "services.heading", "services.service_lists"], "locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.771	2022-08-19 16:19:49.771	\N	\N
392	plugin::content-manager.explorer.delete	api::main.main	{"locales": ["en", "tk", "ru"]}	[]	2022-08-19 16:19:49.777	2022-08-19 16:19:49.777	\N	\N
393	plugin::content-manager.explorer.create	plugin::users-permissions.user	{"fields": ["blocked", "confirmationToken", "confirmed", "email", "password", "provider", "resetPasswordToken", "role", "username"]}	["admin::is-creator"]	2022-08-19 16:20:52.964	2022-08-19 16:20:52.964	\N	\N
394	plugin::content-manager.explorer.read	plugin::users-permissions.user	{"fields": ["blocked", "confirmationToken", "confirmed", "email", "password", "provider", "resetPasswordToken", "role", "username"]}	["admin::is-creator"]	2022-08-19 16:20:52.97	2022-08-19 16:20:52.97	\N	\N
395	plugin::content-manager.explorer.update	plugin::users-permissions.user	{"fields": ["blocked", "confirmationToken", "confirmed", "email", "password", "provider", "resetPasswordToken", "role", "username"]}	["admin::is-creator"]	2022-08-19 16:20:52.975	2022-08-19 16:20:52.975	\N	\N
396	plugin::content-manager.explorer.delete	plugin::users-permissions.user	{}	["admin::is-creator"]	2022-08-19 16:20:52.98	2022-08-19 16:20:52.98	\N	\N
397	plugin::content-manager.explorer.create	api::brand.brand	{"fields": ["description", "name", "product_lists"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:52.988	2022-08-19 16:20:52.988	\N	\N
398	plugin::content-manager.explorer.read	api::brand.brand	{"fields": ["description", "name", "product_lists"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:52.994	2022-08-19 16:20:52.994	\N	\N
399	plugin::content-manager.explorer.update	api::brand.brand	{"fields": ["description", "name", "product_lists"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:52.999	2022-08-19 16:20:52.999	\N	\N
400	plugin::content-manager.explorer.delete	api::brand.brand	{"locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.005	2022-08-19 16:20:53.005	\N	\N
401	plugin::content-manager.explorer.create	api::certificate-list.certificate-list	{"fields": ["img"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.017	2022-08-19 16:20:53.017	\N	\N
402	plugin::content-manager.explorer.read	api::certificate-list.certificate-list	{"fields": ["img"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.022	2022-08-19 16:20:53.022	\N	\N
403	plugin::content-manager.explorer.update	api::certificate-list.certificate-list	{"fields": ["img"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.026	2022-08-19 16:20:53.026	\N	\N
404	plugin::content-manager.explorer.delete	api::certificate-list.certificate-list	{"locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.034	2022-08-19 16:20:53.034	\N	\N
405	plugin::content-manager.explorer.create	api::local.local	{"fields": ["name"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.042	2022-08-19 16:20:53.042	\N	\N
406	plugin::content-manager.explorer.read	api::local.local	{"fields": ["name"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.055	2022-08-19 16:20:53.055	\N	\N
407	plugin::content-manager.explorer.update	api::local.local	{"fields": ["name"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.104	2022-08-19 16:20:53.104	\N	\N
408	plugin::content-manager.explorer.delete	api::local.local	{"locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.139	2022-08-19 16:20:53.139	\N	\N
409	plugin::content-manager.explorer.create	api::navigation.navigation	{"fields": ["href", "name", "sort_id"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.162	2022-08-19 16:20:53.162	\N	\N
410	plugin::content-manager.explorer.read	api::navigation.navigation	{"fields": ["href", "name", "sort_id"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.186	2022-08-19 16:20:53.186	\N	\N
411	plugin::content-manager.explorer.update	api::navigation.navigation	{"fields": ["href", "name", "sort_id"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.214	2022-08-19 16:20:53.214	\N	\N
413	plugin::content-manager.explorer.create	api::pagas-service.pagas-service	{"fields": ["description", "img1", "img2", "img3", "name", "slug", "sort_id", "under_description"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.265	2022-08-19 16:20:53.265	\N	\N
414	plugin::content-manager.explorer.read	api::pagas-service.pagas-service	{"fields": ["description", "img1", "img2", "img3", "name", "slug", "sort_id", "under_description"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.27	2022-08-19 16:20:53.27	\N	\N
415	plugin::content-manager.explorer.update	api::pagas-service.pagas-service	{"fields": ["description", "img1", "img2", "img3", "name", "slug", "sort_id", "under_description"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.275	2022-08-19 16:20:53.275	\N	\N
416	plugin::content-manager.explorer.delete	api::pagas-service.pagas-service	{"locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.279	2022-08-19 16:20:53.279	\N	\N
417	plugin::content-manager.explorer.create	api::product-list.product-list	{"fields": ["brand", "description", "img"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.284	2022-08-19 16:20:53.284	\N	\N
418	plugin::content-manager.explorer.read	api::product-list.product-list	{"fields": ["brand", "description", "img"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.288	2022-08-19 16:20:53.288	\N	\N
419	plugin::content-manager.explorer.update	api::product-list.product-list	{"fields": ["brand", "description", "img"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.293	2022-08-19 16:20:53.293	\N	\N
420	plugin::content-manager.explorer.delete	api::product-list.product-list	{"locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.297	2022-08-19 16:20:53.297	\N	\N
421	plugin::content-manager.explorer.create	api::service-list.service-list	{"fields": ["description", "heading", "img", "sort_id"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.308	2022-08-19 16:20:53.308	\N	\N
422	plugin::content-manager.explorer.read	api::service-list.service-list	{"fields": ["description", "heading", "img", "sort_id"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.312	2022-08-19 16:20:53.312	\N	\N
423	plugin::content-manager.explorer.update	api::service-list.service-list	{"fields": ["description", "heading", "img", "sort_id"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.317	2022-08-19 16:20:53.317	\N	\N
424	plugin::content-manager.explorer.delete	api::service-list.service-list	{"locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.325	2022-08-19 16:20:53.325	\N	\N
425	plugin::content-manager.explorer.create	api::layout.layout	{"fields": ["address.address", "footer.description", "footer.logo", "footer.mail", "footer.title_mail", "footer_dev.devBy", "footer_dev.logo_dev", "footer_dev.logo_dev1", "footer_dev.permission", "navbar.locals", "navbar.logo", "navbar.navigations", "number.number"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.33	2022-08-19 16:20:53.33	\N	\N
426	plugin::content-manager.explorer.read	api::layout.layout	{"fields": ["address.address", "footer.description", "footer.logo", "footer.mail", "footer.title_mail", "footer_dev.devBy", "footer_dev.logo_dev", "footer_dev.logo_dev1", "footer_dev.permission", "navbar.locals", "navbar.logo", "navbar.navigations", "number.number"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.334	2022-08-19 16:20:53.334	\N	\N
427	plugin::content-manager.explorer.update	api::layout.layout	{"fields": ["address.address", "footer.description", "footer.logo", "footer.mail", "footer.title_mail", "footer_dev.devBy", "footer_dev.logo_dev", "footer_dev.logo_dev1", "footer_dev.permission", "navbar.locals", "navbar.logo", "navbar.navigations", "number.number"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.346	2022-08-19 16:20:53.346	\N	\N
428	plugin::content-manager.explorer.delete	api::layout.layout	{"locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.351	2022-08-19 16:20:53.351	\N	\N
429	plugin::content-manager.explorer.create	api::main.main	{"fields": ["about.descImg", "about.description", "about.headImg", "about.heading", "about.under_heading", "certificate.certificate_lists", "certificate.heading", "certificate.logo", "certificate.under_heading", "desc", "form.button", "form.form_address.address", "form.form_mail.mail", "form.form_number.number", "form.heading", "form.mail", "form.message", "form.name", "head", "headButton", "headVideo", "product.brands", "product.heading", "services.heading", "services.service_lists"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.358	2022-08-19 16:20:53.358	\N	\N
430	plugin::content-manager.explorer.read	api::main.main	{"fields": ["about.descImg", "about.description", "about.headImg", "about.heading", "about.under_heading", "certificate.certificate_lists", "certificate.heading", "certificate.logo", "certificate.under_heading", "desc", "form.button", "form.form_address.address", "form.form_mail.mail", "form.form_number.number", "form.heading", "form.mail", "form.message", "form.name", "head", "headButton", "headVideo", "product.brands", "product.heading", "services.heading", "services.service_lists"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.363	2022-08-19 16:20:53.363	\N	\N
431	plugin::content-manager.explorer.update	api::main.main	{"fields": ["about.descImg", "about.description", "about.headImg", "about.heading", "about.under_heading", "certificate.certificate_lists", "certificate.heading", "certificate.logo", "certificate.under_heading", "desc", "form.button", "form.form_address.address", "form.form_mail.mail", "form.form_number.number", "form.heading", "form.mail", "form.message", "form.name", "head", "headButton", "headVideo", "product.brands", "product.heading", "services.heading", "services.service_lists"], "locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.367	2022-08-19 16:20:53.367	\N	\N
432	plugin::content-manager.explorer.delete	api::main.main	{"locales": ["en", "tk", "ru"]}	["admin::is-creator"]	2022-08-19 16:20:53.376	2022-08-19 16:20:53.376	\N	\N
\.


--
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_permissions_role_links (permission_id, role_id) FROM stdin;
1	2
2	2
3	2
4	2
5	2
6	3
7	3
8	3
9	3
10	3
11	1
12	1
13	1
14	1
15	1
16	1
17	1
18	1
19	1
20	1
21	1
22	1
23	1
24	1
25	1
26	1
27	1
28	1
29	1
30	1
31	1
32	1
33	1
34	1
35	1
36	1
37	1
38	1
39	1
40	1
41	1
42	1
43	1
44	1
45	1
46	1
47	1
48	1
49	1
50	1
51	1
52	1
53	1
54	1
55	1
56	1
57	1
58	1
59	1
60	1
281	1
282	1
283	1
284	1
285	1
286	1
64	1
200	1
202	1
204	1
73	1
74	1
75	1
76	1
80	1
209	1
93	1
100	1
108	1
109	1
110	1
111	1
138	1
154	1
155	1
156	1
157	1
299	1
335	1
336	1
337	1
341	1
342	1
343	1
347	1
348	1
349	1
350	1
351	1
352	1
353	2
354	2
355	2
356	2
357	2
358	2
359	2
360	2
361	2
362	2
363	2
364	2
365	2
366	2
367	2
368	2
369	2
370	2
371	2
372	2
373	2
374	2
375	2
376	2
377	2
378	2
379	2
380	2
381	2
382	2
383	2
384	2
385	2
386	2
387	2
388	2
389	2
390	2
391	2
392	2
393	3
394	3
395	3
396	3
397	3
398	3
399	3
400	3
401	3
402	3
403	3
404	3
405	3
406	3
407	3
408	3
409	3
410	3
411	3
412	3
413	3
414	3
415	3
416	3
417	3
418	3
419	3
420	3
421	3
422	3
423	3
424	3
425	3
426	3
427	3
428	3
429	3
430	3
431	3
432	3
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2022-06-20 11:57:02.799	2022-06-20 11:57:02.799	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2022-06-20 11:57:02.809	2022-08-19 16:19:49.459	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2022-06-20 11:57:02.817	2022-08-19 16:20:52.833	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
2	Howur		\N	hi@hillitilsimat.com	$2a$10$J40XDeFSWIF3j5EhlPPU9O.tHmifjvl6UQhXa/cYZ49XiTlUmTxM.	\N	\N	t	f	\N	2022-08-10 01:59:54.522	2022-08-12 15:55:04.182	\N	\N
3	Dovlet	Dovletov	\N	howurtm@gmail.com	$2a$10$qgwMdBdcETbdR15SgYluwuj7w1TlLLaIfSSd8jSTLToJ19JHmTT.a	\N	\N	t	f	\N	2022-08-19 16:07:47.961	2022-08-19 16:13:42.984	\N	\N
\.


--
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_users_roles_links (user_id, role_id) FROM stdin;
2	1
3	3
3	2
\.


--
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.brands (id, name, created_at, updated_at, created_by_id, updated_by_id, locale, description) FROM stdin;
2	ONV	2022-06-24 10:51:13.223	2022-07-07 15:20:44.439	\N	\N	ru	Оптико-теллекомуникационные решения от ONV, с разнообразным выбором свитчей и модулей - отличное решение для вашего бизнеса и автоматизации бизнес процессов. ONV известен своими “Инновационными исследованиями” и “Интеллектуальным производством”.
3	ОБЬ	2022-06-24 10:51:19.885	2022-07-07 15:21:06.888	\N	\N	ru	Наши парнеры предлагают полный диспетчерский комплекс “ОБЬ”, которая состоит из автоматизированной системы контроля, управления, диспетчеризации лифтов, разграничения доступа в лифтовые кабины, систему видеонаблюдения в лифтах, а также комплекс, обеспечивающий связь пожарного поста с пасажирами лифта.
8	ОБЬ	2022-06-24 11:01:09.323	2022-07-07 15:21:17.389	\N	\N	en	Our partners offer a complete dispatch complex "OB", which consists of an automated control system, control, dispatching of elevators, access control to elevator cabins, a video surveillance system in elevators, as well as a complex that provides communication between the fire station and elevator passengers.
4	Tiady	2022-06-24 10:59:05.777	2022-07-07 15:21:33.355	\N	\N	en	“Höwür” is the official distributor of companies - manufacturers of technical and telecommunication equipment. We can offer you "Tiady" cameras and video surveillance systems. Tiandy Technologies offers comprehensive solutions in the field of video surveillance. Tiady's solutions in the field of artificial intelligence, Big Data, video surveillance are focused on security.
7	ONV	2022-06-24 11:00:55.139	2022-08-11 13:01:01.614	\N	2	tk	Switçleriň we modullaryň dürli görnüşlerini saýlamak mümkinçiligi bolan, ONV-dan optiki-telearagatnaşyk çözgütleri siziň işewürligiňiz we işewür-prosessleri awtomatlaşdyrmak üçin örän gowy çözgütdir. ONV özüniň “Innowasion barlaglary” we “Intellektual önümçiligi” bilen tanalýar.
9	ОБЬ	2022-06-24 11:01:13.203	2022-08-11 13:01:33.512	\N	2	tk	Biziň hyzmatdaşlarymyz awtomatlaşdyrylan gözegçilik, dolandyryş, liftleri merkezleşdiriş, lift kabinasyna girişi üpjün ediş ulgamlaryndan, liftlerden wideogözegçilik ulgamlarynda durýan “OB” doly merkezleşdiriji toplumy, şeýle hem ýangyn portunyň lift ýolagçylary bilen aragatnaşygyny üpjün edýän toplumy hödürleýär. 
6	ONV	2022-06-24 11:00:51.789	2022-08-11 14:08:44.736	\N	2	en	Optical telecom solutions from ONV, with a diverse selection of switches and modules, is an excellent solution for your business and business process automation.  ONV is known for its "Innovative Research" and "Smart Manufacturing".
1	Tiady	2022-06-24 10:51:06.897	2022-08-12 11:39:59.991	\N	2	ru	“Höwür” - официальный дистрибьютер компаний - производителей технического и телекоммуникационного оборудования. Мы можем предложить Вам камеры и системы видеонаблюдения “Tiady”. Tiandy Technologies предлагает комплексные решения в сфере видеонаблюдения. Решения Tiady в области искусственного интеллекта, Big Data, видеонаблюдения ориентированы на безопасность.
5	Tiady	2022-06-24 10:59:10.114	2022-08-12 11:40:05.582	\N	2	tk	“Höwür” – tehniki we telearagatnaşyk enjamlaryny öndüriji kompaniýalaryň resmi distribýutory bolup durýar. Biz Size “Tiady” wideogözegçilik kameralaryny we ulgamlaryny teklip edmäge mümkinçiligimiz bar. Tiandy Teсhnologies wideogözegçilik pudagynda toplumlaýyn çözgüleri hödürleýär. Emeli intellekt, Big Data, wideogözegçilik pudagynda Tiady çözgütleri howpsuzlyga gönükdirilen.
\.


--
-- Data for Name: brands_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.brands_localizations_links (brand_id, inv_brand_id) FROM stdin;
5	4
5	1
1	5
1	4
4	5
4	1
7	6
7	2
2	7
2	6
6	7
6	2
9	8
9	3
3	9
3	8
8	9
8	3
\.


--
-- Data for Name: certificate_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.certificate_lists (id, created_at, updated_at, created_by_id, updated_by_id, locale) FROM stdin;
7	2022-06-24 15:13:22.188	2022-06-24 15:13:22.188	\N	\N	tk
1	2022-06-20 14:23:24.256	2022-06-24 15:13:22.247	\N	\N	ru
6	2022-06-24 15:13:19.599	2022-06-24 15:13:22.25	\N	\N	en
9	2022-06-24 15:13:30.425	2022-06-24 15:13:30.425	\N	\N	tk
2	2022-06-20 14:23:31.128	2022-06-24 15:13:30.489	\N	\N	ru
8	2022-06-24 15:13:28.125	2022-06-24 15:13:30.49	\N	\N	en
11	2022-06-24 15:13:37.453	2022-06-24 15:13:37.453	\N	\N	tk
3	2022-06-20 14:23:37.956	2022-06-24 15:13:37.491	\N	\N	ru
10	2022-06-24 15:13:34.666	2022-06-24 15:13:37.492	\N	\N	en
13	2022-06-24 15:13:53.422	2022-06-24 15:13:53.422	\N	\N	tk
4	2022-06-20 14:23:43.833	2022-06-24 15:13:53.456	\N	\N	ru
12	2022-06-24 15:13:50.791	2022-06-24 15:13:53.457	\N	\N	en
15	2022-06-24 15:14:02.704	2022-06-24 15:14:02.704	\N	\N	tk
5	2022-06-20 14:23:50.838	2022-06-24 15:14:02.749	\N	\N	ru
14	2022-06-24 15:14:00.483	2022-06-24 15:14:02.75	\N	\N	en
\.


--
-- Data for Name: certificate_lists_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.certificate_lists_localizations_links (certificate_list_id, inv_certificate_list_id) FROM stdin;
7	6
7	1
1	7
1	6
6	7
6	1
9	8
9	2
2	9
2	8
8	9
8	2
11	10
11	3
3	11
3	10
10	11
10	3
13	12
13	4
4	13
4	12
12	13
12	4
15	14
15	5
5	15
5	14
14	15
14	5
\.


--
-- Data for Name: components_about_abouts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_about_abouts (id, heading, under_heading, description) FROM stdin;
2	About Us	“Höwür” has all the necessary skills.	Individual enterprise “Höwür” was founded in 2016 y. Having established ourselves in the market as a reliable contractor for construction works, we design buildings and networks, build commercial, civil facilities, as well as industrial facilities, equip them with high-tech equipment. We work taking into account all construction, fire, technical standards and norms and guarantee the quality and safety of our facilities.
3	Biz hakynda	“Höwür” kärhanasynyň ähli zerur bolan başarnyklary bar.	“Höwür” Hususy kärhanasy 2016-njy ýylda esaslandyryldy. Gurluşyk işlerini ýerine ýetirmek boýunça ygtybarly potratçy hökmünde özümizi bazarda tanatmak bilen, biz binalary we torlary taslamalaşdyrýarys, täjirçilik, raýat desgalaryny, şeýle hem senagat desgalaryny gurýarys, olary ýokary tehnologiki enjamlar bilen enjamlaşdyrýarys. Biz ähli gurluşyk, ýangyn, tehniki standartlara we kadalara laýyklykda işleýäris we desgalarymyzyň hilini we howpsuzlygyny kepillendirýäris.
1	О нас	“Höwür” имеет все необходимые функции	Индивидуальное предприятие “Höwür” было основано в 2016 году. Зарекомендовав себя на рынке, как надежный подрядчик по выполнению строительных работ, мы проектируем зданиям и сети, строим коммерческие, гражданские объекты, а также промышленные объекты, оснащаем их высокотехнологическим оборудованием. Мы работаем с учетом всех строительных, пожарных, технических стандартов и норм и гарантируем качество и безопасность наших объектов.
\.


--
-- Data for Name: components_certificate_certificates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_certificate_certificates (id, under_heading, heading) FROM stdin;
2	\N	Licenses and Certificates
3		Ygtyýarnamalar we sertifikatlar
1	Сертификаты, полученные нашей компанией на сегодняшний день	Лицензии и Сертификаты
\.


--
-- Data for Name: components_certificate_certificates_certificate_lists_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_certificate_certificates_certificate_lists_links (certificate_id, certificate_list_id) FROM stdin;
2	6
2	8
2	10
2	12
2	14
3	7
3	9
3	11
3	13
3	15
1	1
1	2
1	3
1	4
1	5
\.


--
-- Data for Name: components_contacts_addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_contacts_addresses (id, address) FROM stdin;
1	Туркменистан / Ашгабад, Парахат 1, Здание 68
6	Turkmenistan, Ashgabad, Archabil Avenue, Building 55
7	Türkmenistan, Aşgabad, Arçabil şaýoly, 55-nji bina
3	Туркменистан / Ашгабад, проспект Арчабиль, Здание 55 
4	Turkmenistan / Ashgabat, Archabil Avenue, Building 55
5	Türkmenistan / Aşgabat, Arçabil şaýoly, 55-nji bina
2	Туркменистан / Ашгабад, проспект Арчабиль, Здание 55 
\.


--
-- Data for Name: components_contacts_mail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_contacts_mail (id, mail) FROM stdin;
2	howur@gmail.com
3	howur@gmail.com
1	howurtm@gmail.com
\.


--
-- Data for Name: components_contacts_phone_numbers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_contacts_phone_numbers (id, number) FROM stdin;
1	+993 65039539
6	+993 65 80-80-51 | +993 12 48-08-12
7	+993 65 80-80-51 | +993 12 48-08-12
3	+993 12 48-08-12
4	+993 12 48-08-12
5	+993 12 48-08-12
2	+993 65 80-80-51| +993 12 48-08-12
\.


--
-- Data for Name: components_footer_footer_devs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_footer_footer_devs (id, permission, dev_by) FROM stdin;
1	©2022 Höwür. Все права защищены.	Developed by
2	©2022 Höwür. All Rights Reserved.	Developed by
3	©2022 Höwür. Ähli hukuklar goralan.	Developed by
\.


--
-- Data for Name: components_footer_footer_mains; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_footer_footer_mains (id, description, title_mail, mail) FROM stdin;
1	Индивидуальное предприятие “Höwür” - строительная компания, объединяющая талантливых инженеров, проектировщиков, строителей. Вместе мы строим будущее.	Электронная почта 	howurtm@gmail.com
2	Individual enterprise "Höwür" is a construction company that brings together talented engineers, designers, builders. We are building the future together.	Email	howurtm@gmail.com
3	“Höwür” Hususy kärhanasy – zehinli inženerleri, taslamalaşdyryjylary, gurluşykçylary jemleýän gurluşyk kompaniýasydyr. Bilelikde biz geljegi gurýarys. 	E-poçta iberiň	howurtm@gmail.com
\.


--
-- Data for Name: components_form_form_mains; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_form_form_mains (id, heading, name, message, mail, button) FROM stdin;
2	Do you have any questions? Contact us.	Full name	Enter your message	Email	Send
3	Soraglaryňyz bar bolsa, biz bilen habarlaşyň.	Doly ady	Habaryňyzy giriziň	E-poçta iberiň	Iber
1	Остались вопросы? Свяжитесь с нами.	ФИО	Введите сообщение	Введите адрес электронной почты	Отправить
\.


--
-- Data for Name: components_form_form_mains_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_form_form_mains_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
154	2	6	contacts.address	form_address	1
155	2	2	contacts.mail	form_mail	1
156	2	6	contacts.phone-number	form_number	1
157	3	7	contacts.address	form_address	1
158	3	3	contacts.mail	form_mail	1
159	3	7	contacts.phone-number	form_number	1
169	1	2	contacts.address	form_address	1
170	1	1	contacts.mail	form_mail	1
171	1	2	contacts.phone-number	form_number	1
\.


--
-- Data for Name: components_navbar_header_navbars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_navbar_header_navbars (id) FROM stdin;
1
2
3
4
\.


--
-- Data for Name: components_navbar_header_navbars_locals_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_navbar_header_navbars_locals_links (navbar_id, local_id) FROM stdin;
1	1
1	2
1	3
2	1
2	2
2	3
3	4
3	6
3	8
4	5
4	7
4	9
\.


--
-- Data for Name: components_navbar_header_navbars_navigations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_navbar_header_navbars_navigations_links (navbar_id, navigation_id) FROM stdin;
2	5
2	6
2	7
2	8
2	9
3	10
3	12
3	14
3	16
3	18
4	11
4	13
4	15
4	17
4	19
\.


--
-- Data for Name: components_products_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_products_products (id, heading) FROM stdin;
2	Our products
3	Biziň önümlerimiz
1	Наши продукты
\.


--
-- Data for Name: components_products_products_brands_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_products_products_brands_links (product_id, brand_id) FROM stdin;
2	4
2	6
2	8
3	5
3	7
3	9
1	1
1	2
1	3
\.


--
-- Data for Name: components_services_services; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_services_services (id, heading) FROM stdin;
2	Our services
3	Biziň hyzmatlarymyz
1	Наши услуги
\.


--
-- Data for Name: components_services_services_service_lists_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_services_services_service_lists_links (services_id, service_list_id) FROM stdin;
2	7
2	9
2	11
2	13
2	15
2	17
3	8
3	10
3	12
3	14
3	16
3	18
1	1
1	2
1	3
1	4
1	5
1	6
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
74	benjamin-child-GWe0dlVD9e0-unsplash.jpg	benjamin-child-GWe0dlVD9e0-unsplash.jpg	benjamin-child-GWe0dlVD9e0-unsplash.jpg	5184	3456	{"large": {"ext": ".jpg", "url": "/uploads/large_benjamin_child_G_We0dl_VD_9e0_unsplash_9d670ebb99.jpg", "hash": "large_benjamin_child_G_We0dl_VD_9e0_unsplash_9d670ebb99", "mime": "image/jpeg", "name": "large_benjamin-child-GWe0dlVD9e0-unsplash.jpg", "path": null, "size": 89.39, "width": 1000, "height": 667}, "small": {"ext": ".jpg", "url": "/uploads/small_benjamin_child_G_We0dl_VD_9e0_unsplash_9d670ebb99.jpg", "hash": "small_benjamin_child_G_We0dl_VD_9e0_unsplash_9d670ebb99", "mime": "image/jpeg", "name": "small_benjamin-child-GWe0dlVD9e0-unsplash.jpg", "path": null, "size": 28.01, "width": 500, "height": 333}, "medium": {"ext": ".jpg", "url": "/uploads/medium_benjamin_child_G_We0dl_VD_9e0_unsplash_9d670ebb99.jpg", "hash": "medium_benjamin_child_G_We0dl_VD_9e0_unsplash_9d670ebb99", "mime": "image/jpeg", "name": "medium_benjamin-child-GWe0dlVD9e0-unsplash.jpg", "path": null, "size": 55.98, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_benjamin_child_G_We0dl_VD_9e0_unsplash_9d670ebb99.jpg", "hash": "thumbnail_benjamin_child_G_We0dl_VD_9e0_unsplash_9d670ebb99", "mime": "image/jpeg", "name": "thumbnail_benjamin-child-GWe0dlVD9e0-unsplash.jpg", "path": null, "size": 8.12, "width": 234, "height": 156}}	benjamin_child_G_We0dl_VD_9e0_unsplash_9d670ebb99	.jpg	image/jpeg	1598.49	/uploads/benjamin_child_G_We0dl_VD_9e0_unsplash_9d670ebb99.jpg	\N	local	\N	2022-08-17 15:57:33.198	2022-08-17 15:57:33.198	2	2
78	pexels-thirdman-5584052 1.png	pexels-thirdman-5584052 1.png	pexels-thirdman-5584052 1.png	1276	876	{"large": {"ext": ".png", "url": "/uploads/large_pexels_thirdman_5584052_1_17bfad98be.png", "hash": "large_pexels_thirdman_5584052_1_17bfad98be", "mime": "image/png", "name": "large_pexels-thirdman-5584052 1.png", "path": null, "size": 732.17, "width": 1000, "height": 687}, "small": {"ext": ".png", "url": "/uploads/small_pexels_thirdman_5584052_1_17bfad98be.png", "hash": "small_pexels_thirdman_5584052_1_17bfad98be", "mime": "image/png", "name": "small_pexels-thirdman-5584052 1.png", "path": null, "size": 202.65, "width": 500, "height": 343}, "medium": {"ext": ".png", "url": "/uploads/medium_pexels_thirdman_5584052_1_17bfad98be.png", "hash": "medium_pexels_thirdman_5584052_1_17bfad98be", "mime": "image/png", "name": "medium_pexels-thirdman-5584052 1.png", "path": null, "size": 430.22, "width": 750, "height": 515}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_pexels_thirdman_5584052_1_17bfad98be.png", "hash": "thumbnail_pexels_thirdman_5584052_1_17bfad98be", "mime": "image/png", "name": "thumbnail_pexels-thirdman-5584052 1.png", "path": null, "size": 47.07, "width": 227, "height": 156}}	pexels_thirdman_5584052_1_17bfad98be	.png	image/png	345.61	/uploads/pexels_thirdman_5584052_1_17bfad98be.png	\N	local	\N	2022-08-17 15:59:13.268	2022-08-17 15:59:13.268	2	2
79	8e9650b870b891e34f0c1404f28da48c 1.png	8e9650b870b891e34f0c1404f28da48c 1.png	8e9650b870b891e34f0c1404f28da48c 1.png	1273	876	{"large": {"ext": ".png", "url": "/uploads/large_8e9650b870b891e34f0c1404f28da48c_1_fe193eded3.png", "hash": "large_8e9650b870b891e34f0c1404f28da48c_1_fe193eded3", "mime": "image/png", "name": "large_8e9650b870b891e34f0c1404f28da48c 1.png", "path": null, "size": 1638.53, "width": 1000, "height": 688}, "small": {"ext": ".png", "url": "/uploads/small_8e9650b870b891e34f0c1404f28da48c_1_fe193eded3.png", "hash": "small_8e9650b870b891e34f0c1404f28da48c_1_fe193eded3", "mime": "image/png", "name": "small_8e9650b870b891e34f0c1404f28da48c 1.png", "path": null, "size": 444.23, "width": 500, "height": 344}, "medium": {"ext": ".png", "url": "/uploads/medium_8e9650b870b891e34f0c1404f28da48c_1_fe193eded3.png", "hash": "medium_8e9650b870b891e34f0c1404f28da48c_1_fe193eded3", "mime": "image/png", "name": "medium_8e9650b870b891e34f0c1404f28da48c 1.png", "path": null, "size": 954.41, "width": 750, "height": 516}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_8e9650b870b891e34f0c1404f28da48c_1_fe193eded3.png", "hash": "thumbnail_8e9650b870b891e34f0c1404f28da48c_1_fe193eded3", "mime": "image/png", "name": "thumbnail_8e9650b870b891e34f0c1404f28da48c 1.png", "path": null, "size": 99.37, "width": 227, "height": 156}}	8e9650b870b891e34f0c1404f28da48c_1_fe193eded3	.png	image/png	472.05	/uploads/8e9650b870b891e34f0c1404f28da48c_1_fe193eded3.png	\N	local	\N	2022-08-17 15:59:28.924	2022-08-17 15:59:28.924	2	2
75	annie-spratt-FSFfEQkd1sc-unsplash.jpg	annie-spratt-FSFfEQkd1sc-unsplash.jpg	annie-spratt-FSFfEQkd1sc-unsplash.jpg	4914	3271	{"large": {"ext": ".jpg", "url": "/uploads/large_annie_spratt_FS_Ff_E_Qkd1sc_unsplash_6382afa10d.jpg", "hash": "large_annie_spratt_FS_Ff_E_Qkd1sc_unsplash_6382afa10d", "mime": "image/jpeg", "name": "large_annie-spratt-FSFfEQkd1sc-unsplash.jpg", "path": null, "size": 109.46, "width": 1000, "height": 665}, "small": {"ext": ".jpg", "url": "/uploads/small_annie_spratt_FS_Ff_E_Qkd1sc_unsplash_6382afa10d.jpg", "hash": "small_annie_spratt_FS_Ff_E_Qkd1sc_unsplash_6382afa10d", "mime": "image/jpeg", "name": "small_annie-spratt-FSFfEQkd1sc-unsplash.jpg", "path": null, "size": 35.4, "width": 500, "height": 332}, "medium": {"ext": ".jpg", "url": "/uploads/medium_annie_spratt_FS_Ff_E_Qkd1sc_unsplash_6382afa10d.jpg", "hash": "medium_annie_spratt_FS_Ff_E_Qkd1sc_unsplash_6382afa10d", "mime": "image/jpeg", "name": "medium_annie-spratt-FSFfEQkd1sc-unsplash.jpg", "path": null, "size": 68.88, "width": 750, "height": 499}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_annie_spratt_FS_Ff_E_Qkd1sc_unsplash_6382afa10d.jpg", "hash": "thumbnail_annie_spratt_FS_Ff_E_Qkd1sc_unsplash_6382afa10d", "mime": "image/jpeg", "name": "thumbnail_annie-spratt-FSFfEQkd1sc-unsplash.jpg", "path": null, "size": 10.96, "width": 235, "height": 156}}	annie_spratt_FS_Ff_E_Qkd1sc_unsplash_6382afa10d	.jpg	image/jpeg	2644.99	/uploads/annie_spratt_FS_Ff_E_Qkd1sc_unsplash_6382afa10d.jpg	\N	local	\N	2022-08-17 15:57:46.199	2022-08-17 15:57:46.199	2	2
7	Frame 6.png	Frame 6.png	Frame 6.png	319	219	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_6_34fa34faba.png", "hash": "thumbnail_Frame_6_34fa34faba", "mime": "image/png", "name": "thumbnail_Frame 6.png", "path": null, "size": 110.61, "width": 227, "height": 156}}	Frame_6_34fa34faba	.png	image/png	63.58	/uploads/Frame_6_34fa34faba.png	\N	local	\N	2022-06-20 12:48:32.907	2022-06-20 12:48:32.907	\N	\N
8	840px-I3YLC1PFI 1.png	840px-I3YLC1PFI 1.png	840px-I3YLC1PFI 1.png	835	604	{"small": {"ext": ".png", "url": "/uploads/small_840px_I3_YLC_1_PFI_1_3f6619bffd.png", "hash": "small_840px_I3_YLC_1_PFI_1_3f6619bffd", "mime": "image/png", "name": "small_840px-I3YLC1PFI 1.png", "path": null, "size": 443.6, "width": 500, "height": 362}, "medium": {"ext": ".png", "url": "/uploads/medium_840px_I3_YLC_1_PFI_1_3f6619bffd.png", "hash": "medium_840px_I3_YLC_1_PFI_1_3f6619bffd", "mime": "image/png", "name": "medium_840px-I3YLC1PFI 1.png", "path": null, "size": 939.43, "width": 750, "height": 543}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_840px_I3_YLC_1_PFI_1_3f6619bffd.png", "hash": "thumbnail_840px_I3_YLC_1_PFI_1_3f6619bffd", "mime": "image/png", "name": "thumbnail_840px-I3YLC1PFI 1.png", "path": null, "size": 91.2, "width": 216, "height": 156}}	840px_I3_YLC_1_PFI_1_3f6619bffd	.png	image/png	187.63	/uploads/840px_I3_YLC_1_PFI_1_3f6619bffd.png	\N	local	\N	2022-06-20 12:57:34.381	2022-06-20 12:57:34.381	\N	\N
76	ivan-bandura-0-no6ywKMPY-unsplash.jpg	ivan-bandura-0-no6ywKMPY-unsplash.jpg	ivan-bandura-0-no6ywKMPY-unsplash.jpg	3548	2660	{"large": {"ext": ".jpg", "url": "/uploads/large_ivan_bandura_0_no6yw_KMPY_unsplash_1b3ce6ffa3.jpg", "hash": "large_ivan_bandura_0_no6yw_KMPY_unsplash_1b3ce6ffa3", "mime": "image/jpeg", "name": "large_ivan-bandura-0-no6ywKMPY-unsplash.jpg", "path": null, "size": 230.1, "width": 1000, "height": 750}, "small": {"ext": ".jpg", "url": "/uploads/small_ivan_bandura_0_no6yw_KMPY_unsplash_1b3ce6ffa3.jpg", "hash": "small_ivan_bandura_0_no6yw_KMPY_unsplash_1b3ce6ffa3", "mime": "image/jpeg", "name": "small_ivan-bandura-0-no6ywKMPY-unsplash.jpg", "path": null, "size": 64.93, "width": 500, "height": 375}, "medium": {"ext": ".jpg", "url": "/uploads/medium_ivan_bandura_0_no6yw_KMPY_unsplash_1b3ce6ffa3.jpg", "hash": "medium_ivan_bandura_0_no6yw_KMPY_unsplash_1b3ce6ffa3", "mime": "image/jpeg", "name": "medium_ivan-bandura-0-no6ywKMPY-unsplash.jpg", "path": null, "size": 137.03, "width": 750, "height": 562}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_ivan_bandura_0_no6yw_KMPY_unsplash_1b3ce6ffa3.jpg", "hash": "thumbnail_ivan_bandura_0_no6yw_KMPY_unsplash_1b3ce6ffa3", "mime": "image/jpeg", "name": "thumbnail_ivan-bandura-0-no6ywKMPY-unsplash.jpg", "path": null, "size": 13.27, "width": 208, "height": 156}}	ivan_bandura_0_no6yw_KMPY_unsplash_1b3ce6ffa3	.jpg	image/jpeg	2547.88	/uploads/ivan_bandura_0_no6yw_KMPY_unsplash_1b3ce6ffa3.jpg	\N	local	\N	2022-08-17 15:58:30.548	2022-08-17 15:58:30.548	2	2
77	Lift 1.png	Lift 1.png	Lift 1.png	1276	876	{"large": {"ext": ".png", "url": "/uploads/large_Lift_1_ba4d35b464.png", "hash": "large_Lift_1_ba4d35b464", "mime": "image/png", "name": "large_Lift 1.png", "path": null, "size": 945.23, "width": 1000, "height": 687}, "small": {"ext": ".png", "url": "/uploads/small_Lift_1_ba4d35b464.png", "hash": "small_Lift_1_ba4d35b464", "mime": "image/png", "name": "small_Lift 1.png", "path": null, "size": 294.16, "width": 500, "height": 343}, "medium": {"ext": ".png", "url": "/uploads/medium_Lift_1_ba4d35b464.png", "hash": "medium_Lift_1_ba4d35b464", "mime": "image/png", "name": "medium_Lift 1.png", "path": null, "size": 583.24, "width": 750, "height": 515}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Lift_1_ba4d35b464.png", "hash": "thumbnail_Lift_1_ba4d35b464", "mime": "image/png", "name": "thumbnail_Lift 1.png", "path": null, "size": 74.89, "width": 227, "height": 156}}	Lift_1_ba4d35b464	.png	image/png	270.85	/uploads/Lift_1_ba4d35b464.png	\N	local	\N	2022-08-17 15:58:57.833	2022-08-17 15:58:57.833	2	2
80	teplovye-pozharnye-izveshchateli-harakteristiki-vidy-vybor-ekspluataciya-43-1024x478 1.png	teplovye-pozharnye-izveshchateli-harakteristiki-vidy-vybor-ekspluataciya-43-1024x478 1.png	teplovye-pozharnye-izveshchateli-harakteristiki-vidy-vybor-ekspluataciya-43-1024x478 1.png	1276	876	{"large": {"ext": ".png", "url": "/uploads/large_teplovye_pozharnye_izveshchateli_harakteristiki_vidy_vybor_ekspluataciya_43_1024x478_1_967c691bf3.png", "hash": "large_teplovye_pozharnye_izveshchateli_harakteristiki_vidy_vybor_ekspluataciya_43_1024x478_1_967c691bf3", "mime": "image/png", "name": "large_teplovye-pozharnye-izveshchateli-harakteristiki-vidy-vybor-ekspluataciya-43-1024x478 1.png", "path": null, "size": 964.86, "width": 1000, "height": 687}, "small": {"ext": ".png", "url": "/uploads/small_teplovye_pozharnye_izveshchateli_harakteristiki_vidy_vybor_ekspluataciya_43_1024x478_1_967c691bf3.png", "hash": "small_teplovye_pozharnye_izveshchateli_harakteristiki_vidy_vybor_ekspluataciya_43_1024x478_1_967c691bf3", "mime": "image/png", "name": "small_teplovye-pozharnye-izveshchateli-harakteristiki-vidy-vybor-ekspluataciya-43-1024x478 1.png", "path": null, "size": 267.21, "width": 500, "height": 343}, "medium": {"ext": ".png", "url": "/uploads/medium_teplovye_pozharnye_izveshchateli_harakteristiki_vidy_vybor_ekspluataciya_43_1024x478_1_967c691bf3.png", "hash": "medium_teplovye_pozharnye_izveshchateli_harakteristiki_vidy_vybor_ekspluataciya_43_1024x478_1_967c691bf3", "mime": "image/png", "name": "medium_teplovye-pozharnye-izveshchateli-harakteristiki-vidy-vybor-ekspluataciya-43-1024x478 1.png", "path": null, "size": 562.56, "width": 750, "height": 515}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_teplovye_pozharnye_izveshchateli_harakteristiki_vidy_vybor_ekspluataciya_43_1024x478_1_967c691bf3.png", "hash": "thumbnail_teplovye_pozharnye_izveshchateli_harakteristiki_vidy_vybor_ekspluataciya_43_1024x478_1_967c691bf3", "mime": "image/png", "name": "thumbnail_teplovye-pozharnye-izveshchateli-harakteristiki-vidy-vybor-ekspluataciya-43-1024x478 1.png", "path": null, "size": 68.6, "width": 227, "height": 156}}	teplovye_pozharnye_izveshchateli_harakteristiki_vidy_vybor_ekspluataciya_43_1024x478_1_967c691bf3	.png	image/png	314.32	/uploads/teplovye_pozharnye_izveshchateli_harakteristiki_vidy_vybor_ekspluataciya_43_1024x478_1_967c691bf3.png	\N	local	\N	2022-08-17 15:59:40.404	2022-08-17 15:59:40.404	2	2
37	Group 2.svg	Group 2.svg	Group 2.svg	\N	\N	\N	Group_2_339089de73	.svg	image/svg+xml	11.03	/uploads/Group_2_339089de73.svg	\N	local	\N	2022-06-23 13:57:38.725	2022-06-23 13:57:38.725	\N	\N
30	Frame 15 (3).png	Frame 15 (3).png	Frame 15 (3).png	316	347	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_15_3_16286e23a9.png", "hash": "thumbnail_Frame_15_3_16286e23a9", "mime": "image/png", "name": "thumbnail_Frame 15 (3).png", "path": null, "size": 29.19, "width": 142, "height": 156}}	Frame_15_3_16286e23a9	.png	image/png	29.40	/uploads/Frame_15_3_16286e23a9.png	\N	local	\N	2022-06-21 13:05:59.604	2022-06-21 13:05:59.604	\N	\N
68	Vector (1).svg	Vector (1).svg	Vector (1).svg	\N	\N	\N	Vector_1_102a476cef	.svg	image/svg+xml	4.24	/uploads/Vector_1_102a476cef.svg	\N	local	\N	2022-06-27 13:46:15.283	2022-06-27 13:46:15.283	\N	\N
33	Frame 16 (1).png	Frame 16 (1).png	Frame 16 (1).png	316	347	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_16_1_e56dc985bf.png", "hash": "thumbnail_Frame_16_1_e56dc985bf", "mime": "image/png", "name": "thumbnail_Frame 16 (1).png", "path": null, "size": 25.65, "width": 142, "height": 156}}	Frame_16_1_e56dc985bf	.png	image/png	26.59	/uploads/Frame_16_1_e56dc985bf.png	\N	local	\N	2022-06-21 13:07:02.421	2022-06-21 13:07:02.421	\N	\N
71	Howur_Hero_lg.mp4	Howur_Hero_lg.mp4	Howur_Hero_lg.mp4	\N	\N	\N	Howur_Hero_lg_045673b807	.mp4	video/mp4	8097.54	/uploads/Howur_Hero_lg_045673b807.mp4	\N	local	\N	2022-06-28 15:07:12.364	2022-06-28 15:07:12.364	\N	\N
1	Vector 3.png	Vector 3.png	Vector 3.png	1920	602	{"large": {"ext": ".png", "url": "/uploads/large_Vector_3_5dec458d0e.png", "hash": "large_Vector_3_5dec458d0e", "mime": "image/png", "name": "large_Vector 3.png", "path": null, "size": 532.48, "width": 1000, "height": 314}, "small": {"ext": ".png", "url": "/uploads/small_Vector_3_5dec458d0e.png", "hash": "small_Vector_3_5dec458d0e", "mime": "image/png", "name": "small_Vector 3.png", "path": null, "size": 153.23, "width": 500, "height": 157}, "medium": {"ext": ".png", "url": "/uploads/medium_Vector_3_5dec458d0e.png", "hash": "medium_Vector_3_5dec458d0e", "mime": "image/png", "name": "medium_Vector 3.png", "path": null, "size": 315.05, "width": 750, "height": 235}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Vector_3_5dec458d0e.png", "hash": "thumbnail_Vector_3_5dec458d0e", "mime": "image/png", "name": "thumbnail_Vector 3.png", "path": null, "size": 44.64, "width": 245, "height": 77}}	Vector_3_5dec458d0e	.png	image/png	323.53	/uploads/Vector_3_5dec458d0e.png	\N	local	\N	2022-06-20 12:06:04.006	2022-06-20 12:06:04.006	\N	\N
4	Frame 9.png	Frame 9.png	Frame 9.png	319	219	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_9_0b52018cfd.png", "hash": "thumbnail_Frame_9_0b52018cfd", "mime": "image/png", "name": "thumbnail_Frame 9.png", "path": null, "size": 68.62, "width": 227, "height": 156}}	Frame_9_0b52018cfd	.png	image/png	29.85	/uploads/Frame_9_0b52018cfd.png	\N	local	\N	2022-06-20 12:48:32.582	2022-06-20 12:48:32.582	\N	\N
5	Frame 7.png	Frame 7.png	Frame 7.png	319	219	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_7_939053538b.png", "hash": "thumbnail_Frame_7_939053538b", "mime": "image/png", "name": "thumbnail_Frame 7.png", "path": null, "size": 82.1, "width": 227, "height": 156}}	Frame_7_939053538b	.png	image/png	40.84	/uploads/Frame_7_939053538b.png	\N	local	\N	2022-06-20 12:48:32.657	2022-06-20 12:48:32.657	\N	\N
6	Frame 8.png	Frame 8.png	Frame 8.png	319	219	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_8_e0c402fe74.png", "hash": "thumbnail_Frame_8_e0c402fe74", "mime": "image/png", "name": "thumbnail_Frame 8.png", "path": null, "size": 100.36, "width": 227, "height": 156}}	Frame_8_e0c402fe74	.png	image/png	54.59	/uploads/Frame_8_e0c402fe74.png	\N	local	\N	2022-06-20 12:48:32.87	2022-06-20 12:48:32.87	\N	\N
9	scale_1200 1.png	scale_1200 1.png	scale_1200 1.png	455	287	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_scale_1200_1_f036b6bf34.png", "hash": "thumbnail_scale_1200_1_f036b6bf34", "mime": "image/png", "name": "thumbnail_scale_1200 1.png", "path": null, "size": 73.02, "width": 245, "height": 155}}	scale_1200_1_f036b6bf34	.png	image/png	48.42	/uploads/scale_1200_1_f036b6bf34.png	\N	local	\N	2022-06-20 12:57:55.149	2022-06-20 12:57:55.149	\N	\N
10	2-4 1.png	2-4 1.png	2-4 1.png	455	287	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_2_4_1_db790c68d1.png", "hash": "thumbnail_2_4_1_db790c68d1", "mime": "image/png", "name": "thumbnail_2-4 1.png", "path": null, "size": 85.9, "width": 245, "height": 155}}	2_4_1_db790c68d1	.png	image/png	61.10	/uploads/2_4_1_db790c68d1.png	\N	local	\N	2022-06-20 12:57:55.375	2022-06-20 12:57:55.375	\N	\N
11	Slide 16_9 - 1.png	Slide 16_9 - 1.png	Slide 16_9 - 1.png	759	425	{"small": {"ext": ".png", "url": "/uploads/small_Slide_16_9_1_1c9a6a3e6b.png", "hash": "small_Slide_16_9_1_1c9a6a3e6b", "mime": "image/png", "name": "small_Slide 16_9 - 1.png", "path": null, "size": 251.97, "width": 500, "height": 280}, "medium": {"ext": ".png", "url": "/uploads/medium_Slide_16_9_1_1c9a6a3e6b.png", "hash": "medium_Slide_16_9_1_1c9a6a3e6b", "mime": "image/png", "name": "medium_Slide 16_9 - 1.png", "path": null, "size": 505.75, "width": 750, "height": 420}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Slide_16_9_1_1c9a6a3e6b.png", "hash": "thumbnail_Slide_16_9_1_1c9a6a3e6b", "mime": "image/png", "name": "thumbnail_Slide 16_9 - 1.png", "path": null, "size": 69.78, "width": 245, "height": 137}}	Slide_16_9_1_1c9a6a3e6b	.png	image/png	138.31	/uploads/Slide_16_9_1_1c9a6a3e6b.png	\N	local	\N	2022-06-20 13:09:21.143	2022-06-20 13:09:21.143	\N	\N
12	Frame 3183468.png	Frame 3183468.png	Frame 3183468.png	620	425	{"small": {"ext": ".png", "url": "/uploads/small_Frame_3183468_1c25e9a07e.png", "hash": "small_Frame_3183468_1c25e9a07e", "mime": "image/png", "name": "small_Frame 3183468.png", "path": null, "size": 381.46, "width": 500, "height": 343}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_3183468_1c25e9a07e.png", "hash": "thumbnail_Frame_3183468_1c25e9a07e", "mime": "image/png", "name": "thumbnail_Frame 3183468.png", "path": null, "size": 89.76, "width": 228, "height": 156}}	Frame_3183468_1c25e9a07e	.png	image/png	145.99	/uploads/Frame_3183468_1c25e9a07e.png	\N	local	\N	2022-06-20 13:09:21.182	2022-06-20 13:09:21.182	\N	\N
18	Vector.svg	Vector.svg	Vector.svg	\N	\N	\N	Vector_d67c2539a1	.svg	image/svg+xml	4.23	/uploads/Vector_d67c2539a1.svg	\N	local	\N	2022-06-20 14:57:57.733	2022-06-20 14:57:57.733	\N	\N
28	Frame 14 (1).png	Frame 14 (1).png	Frame 14 (1).png	316	406	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_14_1_45da6eefe0.png", "hash": "thumbnail_Frame_14_1_45da6eefe0", "mime": "image/png", "name": "thumbnail_Frame 14 (1).png", "path": null, "size": 29.55, "width": 121, "height": 156}}	Frame_14_1_45da6eefe0	.png	image/png	41.54	/uploads/Frame_14_1_45da6eefe0.png	\N	local	\N	2022-06-21 13:04:33.656	2022-06-21 13:04:33.656	\N	\N
29	Frame 14 (2).png	Frame 14 (2).png	Frame 14 (2).png	316	406	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_14_2_f1c7e0263b.png", "hash": "thumbnail_Frame_14_2_f1c7e0263b", "mime": "image/png", "name": "thumbnail_Frame 14 (2).png", "path": null, "size": 31.57, "width": 121, "height": 156}}	Frame_14_2_f1c7e0263b	.png	image/png	37.03	/uploads/Frame_14_2_f1c7e0263b.png	\N	local	\N	2022-06-21 13:05:40.515	2022-06-21 13:05:40.515	\N	\N
19	camera.jpg	camera.jpg	camera.jpg	2480	3506	{"large": {"ext": ".jpg", "url": "/uploads/large_camera_f114541302.jpg", "hash": "large_camera_f114541302", "mime": "image/jpeg", "name": "large_camera.jpg", "path": null, "size": 169.73, "width": 707, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_camera_f114541302.jpg", "hash": "small_camera_f114541302", "mime": "image/jpeg", "name": "small_camera.jpg", "path": null, "size": 46.81, "width": 354, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_camera_f114541302.jpg", "hash": "medium_camera_f114541302", "mime": "image/jpeg", "name": "medium_camera.jpg", "path": null, "size": 102.7, "width": 531, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_camera_f114541302.jpg", "hash": "thumbnail_camera_f114541302", "mime": "image/jpeg", "name": "thumbnail_camera.jpg", "path": null, "size": 5.12, "width": 110, "height": 156}}	camera_f114541302	.jpg	image/jpeg	1024.68	/uploads/camera_f114541302.jpg	\N	local	\N	2022-06-21 13:00:13.07	2022-06-21 13:00:13.07	\N	\N
20	transport.jpg	transport.jpg	transport.jpg	2480	3506	{"large": {"ext": ".jpg", "url": "/uploads/large_transport_751425bf57.jpg", "hash": "large_transport_751425bf57", "mime": "image/jpeg", "name": "large_transport.jpg", "path": null, "size": 163.74, "width": 707, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_transport_751425bf57.jpg", "hash": "small_transport_751425bf57", "mime": "image/jpeg", "name": "small_transport.jpg", "path": null, "size": 44.62, "width": 354, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_transport_751425bf57.jpg", "hash": "medium_transport_751425bf57", "mime": "image/jpeg", "name": "medium_transport.jpg", "path": null, "size": 98.33, "width": 531, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_transport_751425bf57.jpg", "hash": "thumbnail_transport_751425bf57", "mime": "image/jpeg", "name": "thumbnail_transport.jpg", "path": null, "size": 4.73, "width": 110, "height": 156}}	transport_751425bf57	.jpg	image/jpeg	1103.70	/uploads/transport_751425bf57.jpg	\N	local	\N	2022-06-21 13:00:13.124	2022-06-21 13:00:13.124	\N	\N
21	yangyn.jpg	yangyn.jpg	yangyn.jpg	2480	3506	{"large": {"ext": ".jpg", "url": "/uploads/large_yangyn_e4ef67782f.jpg", "hash": "large_yangyn_e4ef67782f", "mime": "image/jpeg", "name": "large_yangyn.jpg", "path": null, "size": 175.95, "width": 707, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_yangyn_e4ef67782f.jpg", "hash": "small_yangyn_e4ef67782f", "mime": "image/jpeg", "name": "small_yangyn.jpg", "path": null, "size": 49.2, "width": 354, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_yangyn_e4ef67782f.jpg", "hash": "medium_yangyn_e4ef67782f", "mime": "image/jpeg", "name": "medium_yangyn.jpg", "path": null, "size": 104.43, "width": 531, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_yangyn_e4ef67782f.jpg", "hash": "thumbnail_yangyn_e4ef67782f", "mime": "image/jpeg", "name": "thumbnail_yangyn.jpg", "path": null, "size": 5.11, "width": 110, "height": 156}}	yangyn_e4ef67782f	.jpg	image/jpeg	1140.13	/uploads/yangyn_e4ef67782f.jpg	\N	local	\N	2022-06-21 13:00:13.167	2022-06-21 13:00:13.167	\N	\N
40	2-4 1 (1).png	2-4 1 (1).png	2-4 1 (1).png	326	287	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_2_4_1_1_96e1b3d035.png", "hash": "thumbnail_2_4_1_1_96e1b3d035", "mime": "image/png", "name": "thumbnail_2-4 1 (1).png", "path": null, "size": 15.94, "width": 177, "height": 156}}	2_4_1_1_96e1b3d035	.png	image/png	8.27	/uploads/2_4_1_1_96e1b3d035.png	\N	local	\N	2022-06-24 10:54:47.572	2022-06-24 10:54:47.572	\N	\N
22	Gurlusyk.jpg	Gurlusyk.jpg	Gurlusyk.jpg	2480	3506	{"large": {"ext": ".jpg", "url": "/uploads/large_Gurlusyk_b6d0b93fb2.jpg", "hash": "large_Gurlusyk_b6d0b93fb2", "mime": "image/jpeg", "name": "large_Gurlusyk.jpg", "path": null, "size": 173.85, "width": 707, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_Gurlusyk_b6d0b93fb2.jpg", "hash": "small_Gurlusyk_b6d0b93fb2", "mime": "image/jpeg", "name": "small_Gurlusyk.jpg", "path": null, "size": 46.35, "width": 354, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_Gurlusyk_b6d0b93fb2.jpg", "hash": "medium_Gurlusyk_b6d0b93fb2", "mime": "image/jpeg", "name": "medium_Gurlusyk.jpg", "path": null, "size": 101.37, "width": 531, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_Gurlusyk_b6d0b93fb2.jpg", "hash": "thumbnail_Gurlusyk_b6d0b93fb2", "mime": "image/jpeg", "name": "thumbnail_Gurlusyk.jpg", "path": null, "size": 5.1, "width": 110, "height": 156}}	Gurlusyk_b6d0b93fb2	.jpg	image/jpeg	1159.54	/uploads/Gurlusyk_b6d0b93fb2.jpg	\N	local	\N	2022-06-21 13:00:13.313	2022-06-21 13:00:13.313	\N	\N
23	Senagat.jpg	Senagat.jpg	Senagat.jpg	2480	3506	{"large": {"ext": ".jpg", "url": "/uploads/large_Senagat_64aea1247c.jpg", "hash": "large_Senagat_64aea1247c", "mime": "image/jpeg", "name": "large_Senagat.jpg", "path": null, "size": 196.58, "width": 707, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_Senagat_64aea1247c.jpg", "hash": "small_Senagat_64aea1247c", "mime": "image/jpeg", "name": "small_Senagat.jpg", "path": null, "size": 50.29, "width": 354, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_Senagat_64aea1247c.jpg", "hash": "medium_Senagat_64aea1247c", "mime": "image/jpeg", "name": "medium_Senagat.jpg", "path": null, "size": 112.35, "width": 531, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_Senagat_64aea1247c.jpg", "hash": "thumbnail_Senagat_64aea1247c", "mime": "image/jpeg", "name": "thumbnail_Senagat.jpg", "path": null, "size": 4.85, "width": 110, "height": 156}}	Senagat_64aea1247c	.jpg	image/jpeg	1316.16	/uploads/Senagat_64aea1247c.jpg	\N	local	\N	2022-06-21 13:00:13.536	2022-06-21 13:00:13.536	\N	\N
24	Frame 15.png	Frame 15.png	Frame 15.png	316	238	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_15_341a037033.png", "hash": "thumbnail_Frame_15_341a037033", "mime": "image/png", "name": "thumbnail_Frame 15.png", "path": null, "size": 63.88, "width": 207, "height": 156}}	Frame_15_341a037033	.png	image/png	32.22	/uploads/Frame_15_341a037033.png	\N	local	\N	2022-06-21 13:01:42.105	2022-06-21 13:01:42.105	\N	\N
25	Frame 14.png	Frame 14.png	Frame 14.png	316	406	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_14_90d148db37.png", "hash": "thumbnail_Frame_14_90d148db37", "mime": "image/png", "name": "thumbnail_Frame 14.png", "path": null, "size": 36.19, "width": 121, "height": 156}}	Frame_14_90d148db37	.png	image/png	47.85	/uploads/Frame_14_90d148db37.png	\N	local	\N	2022-06-21 13:02:11.48	2022-06-21 13:02:11.48	\N	\N
26	Frame 1.png	Frame 1.png	Frame 1.png	316	347	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_1_ce7bf21d17.png", "hash": "thumbnail_Frame_1_ce7bf21d17", "mime": "image/png", "name": "thumbnail_Frame 1.png", "path": null, "size": 55.2, "width": 142, "height": 156}}	Frame_1_ce7bf21d17	.png	image/png	61.14	/uploads/Frame_1_ce7bf21d17.png	\N	local	\N	2022-06-21 13:02:28.738	2022-06-21 13:02:28.738	\N	\N
27	Frame 16.png	Frame 16.png	Frame 16.png	316	347	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_16_81e22a8efd.png", "hash": "thumbnail_Frame_16_81e22a8efd", "mime": "image/png", "name": "thumbnail_Frame 16.png", "path": null, "size": 49.25, "width": 142, "height": 156}}	Frame_16_81e22a8efd	.png	image/png	45.50	/uploads/Frame_16_81e22a8efd.png	\N	local	\N	2022-06-21 13:03:59.552	2022-06-21 13:03:59.552	\N	\N
31	Frame 15 (4).png	Frame 15 (4).png	Frame 15 (4).png	316	238	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_15_4_4caa055d18.png", "hash": "thumbnail_Frame_15_4_4caa055d18", "mime": "image/png", "name": "thumbnail_Frame 15 (4).png", "path": null, "size": 92.73, "width": 207, "height": 156}}	Frame_15_4_4caa055d18	.png	image/png	57.90	/uploads/Frame_15_4_4caa055d18.png	\N	local	\N	2022-06-21 13:06:38.563	2022-06-21 13:06:38.563	\N	\N
32	Frame 14 (3).png	Frame 14 (3).png	Frame 14 (3).png	316	406	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_14_3_74f4a0ca8d.png", "hash": "thumbnail_Frame_14_3_74f4a0ca8d", "mime": "image/png", "name": "thumbnail_Frame 14 (3).png", "path": null, "size": 43.5, "width": 121, "height": 156}}	Frame_14_3_74f4a0ca8d	.png	image/png	63.39	/uploads/Frame_14_3_74f4a0ca8d.png	\N	local	\N	2022-06-21 13:06:48.573	2022-06-21 13:06:48.573	\N	\N
34	Frame 15 (5).png	Frame 15 (5).png	Frame 15 (5).png	316	238	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_15_5_e697fb508b.png", "hash": "thumbnail_Frame_15_5_e697fb508b", "mime": "image/png", "name": "thumbnail_Frame 15 (5).png", "path": null, "size": 92.74, "width": 207, "height": 156}}	Frame_15_5_e697fb508b	.png	image/png	57.95	/uploads/Frame_15_5_e697fb508b.png	\N	local	\N	2022-06-21 13:07:29.751	2022-06-21 13:07:29.751	\N	\N
35	Frame 14 (4).png	Frame 14 (4).png	Frame 14 (4).png	316	406	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_14_4_e69cab9bda.png", "hash": "thumbnail_Frame_14_4_e69cab9bda", "mime": "image/png", "name": "thumbnail_Frame 14 (4).png", "path": null, "size": 39.8, "width": 121, "height": 156}}	Frame_14_4_e69cab9bda	.png	image/png	51.38	/uploads/Frame_14_4_e69cab9bda.png	\N	local	\N	2022-06-21 13:07:38.319	2022-06-21 13:07:38.319	\N	\N
36	Frame 16 (2).png	Frame 16 (2).png	Frame 16 (2).png	316	347	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_16_2_64fccd0621.png", "hash": "thumbnail_Frame_16_2_64fccd0621", "mime": "image/png", "name": "thumbnail_Frame 16 (2).png", "path": null, "size": 58.14, "width": 142, "height": 156}}	Frame_16_2_64fccd0621	.png	image/png	73.78	/uploads/Frame_16_2_64fccd0621.png	\N	local	\N	2022-06-21 13:07:47.802	2022-06-21 13:07:47.802	\N	\N
38	840px-I3YLC1PFI 1 (1).png	840px-I3YLC1PFI 1 (1).png	840px-I3YLC1PFI 1 (1).png	608	604	{"small": {"ext": ".png", "url": "/uploads/small_840px_I3_YLC_1_PFI_1_1_b085ea0171.png", "hash": "small_840px_I3_YLC_1_PFI_1_1_b085ea0171", "mime": "image/png", "name": "small_840px-I3YLC1PFI 1 (1).png", "path": null, "size": 149.79, "width": 500, "height": 497}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_840px_I3_YLC_1_PFI_1_1_b085ea0171.png", "hash": "thumbnail_840px_I3_YLC_1_PFI_1_1_b085ea0171", "mime": "image/png", "name": "thumbnail_840px-I3YLC1PFI 1 (1).png", "path": null, "size": 21.65, "width": 157, "height": 156}}	840px_I3_YLC_1_PFI_1_1_b085ea0171	.png	image/png	43.84	/uploads/840px_I3_YLC_1_PFI_1_1_b085ea0171.png	\N	local	\N	2022-06-24 10:51:51.344	2022-06-24 10:51:51.344	\N	\N
39	scale_1200 1 (1).png	scale_1200 1 (1).png	scale_1200 1 (1).png	326	287	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_scale_1200_1_1_5ad7a5e7f7.png", "hash": "thumbnail_scale_1200_1_1_5ad7a5e7f7", "mime": "image/png", "name": "thumbnail_scale_1200 1 (1).png", "path": null, "size": 18.94, "width": 177, "height": 156}}	scale_1200_1_1_5ad7a5e7f7	.png	image/png	11.20	/uploads/scale_1200_1_1_5ad7a5e7f7.png	\N	local	\N	2022-06-24 10:52:25.517	2022-06-24 10:52:25.517	\N	\N
41	Снимок экрана (212) 1.png	Снимок экрана (212) 1.png	Снимок экрана (212) 1.png	326	287	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Snimok_ekrana_212_1_b131c58345.png", "hash": "thumbnail_Snimok_ekrana_212_1_b131c58345", "mime": "image/png", "name": "thumbnail_Снимок экрана (212) 1.png", "path": null, "size": 16.41, "width": 177, "height": 156}}	Snimok_ekrana_212_1_b131c58345	.png	image/png	8.91	/uploads/Snimok_ekrana_212_1_b131c58345.png	\N	local	\N	2022-06-24 10:55:32.966	2022-06-24 10:55:32.966	\N	\N
42	Снимок экрана (213) 1.png	Снимок экрана (213) 1.png	Снимок экрана (213) 1.png	326	287	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Snimok_ekrana_213_1_53ef07e945.png", "hash": "thumbnail_Snimok_ekrana_213_1_53ef07e945", "mime": "image/png", "name": "thumbnail_Снимок экрана (213) 1.png", "path": null, "size": 13.9, "width": 177, "height": 156}}	Snimok_ekrana_213_1_53ef07e945	.png	image/png	10.64	/uploads/Snimok_ekrana_213_1_53ef07e945.png	\N	local	\N	2022-06-24 10:56:37.41	2022-06-24 10:56:37.41	\N	\N
43	840px-I3YLC1PFI 1 (2).png	840px-I3YLC1PFI 1 (2).png	840px-I3YLC1PFI 1 (2).png	835	604	{"small": {"ext": ".png", "url": "/uploads/small_840px_I3_YLC_1_PFI_1_2_f1c468dde4.png", "hash": "small_840px_I3_YLC_1_PFI_1_2_f1c468dde4", "mime": "image/png", "name": "small_840px-I3YLC1PFI 1 (2).png", "path": null, "size": 102.82, "width": 500, "height": 362}, "medium": {"ext": ".png", "url": "/uploads/medium_840px_I3_YLC_1_PFI_1_2_f1c468dde4.png", "hash": "medium_840px_I3_YLC_1_PFI_1_2_f1c468dde4", "mime": "image/png", "name": "medium_840px-I3YLC1PFI 1 (2).png", "path": null, "size": 213.23, "width": 750, "height": 543}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_840px_I3_YLC_1_PFI_1_2_f1c468dde4.png", "hash": "thumbnail_840px_I3_YLC_1_PFI_1_2_f1c468dde4", "mime": "image/png", "name": "thumbnail_840px-I3YLC1PFI 1 (2).png", "path": null, "size": 24.27, "width": 216, "height": 156}}	840px_I3_YLC_1_PFI_1_2_f1c468dde4	.png	image/png	72.80	/uploads/840px_I3_YLC_1_PFI_1_2_f1c468dde4.png	\N	local	\N	2022-06-24 11:01:31.542	2022-06-24 11:01:31.542	\N	\N
44	scale_1200 1 (2).png	scale_1200 1 (2).png	scale_1200 1 (2).png	455	287	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_scale_1200_1_2_c8fc4ea065.png", "hash": "thumbnail_scale_1200_1_2_c8fc4ea065", "mime": "image/png", "name": "thumbnail_scale_1200 1 (2).png", "path": null, "size": 28.08, "width": 245, "height": 155}}	scale_1200_1_2_c8fc4ea065	.png	image/png	23.92	/uploads/scale_1200_1_2_c8fc4ea065.png	\N	local	\N	2022-06-24 11:02:06.461	2022-06-24 11:02:06.461	\N	\N
45	2-4 1 (2).png	2-4 1 (2).png	2-4 1 (2).png	455	287	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_2_4_1_2_6945bb784f.png", "hash": "thumbnail_2_4_1_2_6945bb784f", "mime": "image/png", "name": "thumbnail_2-4 1 (2).png", "path": null, "size": 15.05, "width": 245, "height": 155}}	2_4_1_2_6945bb784f	.png	image/png	8.25	/uploads/2_4_1_2_6945bb784f.png	\N	local	\N	2022-06-24 11:06:38.382	2022-06-24 11:06:38.382	\N	\N
46	ipcam 1.png	ipcam 1.png	ipcam 1.png	307	287	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_ipcam_1_82738db890.png", "hash": "thumbnail_ipcam_1_82738db890", "mime": "image/png", "name": "thumbnail_ipcam 1.png", "path": null, "size": 20.57, "width": 167, "height": 156}}	ipcam_1_82738db890	.png	image/png	13.32	/uploads/ipcam_1_82738db890.png	\N	local	\N	2022-06-24 11:07:55.757	2022-06-24 11:07:55.757	\N	\N
47	lb6 1.png	lb6 1.png	lb6 1.png	307	287	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_lb6_1_b86be84308.png", "hash": "thumbnail_lb6_1_b86be84308", "mime": "image/png", "name": "thumbnail_lb6 1.png", "path": null, "size": 28.13, "width": 167, "height": 156}}	lb6_1_b86be84308	.png	image/png	26.70	/uploads/lb6_1_b86be84308.png	\N	local	\N	2022-06-24 11:08:26.949	2022-06-24 11:08:26.949	\N	\N
48	lb7 1.png	lb7 1.png	lb7 1.png	307	287	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_lb7_1_f6bebf4b33.png", "hash": "thumbnail_lb7_1_f6bebf4b33", "mime": "image/png", "name": "thumbnail_lb7 1.png", "path": null, "size": 25.95, "width": 167, "height": 156}}	lb7_1_f6bebf4b33	.png	image/png	23.92	/uploads/lb7_1_f6bebf4b33.png	\N	local	\N	2022-06-24 11:08:55.427	2022-06-24 11:08:55.427	\N	\N
49	pkd2x2 1.png	pkd2x2 1.png	pkd2x2 1.png	307	287	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_pkd2x2_1_454b704785.png", "hash": "thumbnail_pkd2x2_1_454b704785", "mime": "image/png", "name": "thumbnail_pkd2x2 1.png", "path": null, "size": 16.7, "width": 167, "height": 156}}	pkd2x2_1_454b704785	.png	image/png	11.74	/uploads/pkd2x2_1_454b704785.png	\N	local	\N	2022-06-24 11:09:30.223	2022-06-24 11:09:30.223	\N	\N
50	загружено (72) 1.png	загружено (72) 1.png	загружено (72) 1.png	307	287	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_zagruzheno_72_1_4b60d7d3a8.png", "hash": "thumbnail_zagruzheno_72_1_4b60d7d3a8", "mime": "image/png", "name": "thumbnail_загружено (72) 1.png", "path": null, "size": 26.35, "width": 167, "height": 156}}	zagruzheno_72_1_4b60d7d3a8	.png	image/png	14.47	/uploads/zagruzheno_72_1_4b60d7d3a8.png	\N	local	\N	2022-06-24 11:09:59.254	2022-06-24 11:09:59.254	\N	\N
51	мгн3 1.png	мгн3 1.png	мгн3 1.png	645	287	{"small": {"ext": ".png", "url": "/uploads/small_mgn3_1_f64af015cf.png", "hash": "small_mgn3_1_f64af015cf", "mime": "image/png", "name": "small_мгн3 1.png", "path": null, "size": 113.85, "width": 500, "height": 222}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_mgn3_1_f64af015cf.png", "hash": "thumbnail_mgn3_1_f64af015cf", "mime": "image/png", "name": "thumbnail_мгн3 1.png", "path": null, "size": 35.53, "width": 245, "height": 109}}	mgn3_1_f64af015cf	.png	image/png	35.14	/uploads/mgn3_1_f64af015cf.png	\N	local	\N	2022-06-24 11:10:25.13	2022-06-24 11:10:25.13	\N	\N
52	Frame 4.png	Frame 4.png	Frame 4.png	316	238	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_4_4b9138c25e.png", "hash": "thumbnail_Frame_4_4b9138c25e", "mime": "image/png", "name": "thumbnail_Frame 4.png", "path": null, "size": 58.93, "width": 207, "height": 156}}	Frame_4_4b9138c25e	.png	image/png	32.34	/uploads/Frame_4_4b9138c25e.png	\N	local	\N	2022-06-24 11:13:03.869	2022-06-24 11:13:03.869	\N	\N
53	pexels-mathias-reding-7108779 1.png	pexels-mathias-reding-7108779 1.png	pexels-mathias-reding-7108779 1.png	316	406	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_pexels_mathias_reding_7108779_1_4d74919c4b.png", "hash": "thumbnail_pexels_mathias_reding_7108779_1_4d74919c4b", "mime": "image/png", "name": "thumbnail_pexels-mathias-reding-7108779 1.png", "path": null, "size": 42.13, "width": 121, "height": 156}}	pexels_mathias_reding_7108779_1_4d74919c4b	.png	image/png	56.44	/uploads/pexels_mathias_reding_7108779_1_4d74919c4b.png	\N	local	\N	2022-06-24 11:13:32.335	2022-06-24 11:13:32.335	\N	\N
67	загружено (66) 1.png	загружено (66) 1.png	загружено (66) 1.png	307	287	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_zagruzheno_66_1_097d79b686.png", "hash": "thumbnail_zagruzheno_66_1_097d79b686", "mime": "image/png", "name": "thumbnail_загружено (66) 1.png", "path": null, "size": 20.85, "width": 167, "height": 156}}	zagruzheno_66_1_097d79b686	.png	image/png	14.85	/uploads/zagruzheno_66_1_097d79b686.png	\N	local	\N	2022-06-27 13:25:50.098	2022-06-27 13:25:50.098	\N	\N
54	pexels-tamil-vanan-4966809 1.png	pexels-tamil-vanan-4966809 1.png	pexels-tamil-vanan-4966809 1.png	316	347	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_pexels_tamil_vanan_4966809_1_c5654ce521.png", "hash": "thumbnail_pexels_tamil_vanan_4966809_1_c5654ce521", "mime": "image/png", "name": "thumbnail_pexels-tamil-vanan-4966809 1.png", "path": null, "size": 56.32, "width": 142, "height": 156}}	pexels_tamil_vanan_4966809_1_c5654ce521	.png	image/png	77.48	/uploads/pexels_tamil_vanan_4966809_1_c5654ce521.png	\N	local	\N	2022-06-24 11:14:15.678	2022-06-24 11:14:15.678	\N	\N
55	Frame 15 (6).png	Frame 15 (6).png	Frame 15 (6).png	316	238	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_15_6_b0c842cdd7.png", "hash": "thumbnail_Frame_15_6_b0c842cdd7", "mime": "image/png", "name": "thumbnail_Frame 15 (6).png", "path": null, "size": 74.81, "width": 207, "height": 156}}	Frame_15_6_b0c842cdd7	.png	image/png	47.97	/uploads/Frame_15_6_b0c842cdd7.png	\N	local	\N	2022-06-24 11:15:15.607	2022-06-24 11:15:15.607	\N	\N
56	pexels-karolina-grabowska-4977409 1.png	pexels-karolina-grabowska-4977409 1.png	pexels-karolina-grabowska-4977409 1.png	316	406	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_pexels_karolina_grabowska_4977409_1_b9c0b25853.png", "hash": "thumbnail_pexels_karolina_grabowska_4977409_1_b9c0b25853", "mime": "image/png", "name": "thumbnail_pexels-karolina-grabowska-4977409 1.png", "path": null, "size": 39.78, "width": 121, "height": 156}}	pexels_karolina_grabowska_4977409_1_b9c0b25853	.png	image/png	50.86	/uploads/pexels_karolina_grabowska_4977409_1_b9c0b25853.png	\N	local	\N	2022-06-24 11:15:27.208	2022-06-24 11:15:27.208	\N	\N
57	pexels-antoni-shkraba-production-8837511 1.png	pexels-antoni-shkraba-production-8837511 1.png	pexels-antoni-shkraba-production-8837511 1.png	316	347	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_pexels_antoni_shkraba_production_8837511_1_cde1a4a946.png", "hash": "thumbnail_pexels_antoni_shkraba_production_8837511_1_cde1a4a946", "mime": "image/png", "name": "thumbnail_pexels-antoni-shkraba-production-8837511 1.png", "path": null, "size": 43.57, "width": 142, "height": 156}}	pexels_antoni_shkraba_production_8837511_1_cde1a4a946	.png	image/png	61.41	/uploads/pexels_antoni_shkraba_production_8837511_1_cde1a4a946.png	\N	local	\N	2022-06-24 11:15:41.508	2022-06-24 11:15:41.508	\N	\N
58	pexels-field-engineer-442150 (1) 1.png	pexels-field-engineer-442150 (1) 1.png	pexels-field-engineer-442150 (1) 1.png	316	405	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_pexels_field_engineer_442150_1_1_19ed8cdc65.png", "hash": "thumbnail_pexels_field_engineer_442150_1_1_19ed8cdc65", "mime": "image/png", "name": "thumbnail_pexels-field-engineer-442150 (1) 1.png", "path": null, "size": 48.33, "width": 122, "height": 156}}	pexels_field_engineer_442150_1_1_19ed8cdc65	.png	image/png	74.77	/uploads/pexels_field_engineer_442150_1_1_19ed8cdc65.png	\N	local	\N	2022-06-24 11:16:41.72	2022-06-24 11:16:41.72	\N	\N
59	Depositphotos_171502680_xl-2015-pic_32ratio_900x600-900x600-38579 1.png	Depositphotos_171502680_xl-2015-pic_32ratio_900x600-900x600-38579 1.png	Depositphotos_171502680_xl-2015-pic_32ratio_900x600-900x600-38579 1.png	316	347	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Depositphotos_171502680_xl_2015_pic_32ratio_900x600_900x600_38579_1_609148d752.png", "hash": "thumbnail_Depositphotos_171502680_xl_2015_pic_32ratio_900x600_900x600_38579_1_609148d752", "mime": "image/png", "name": "thumbnail_Depositphotos_171502680_xl-2015-pic_32ratio_900x600-900x600-38579 1.png", "path": null, "size": 42.08, "width": 142, "height": 156}}	Depositphotos_171502680_xl_2015_pic_32ratio_900x600_900x600_38579_1_609148d752	.png	image/png	45.03	/uploads/Depositphotos_171502680_xl_2015_pic_32ratio_900x600_900x600_38579_1_609148d752.png	\N	local	\N	2022-06-24 11:16:57.65	2022-06-24 11:16:57.65	\N	\N
60	Frame 4 (1).png	Frame 4 (1).png	Frame 4 (1).png	316	238	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_4_1_ca30f74ae4.png", "hash": "thumbnail_Frame_4_1_ca30f74ae4", "mime": "image/png", "name": "thumbnail_Frame 4 (1).png", "path": null, "size": 50.63, "width": 207, "height": 156}}	Frame_4_1_ca30f74ae4	.png	image/png	32.40	/uploads/Frame_4_1_ca30f74ae4.png	\N	local	\N	2022-06-24 11:19:08.533	2022-06-24 11:19:08.533	\N	\N
61	pexels-thomas-windisch-179993 1.png	pexels-thomas-windisch-179993 1.png	pexels-thomas-windisch-179993 1.png	316	406	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_pexels_thomas_windisch_179993_1_a774852cf2.png", "hash": "thumbnail_pexels_thomas_windisch_179993_1_a774852cf2", "mime": "image/png", "name": "thumbnail_pexels-thomas-windisch-179993 1.png", "path": null, "size": 28.67, "width": 121, "height": 156}}	pexels_thomas_windisch_179993_1_a774852cf2	.png	image/png	34.12	/uploads/pexels_thomas_windisch_179993_1_a774852cf2.png	\N	local	\N	2022-06-24 11:19:18.51	2022-06-24 11:19:18.51	\N	\N
62	Depositphotos_171502680_xl-2015-pic_32ratio_900x600-900x600-38579 1 (1).png	Depositphotos_171502680_xl-2015-pic_32ratio_900x600-900x600-38579 1 (1).png	Depositphotos_171502680_xl-2015-pic_32ratio_900x600-900x600-38579 1 (1).png	316	347	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Depositphotos_171502680_xl_2015_pic_32ratio_900x600_900x600_38579_1_1_421bcc94dd.png", "hash": "thumbnail_Depositphotos_171502680_xl_2015_pic_32ratio_900x600_900x600_38579_1_1_421bcc94dd", "mime": "image/png", "name": "thumbnail_Depositphotos_171502680_xl-2015-pic_32ratio_900x600-900x600-38579 1 (1).png", "path": null, "size": 57.78, "width": 142, "height": 156}}	Depositphotos_171502680_xl_2015_pic_32ratio_900x600_900x600_38579_1_1_421bcc94dd	.png	image/png	74.22	/uploads/Depositphotos_171502680_xl_2015_pic_32ratio_900x600_900x600_38579_1_1_421bcc94dd.png	\N	local	\N	2022-06-24 11:19:28.126	2022-06-24 11:19:28.126	\N	\N
63	Frame 16 (3).png	Frame 16 (3).png	Frame 16 (3).png	316	347	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_16_3_bc6b0b1a2b.png", "hash": "thumbnail_Frame_16_3_bc6b0b1a2b", "mime": "image/png", "name": "thumbnail_Frame 16 (3).png", "path": null, "size": 39.95, "width": 142, "height": 156}}	Frame_16_3_bc6b0b1a2b	.png	image/png	47.33	/uploads/Frame_16_3_bc6b0b1a2b.png	\N	local	\N	2022-06-24 11:34:44.281	2022-06-24 11:34:44.281	\N	\N
64	Frame 7 (1).png	Frame 7 (1).png	Frame 7 (1).png	319	219	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_7_1_00afc79490.png", "hash": "thumbnail_Frame_7_1_00afc79490", "mime": "image/png", "name": "thumbnail_Frame 7 (1).png", "path": null, "size": 30.61, "width": 227, "height": 156}}	Frame_7_1_00afc79490	.png	image/png	12.21	/uploads/Frame_7_1_00afc79490.png	\N	local	\N	2022-06-24 11:35:15.329	2022-06-24 11:35:15.329	\N	\N
65	8e9650b870b891e34f0c1404f28da48c 1 (1).png	8e9650b870b891e34f0c1404f28da48c 1 (1).png	8e9650b870b891e34f0c1404f28da48c 1 (1).png	319	219	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_8e9650b870b891e34f0c1404f28da48c_1_1_01afa18fa0.png", "hash": "thumbnail_8e9650b870b891e34f0c1404f28da48c_1_1_01afa18fa0", "mime": "image/png", "name": "thumbnail_8e9650b870b891e34f0c1404f28da48c 1 (1).png", "path": null, "size": 98.8, "width": 227, "height": 156}}	8e9650b870b891e34f0c1404f28da48c_1_1_01afa18fa0	.png	image/png	49.70	/uploads/8e9650b870b891e34f0c1404f28da48c_1_1_01afa18fa0.png	\N	local	\N	2022-06-24 15:27:31.193	2022-06-24 15:27:31.193	\N	\N
69	Frame 8 (1).png	Frame 8 (1).png	Frame 8 (1).png	319	219	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_8_1_098b973cdd.png", "hash": "thumbnail_Frame_8_1_098b973cdd", "mime": "image/png", "name": "thumbnail_Frame 8 (1).png", "path": null, "size": 47.6, "width": 227, "height": 156}}	Frame_8_1_098b973cdd	.png	image/png	26.75	/uploads/Frame_8_1_098b973cdd.png	\N	local	\N	2022-06-28 12:16:52.687	2022-06-28 12:16:52.687	\N	\N
72	logo_oneline_white.svg	logo_oneline_white.svg	logo_oneline_white.svg	\N	\N	\N	logo_oneline_white_3857d47d92	.svg	image/svg+xml	4.97	/uploads/logo_oneline_white_3857d47d92.svg	\N	local	\N	2022-07-05 18:07:43.409	2022-07-05 18:07:43.409	\N	\N
73	logo_oneline.svg	logo_oneline.svg	logo_oneline.svg	\N	\N	\N	logo_oneline_82056e57ca	.svg	image/svg+xml	2.73	/uploads/logo_oneline_82056e57ca.svg	\N	local	\N	2022-07-05 18:07:53.216	2022-07-05 18:07:53.216	\N	\N
\.


--
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files_related_morphs (file_id, related_id, related_type, field, "order") FROM stdin;
24	1	services-page-com.component-services	img1	1
25	1	services-page-com.component-services	img2	1
26	1	services-page-com.component-services	img3	1
5	2	services-page-com.component-services	img1	1
27	2	services-page-com.component-services	img2	1
28	2	services-page-com.component-services	img3	1
4	3	services-page-com.component-services	img1	1
29	3	services-page-com.component-services	img2	1
42	21	api::product-list.product-list	img	1
42	19	api::product-list.product-list	img	1
42	20	api::product-list.product-list	img	1
4	8	services-page-com.component-services	img1	1
30	3	services-page-com.component-services	img3	1
31	4	services-page-com.component-services	img1	1
8	1	api::product-list.product-list	img	1
9	2	api::product-list.product-list	img	1
10	3	api::product-list.product-list	img	1
32	4	services-page-com.component-services	img2	1
33	4	services-page-com.component-services	img3	1
29	8	services-page-com.component-services	img2	1
30	8	services-page-com.component-services	img3	1
43	24	api::product-list.product-list	img	1
34	5	services-page-com.component-services	img1	1
35	5	services-page-com.component-services	img2	1
36	5	services-page-com.component-services	img3	1
4	15	services-page-com.component-services	img1	1
29	15	services-page-com.component-services	img2	1
30	15	services-page-com.component-services	img3	1
4	16	services-page-com.component-services	img1	1
29	16	services-page-com.component-services	img2	1
30	16	services-page-com.component-services	img3	1
60	21	services-page-com.component-services	img1	1
61	21	services-page-com.component-services	img2	1
63	21	services-page-com.component-services	img3	1
60	23	services-page-com.component-services	img1	1
43	22	api::product-list.product-list	img	1
43	23	api::product-list.product-list	img	1
61	23	services-page-com.component-services	img2	1
63	23	services-page-com.component-services	img3	1
23	7	api::certificate-list.certificate-list	img	1
44	27	api::product-list.product-list	img	1
44	25	api::product-list.product-list	img	1
23	6	api::certificate-list.certificate-list	img	1
55	6	api::pagas-service.pagas-service	img1	1
44	26	api::product-list.product-list	img	1
22	9	api::certificate-list.certificate-list	img	1
22	8	api::certificate-list.certificate-list	img	1
56	6	api::pagas-service.pagas-service	img2	1
45	30	api::product-list.product-list	img	1
45	28	api::product-list.product-list	img	1
45	29	api::product-list.product-list	img	1
57	6	api::pagas-service.pagas-service	img3	1
21	11	api::certificate-list.certificate-list	img	1
21	10	api::certificate-list.certificate-list	img	1
60	22	services-page-com.component-services	img1	1
61	22	services-page-com.component-services	img2	1
34	14	api::pagas-service.pagas-service	img1	1
63	22	services-page-com.component-services	img3	1
58	14	api::pagas-service.pagas-service	img2	1
34	9	services-page-com.component-services	img1	1
59	14	api::pagas-service.pagas-service	img3	1
34	13	api::pagas-service.pagas-service	img1	1
58	9	services-page-com.component-services	img2	1
59	9	services-page-com.component-services	img3	1
58	13	api::pagas-service.pagas-service	img2	1
20	13	api::certificate-list.certificate-list	img	1
38	10	api::product-list.product-list	img	1
38	7	api::product-list.product-list	img	1
38	9	api::product-list.product-list	img	1
39	12	api::product-list.product-list	img	1
39	8	api::product-list.product-list	img	1
39	11	api::product-list.product-list	img	1
40	15	api::product-list.product-list	img	1
40	13	api::product-list.product-list	img	1
40	14	api::product-list.product-list	img	1
41	18	api::product-list.product-list	img	1
41	17	api::product-list.product-list	img	1
41	16	api::product-list.product-list	img	1
31	7	services-page-com.component-services	img1	1
23	1	api::certificate-list.certificate-list	img	1
22	2	api::certificate-list.certificate-list	img	1
21	3	api::certificate-list.certificate-list	img	1
32	7	services-page-com.component-services	img2	1
33	7	services-page-com.component-services	img3	1
20	4	api::certificate-list.certificate-list	img	1
19	5	api::certificate-list.certificate-list	img	1
31	13	services-page-com.component-services	img1	1
59	13	api::pagas-service.pagas-service	img3	1
31	10	api::pagas-service.pagas-service	img1	1
32	10	api::pagas-service.pagas-service	img2	1
33	10	api::pagas-service.pagas-service	img3	1
31	11	api::pagas-service.pagas-service	img1	1
32	11	api::pagas-service.pagas-service	img2	1
33	11	api::pagas-service.pagas-service	img3	1
76	10	api::service-list.service-list	img	1
32	13	services-page-com.component-services	img2	1
33	13	services-page-com.component-services	img3	1
31	14	services-page-com.component-services	img1	1
32	14	services-page-com.component-services	img2	1
33	14	services-page-com.component-services	img3	1
52	10	services-page-com.component-services	img1	1
53	10	services-page-com.component-services	img2	1
54	10	services-page-com.component-services	img3	1
55	5	api::pagas-service.pagas-service	img1	1
52	19	services-page-com.component-services	img1	1
53	19	services-page-com.component-services	img2	1
54	19	services-page-com.component-services	img3	1
1	2	api::main.main	headImg	1
52	20	services-page-com.component-services	img1	1
53	20	services-page-com.component-services	img2	1
54	20	services-page-com.component-services	img3	1
55	6	services-page-com.component-services	img1	1
56	6	services-page-com.component-services	img2	1
57	6	services-page-com.component-services	img3	1
55	11	services-page-com.component-services	img1	1
56	11	services-page-com.component-services	img2	1
57	11	services-page-com.component-services	img3	1
55	12	services-page-com.component-services	img1	1
56	12	services-page-com.component-services	img2	1
57	12	services-page-com.component-services	img3	1
56	5	api::pagas-service.pagas-service	img2	1
57	5	api::pagas-service.pagas-service	img3	1
20	12	api::certificate-list.certificate-list	img	1
55	4	api::pagas-service.pagas-service	img1	1
56	4	api::pagas-service.pagas-service	img2	1
57	4	api::pagas-service.pagas-service	img3	1
34	15	api::pagas-service.pagas-service	img1	1
58	15	api::pagas-service.pagas-service	img2	1
59	15	api::pagas-service.pagas-service	img3	1
19	15	api::certificate-list.certificate-list	img	1
19	14	api::certificate-list.certificate-list	img	1
34	18	services-page-com.component-services	img1	1
58	18	services-page-com.component-services	img2	1
59	18	services-page-com.component-services	img3	1
34	17	services-page-com.component-services	img1	1
58	17	services-page-com.component-services	img2	1
59	17	services-page-com.component-services	img3	1
1	3	api::main.main	headImg	1
1	1	api::main.main	headImg	1
31	12	api::pagas-service.pagas-service	img1	1
32	12	api::pagas-service.pagas-service	img2	1
33	12	api::pagas-service.pagas-service	img3	1
77	5	api::service-list.service-list	img	1
77	11	api::service-list.service-list	img	1
78	16	api::service-list.service-list	img	1
79	6	api::service-list.service-list	img	1
79	17	api::service-list.service-list	img	1
80	4	api::service-list.service-list	img	1
80	13	api::service-list.service-list	img	1
38	8	api::service-list.service-list	img	1
60	17	api::pagas-service.pagas-service	img1	1
61	17	api::pagas-service.pagas-service	img2	1
63	17	api::pagas-service.pagas-service	img3	1
60	16	api::pagas-service.pagas-service	img1	1
61	16	api::pagas-service.pagas-service	img2	1
63	16	api::pagas-service.pagas-service	img3	1
52	3	api::pagas-service.pagas-service	img1	1
53	3	api::pagas-service.pagas-service	img2	1
54	3	api::pagas-service.pagas-service	img3	1
4	9	api::pagas-service.pagas-service	img1	1
29	9	api::pagas-service.pagas-service	img2	1
30	9	api::pagas-service.pagas-service	img3	1
38	7	api::service-list.service-list	img	1
38	3	api::service-list.service-list	img	1
76	1	api::service-list.service-list	img	1
60	18	api::pagas-service.pagas-service	img1	1
61	18	api::pagas-service.pagas-service	img2	1
63	18	api::pagas-service.pagas-service	img3	1
52	2	api::pagas-service.pagas-service	img1	1
53	2	api::pagas-service.pagas-service	img2	1
54	2	api::pagas-service.pagas-service	img3	1
52	1	api::pagas-service.pagas-service	img1	1
53	1	api::pagas-service.pagas-service	img2	1
54	1	api::pagas-service.pagas-service	img3	1
4	8	api::pagas-service.pagas-service	img1	1
29	8	api::pagas-service.pagas-service	img2	1
30	8	api::pagas-service.pagas-service	img3	1
4	7	api::pagas-service.pagas-service	img1	1
29	7	api::pagas-service.pagas-service	img2	1
30	7	api::pagas-service.pagas-service	img3	1
76	9	api::service-list.service-list	img	1
77	12	api::service-list.service-list	img	1
78	2	api::service-list.service-list	img	1
78	15	api::service-list.service-list	img	1
79	18	api::service-list.service-list	img	1
80	14	api::service-list.service-list	img	1
46	33	api::product-list.product-list	img	1
46	31	api::product-list.product-list	img	1
46	32	api::product-list.product-list	img	1
47	36	api::product-list.product-list	img	1
47	35	api::product-list.product-list	img	1
47	34	api::product-list.product-list	img	1
48	39	api::product-list.product-list	img	1
48	37	api::product-list.product-list	img	1
48	38	api::product-list.product-list	img	1
49	40	api::product-list.product-list	img	1
49	41	api::product-list.product-list	img	1
49	42	api::product-list.product-list	img	1
67	50	api::product-list.product-list	img	1
67	49	api::product-list.product-list	img	1
67	51	api::product-list.product-list	img	1
50	43	api::product-list.product-list	img	1
50	44	api::product-list.product-list	img	1
50	45	api::product-list.product-list	img	1
51	48	api::product-list.product-list	img	1
51	46	api::product-list.product-list	img	1
51	47	api::product-list.product-list	img	1
11	2	about.about	headImg	1
12	2	about.about	descImg	1
37	2	certificate.certificate	logo	1
11	3	about.about	headImg	1
12	3	about.about	descImg	1
37	3	certificate.certificate	logo	1
37	2	navbar-header.navbar	logo	1
37	1	footer.footer-main	logo	1
72	1	footer.footer-dev	logo_dev	1
73	1	footer.footer-dev	logo_dev1	1
37	3	navbar-header.navbar	logo	1
37	2	footer.footer-main	logo	1
72	2	footer.footer-dev	logo_dev	1
73	2	footer.footer-dev	logo_dev1	1
37	4	navbar-header.navbar	logo	1
37	3	footer.footer-main	logo	1
72	3	footer.footer-dev	logo_dev	1
73	3	footer.footer-dev	logo_dev1	1
74	1	about.about	headImg	1
75	1	about.about	descImg	1
37	1	certificate.certificate	logo	1
71	1	api::main.main	headVideo	1
71	2	api::main.main	headVideo	1
71	3	api::main.main	headVideo	1
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2022-06-20 11:57:02.725	2022-06-20 11:57:02.725	\N	\N
2	Turkmen (tk)	tk	2022-06-20 12:04:02.859	2022-06-20 12:04:02.859	\N	\N
3	Russian (ru)	ru	2022-06-20 12:04:12.75	2022-06-20 12:04:21.923	\N	\N
\.


--
-- Data for Name: layouts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.layouts (id, created_at, updated_at, created_by_id, updated_by_id, locale) FROM stdin;
1	2022-06-20 14:45:20.084	2022-08-19 17:36:12.446	\N	2	ru
2	2022-06-24 16:09:16.305	2022-08-19 17:36:29.898	\N	2	en
3	2022-06-24 16:13:47.068	2022-08-19 17:36:46.666	\N	2	tk
\.


--
-- Data for Name: layouts_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.layouts_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
211	1	2	navbar-header.navbar	navbar	1
212	1	3	contacts.address	address	1
213	1	3	contacts.phone-number	number	1
214	1	1	footer.footer-main	footer	1
215	1	1	footer.footer-dev	footer_dev	1
216	2	3	navbar-header.navbar	navbar	1
217	2	4	contacts.address	address	1
218	2	4	contacts.phone-number	number	1
219	2	2	footer.footer-main	footer	1
220	2	2	footer.footer-dev	footer_dev	1
221	3	4	navbar-header.navbar	navbar	1
222	3	5	contacts.address	address	1
223	3	5	contacts.phone-number	number	1
224	3	3	footer.footer-main	footer	1
225	3	3	footer.footer-dev	footer_dev	1
\.


--
-- Data for Name: layouts_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.layouts_localizations_links (layout_id, inv_layout_id) FROM stdin;
3	1
3	2
1	3
1	2
2	3
2	1
\.


--
-- Data for Name: locals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.locals (id, name, created_at, updated_at, created_by_id, updated_by_id, locale) FROM stdin;
5	Iňlis	2022-06-24 15:15:13.991	2022-06-24 15:15:13.991	\N	\N	tk
2	Английский	2022-06-20 12:17:34.804	2022-06-24 15:15:14.005	\N	\N	ru
4	English	2022-06-24 15:14:31.407	2022-06-24 15:15:14.005	\N	\N	en
7	Rus	2022-06-24 15:15:42.719	2022-06-24 15:15:42.719	\N	\N	tk
1	Русский	2022-06-20 12:15:45.747	2022-06-24 15:15:42.733	\N	\N	ru
6	Russian	2022-06-24 15:15:32.679	2022-06-24 15:15:42.733	\N	\N	en
9	Türkmenler	2022-06-24 16:10:24.053	2022-06-24 16:10:24.053	\N	\N	tk
3	Туркменский	2022-06-20 12:18:03.183	2022-06-24 16:10:24.072	\N	\N	ru
8	Turkmen	2022-06-24 16:10:16.491	2022-06-24 16:10:24.072	\N	\N	en
\.


--
-- Data for Name: locals_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.locals_localizations_links (local_id, inv_local_id) FROM stdin;
5	4
5	2
2	5
2	4
4	5
4	2
7	6
7	1
1	7
1	6
6	7
6	1
9	8
9	3
3	9
3	8
8	9
8	3
\.


--
-- Data for Name: mains; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mains (id, created_at, updated_at, created_by_id, updated_by_id, locale, head, "desc", head_button) FROM stdin;
1	2022-06-20 12:06:20.758	2022-08-19 17:39:19.738	\N	3	ru	Höwür — прочность, стойкость и уверенность.	Индивидуальное предприятие “Höwür” имеет широкий опыт в проектировке, постройке зданий и объектов, в том числе в монтаже, техническом обсулиживании систем пожарной сигнализации, грамотной настройке лифтовой диспетчеризации.   	Связаться
2	2022-06-24 16:20:55.711	2022-08-19 17:39:19.934	\N	2	en	Höwür stands for strength, resilience and confidence.	Individual enterprise "Höwür" has extensive experience in the design, construction of buildings and facilities, including installation, technical maintenance of fire alarm systems, competent adjustment of elevator dispatching.	Contact us
3	2022-06-24 16:22:30.188	2022-08-19 17:39:19.95	\N	2	tk	Höwür — berklik, durnuklylyk we ynam.	“Höwür” Hususy kärhanasynyň binalary we desgalary taslamalaşdyrmakda, gurmakda, şol sanda ýangyn duýduryş ulgamlaryny gurnamakda, tehniki hyzmatynda, lift merkezleşdirmesini ussatlyk bilen sazlamakda giň tejribesi bar.	Habarlaşmak
\.


--
-- Data for Name: mains_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mains_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
65	1	1	navbar-header.navbar	navbar	1
66	1	1	contacts.phone-number	phone	1
67	1	1	contacts.address	address	1
319	2	2	services.services	services	1
320	2	2	products.product	product	1
321	2	2	about.about	about	1
322	2	2	certificate.certificate	certificate	1
323	2	2	form.form-main	form	1
324	3	3	services.services	services	1
325	3	3	products.product	product	1
326	3	3	about.about	about	1
327	3	3	certificate.certificate	certificate	1
328	3	3	form.form-main	form	1
344	1	1	services.services	services	1
345	1	1	products.product	product	1
346	1	1	about.about	about	1
347	1	1	certificate.certificate	certificate	1
348	1	1	form.form-main	form	1
\.


--
-- Data for Name: mains_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mains_localizations_links (main_id, inv_main_id) FROM stdin;
3	1
3	2
1	3
1	2
2	3
2	1
\.


--
-- Data for Name: navigations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.navigations (id, name, created_at, updated_at, created_by_id, updated_by_id, locale, href, sort_id) FROM stdin;
5	Главная	2022-06-23 10:34:37.35	2022-06-27 17:12:56.757	\N	\N	ru	/	1
10	Home	2022-06-24 15:16:36.391	2022-06-27 17:13:17.196	\N	\N	en	/	1
6	Услуги	2022-06-23 10:41:46.225	2022-06-27 17:13:29.502	\N	\N	ru	\N	2
18	Services	2022-06-24 15:19:15.618	2022-06-27 17:13:38.167	\N	\N	en	\N	2
19	Hyzmatlar	2022-06-24 15:19:25.378	2022-06-27 17:13:43.973	\N	\N	tk	\N	2
7	О нас	2022-06-23 10:42:02.893	2022-06-27 17:13:58.066	\N	\N	ru	/#aboutUs	3
16	About Us	2022-06-24 15:18:49.235	2022-06-27 17:14:14.302	\N	\N	en	/#aboutUs	3
8	Лицензии и сертификаты	2022-06-23 10:42:29.32	2022-06-27 17:14:24.154	\N	\N	ru	/#sertificates	4
14	Licenses and certificates	2022-06-24 15:18:15.937	2022-06-27 17:14:32.902	\N	\N	en	/#sertificates	4
9	Контакты	2022-06-23 10:42:45.548	2022-06-27 17:14:48.026	\N	\N	ru	/#contacts	5
12	Contacts	2022-06-24 15:17:42.284	2022-06-27 17:15:03.667	\N	\N	en	/#contacts	5
13	Aragatnaşyklar	2022-06-24 15:17:52.807	2022-06-27 17:15:11.318	\N	\N	tk	/#contacts	5
11	Baş sahypa	2022-06-24 15:17:09.171	2022-08-12 13:49:09.444	\N	2	tk	/	1
15	Ygtyýarnamalar we sertifikatlar	2022-06-24 15:18:32.547	2022-08-12 13:49:21.892	\N	2	tk	/#sertificates	4
17	Biz hakynda	2022-06-24 15:19:02.132	2022-08-12 13:49:31.653	\N	2	tk	/#aboutUs	3
\.


--
-- Data for Name: navigations_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.navigations_localizations_links (navigation_id, inv_navigation_id) FROM stdin;
11	10
11	5
5	11
5	10
10	11
10	5
13	12
13	9
9	13
9	12
12	13
12	9
15	14
15	8
8	15
8	14
14	15
14	8
17	16
17	7
7	17
7	16
16	17
16	7
19	18
19	6
6	19
6	18
18	19
18	6
\.


--
-- Data for Name: pagas_services; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pagas_services (id, created_at, updated_at, created_by_id, updated_by_id, locale, name, sort_id, description, under_description, slug) FROM stdin;
5	2022-07-07 10:23:02.934	2022-08-12 13:46:50.272	\N	2	en	Design	2	Structural design is an important stage of construction, which consists of the development of technical documentation, as well as a project for low-voltage networks, which determines the location of telephone connections, heating, water supply and ventilation systems.\n\nDesign is carried out in Autocad program. And then our specialists measure the length of networks, lines and wires. We guarantee full compliance and economy of building materials.	You can see our works below.	design
4	2022-07-07 10:22:42.406	2022-08-12 13:46:50.33	\N	2	ru	Проектирование	2	Строительное проектирование - важный этап строительства, который состоит из разработки технической документации, а также проекта слаботочных сетей, который определяет расположение телефонных соединений, систем отопления, водоснабжения и вентиляции.\n\nПроектирование осуществляется в Autocad. После чего наши специалисты осущестляют замерку длины сетей, линий и проводов. Мы гарантием полное соответсвие и экономие строительных материалов.	С нашими работами Вы можете ознакомиться ниже.	design
6	2022-07-07 10:23:29.585	2022-08-12 13:46:50.332	\N	2	tk	Taslamalaşdyrmak	2	Gurluşyk taslamalaşdyryşy – tehniki resminamalary işläp taýýarlamakdan, şeýle hem telefon aragatnaşygynyň, ýyladyş, suwgeçiriş we howalandyryş ulgamlarynyň ýerleşýän ýerini kesgitleýän pes tokly torlaryň taslamasyndan durýan gurluşygyň wajyp tapgyrydyr.\n\nTaslamalaşdyrma Autoсad programmasynda amala aşyrylýar. Bu amal ýerine ýetirilenden soň, hünärmenlerimiz torlaryň, liniýalaryň we simlaryň uzynlygynyň ölçegini amala aşyrýarlar. Biz gurluşyk materiallarynyň doly laýyklygyny we tygşytlylygyny kepillendirýäris.	Işimizi aşakda görüp bilersiňiz.	design
2	2022-07-07 10:21:05.001	2022-08-12 13:45:01.033	\N	2	en	Integrated construction	1	Turkmenistan has become a huge construction site; buildings and facilities for civil, industrial, and commercial purposes are commissioned here every day.\n\n“Höwür” has permits for the construction of residential and non-residential premises, the construction of pipelines, landscaping works, installation of plumbing systems, heating, ventilation, air conditioning systems, as well as other construction and installation works.	You can see our works below.	construction
1	2022-07-07 10:12:03.81	2022-08-12 13:45:01.109	\N	2	ru	Комплексное строительство	1	Туркменистан стал огромной строительной площадкой, каждый день здесь сдаются в эксплуатацию здания и объекты гражданского, промышленного и коммерческого назначений.\n\n“Höwür” имеет разрешительные документы на строительство жилых и нежилых помещений, строительство трудопроводов, работы по благоустройству территорий, монтаж водопроводных систем, систем отопления, вентиляции, кондиционирования, а также прочие строителные и монтажные работы.	С нашими работами Вы можете ознакомиться ниже.	construction
3	2022-07-07 10:21:24.136	2022-08-12 13:45:01.11	\N	2	tk	Toplumlaýyn gurluşyk	1	Türkmenistan iri göwrümli gurluşyk meýdançasyna öwrüldi, her gün bu ýerde raýat, senagat we täjirçilik maksatly binalar we desgalar ulanylmaga berilýär, \n\n“Höwür” kärhanasynyň ýaşalýan we ýaşalmaýan jaýlary gurmak, turbageçirijileriň gurluşygy, meýdany abadanlaşdyrmak boýunça işler, suwgeçiriji, ýyladyş, howalandyryş, howany sowadyş ulgamlaryny gurnamak, şeýle hem beýleki gurluşyk we gurnama işleri üçin rugsat beriji resminamalary bar.  	Biziň ýerine ýetiren işlerimiz bilen aşakda tanşyp bilersiňiz.	construction
8	2022-07-07 10:25:15.556	2022-08-12 13:46:18.604	\N	2	en	Fire safety	3	Fire safety of buildings and structures should provide protection against fires and other emergencies, minimize dangerous consequences for people and property. Safety requirements are determined individually by the type of object, its categories and hazard classes, by types of activity, and other indicators.\n\nThe fire safety system includes: Automatic or manual signaling system, Warning system and people evacuation management, Fire extinguishing system.	You can see our works below.	fire-safety
9	2022-07-07 10:25:33.755	2022-08-12 13:46:18.696	\N	2	tk	Ýangyn howpsuzlygy	3	Binalaryň we desgalaryň ýangyn howpsuzlygy ýangyndan we beýleki adatdan daşary ýagdaýlardan goraglylygy üpjün etmeli, adamlar we emläkler üçin howply netijeleri azaltmaly. Howpsuzlyga bolan talaplar desganyň görnüşi, onuň kategoriýalary we howplulyk synpy boýunça, şeýle hem iş görnüşleri we beýleki görkezijiler boýunça kesgitlenýär.\n\nÝangyn howpsuzlyk ulgamy indikilerden ybarat: Awtomatlaşdyrylan ýa-da eldeki signalizasiýa ulgamy, Habar beriş we adamlary halas etmegi dolandyryş ulgamy, Ýangyn söndüriş ulgamy. \n	Biziň ýerine ýetiren işlerimiz bilen aşakda tanşyp bilersiňiz.	fire-safety
17	2022-07-07 10:48:58.485	2022-08-12 13:44:36.407	\N	2	en	CCTV	6	Video surveillance - a system that provides video recording of happening within the range of IP cameras.\n\nModern digital equipment of “Tiady” company can be installed in private houses, cottages, supermarkets, restaurants, as well as in any administrative offices, which will ensure the necessary level of security in a certain area. Our company is ready to install a video surveillance system at any facility.	You can see our works below.	surveillance
18	2022-07-07 10:49:17.391	2022-08-12 13:44:36.589	\N	2	tk	Wideo gözegçilik	6	Wideogözegçilik  - IP kameralaryň hereketiniň çäginde bolup geçýänleriň wideo ýazgysyny üpjün edýän ulgamdyr.\n\n“Tiandy” kompaniýasynyň häzirkizaman sanly enjamlaryny hususy jaýlarda, kotejlerde, supermarketlerde, restoranlarda, şeýle hem islendik administratiw desgalarda gurnamak bolýar, bu bolsa belli bir çäkde zerur bolan howpsuzlyk derejesini üpjün etmäge ýardam eder. Kompaniýamyz islendik desgada wideogözegçilik ulgamynyň gurnamasyny amala aşyrmaga taýýar. 	Biziň ýerine ýetiren işlerimiz bilen aşakda tanşyp bilersiňiz.	surveillance
7	2022-07-07 10:24:56.251	2022-08-12 13:46:18.691	\N	2	ru	Пожарная безопасность	3	Пожарная безопасность зданий и сооружений должна обеспечить защиту от возгораний и других чрезвычайных ситуаций, минимизировать опасные последствия для людей и имущества. Требования к безопасности определяются индивидуально по виду объекта, его категориям и классам опасности, по видам деятельности, другим показателям.\n\nВ систему пожарной безопасности входит: Система автоматической или ручной сигнализации, Система оповещения и управление эвакуацией людей, Система пожаротушения.	С нашими работами Вы можете ознакомиться ниже.	fire-safety
14	2022-07-07 10:42:36.286	2022-08-12 13:47:23.207	\N	2	en	Design of Local Area Networks	5	A local area network is a group of computing devices that forms a structure with coverage in a specific, usually small area. Such a network can unite computers and peripherals located in the same room, building, or in several civil or industrial buildings. We carry out installation and commissioning of the network using the equipment of our partners ONV. Devices can be connected using cables, fiber optics or Wi-Fi.	You can see our work below.	networking
13	2022-07-07 10:39:16.484	2022-08-12 13:47:23.282	\N	2	ru	Проектирование ЛВ сетей	5	Локально-вычислительная сеть — это группа вычислительных устройств, образующая структуру с покрытием на конкретной, как правило, небольшой территории. Такая сеть может объединять компьютеры и периферию, находящиеся в одном помещении, здании, или в нескольких гражданских или промышленных сооружениях.	С нашими работами Вы можете ознакомиться ниже.	networking
15	2022-07-07 10:42:44.98	2022-08-12 13:47:23.284	\N	2	tk	Ýerli-hasaplaýjy tory taslamalaşdyrmak	5	Ýerli-hasaplaýjy tory – bu adatça anyk uly bolmadyk çäkde, örtükli gurluşy emele getirýän, hasaplaýjy enjamlaryň toparydyr. Şeýle tor bir jaýda, binada, ýa-da birnäçe raýat ýa-da senagat maksatly desgalarda ýerleşýän kompýuterleri we periferiýany birleşdirip bilýar.\n\nBiz ONV hyzmatdaşlarymyzyň enjamlarynyň kömegi bilen, gurnama we ulanyşa goýberiş-düzediş işlerini amala aşyrýarys. Enjamlaryň aragatnaşygy kabelleriň, optiki-süýüm tehnologiýalary ýa-da Wi-Fi arkaly üpjün edilip biliner.	Biziň ýerine ýetiren işlerimiz bilen aşakda tanşyp bilersiňiz.	networking
11	2022-07-07 10:27:58.634	2022-08-16 17:17:39.657	\N	2	en	Elevator dispatching	4	The centralization of the operational control of the operation of elevators and the voice communication of elevator passengers with the dispatcher is carried out using elevator dispatching.\n\nThe solutions of our partners from “OB” company for a comprehensive and timely response to failures, as well as technical support, allow us to guarantee convenience, safety and reliability. We install a control and response system, a surveillance system, as well as a set of measures to ensure communication between elevator passengers and dispatchers.	You can see our works below.	elevators
12	2022-07-07 10:28:40.662	2022-08-16 17:17:39.661	\N	2	tk	Lift merkezleşdirmesi	4	Liftleriň işiniň operatir gözegçiliginiň we lift ýolagçylarynyň dispetçer bilen sesli aragatnaşygynyň merkezleşdirilmegi lift merkezleşdirmesi arkaly amala aşyrylýar.\n\nBiziň “OB” hyzmatdaşymyzyň näsazlyklara toplumlaýyn we öz wagtynda seslenmek boýunça çözgütleri, şeýle hem tehniki goldawy bize rahatlygy, howpsuzlygy we ygtybarlylygy kepillendirmäge mümkinçilik berýär. Biz dolandyryş we seslenme ulgamlaryny, gözegçilik ediş ulgamlaryny, şeýle hem liftiň ýolagçylarynyň we dispetçeriň aragatnaşykda bolmagyny üpjün etmek boýunça çäreleriň toplumyny gurnaýarys. 	Biziň ýerine ýetiren işlerimiz bilen aşakda tanşyp bilersiňiz.	elevators
16	2022-07-07 10:48:41.422	2022-08-12 13:44:36.586	\N	2	ru	Видеонаблюдение	6	Видеонаблюдение - система, обеспечивающая видеозапись происходящего в пределах действия IP камер. \n\nСовременное цифровое оборудование компании «Tiady» можно установить в частных домах, котеджах, супермаркетах, ресторанах, а также в любых административных, что позволит обеспечить необходимый уровень безопасности на определенной территории.	С нашими работами Вы можете ознакомиться ниже.	surveillance
10	2022-07-07 10:27:22.731	2022-08-16 17:17:39.547	\N	2	ru	Лифтовая диспечеризация	4	Цетрализация оперативного контроля работы лифтов и голосовой связи пассажиров лифта с диспетчером осуществляется при помощи лифтовой диспетчеризации.\n\nРешения наших парнеров “ОБЬ” по комплексному и своевременному реагированию на сбои, а также техническая поддержка позволяют нам гарантировать нам удобсто, безопасность и надежность. Мы устанавливаем систему управления и реагирования, систему наблюдения, а также комплекс мер по обеспечению связи пасажиров лифта и диспетчеров.	С нашими работами Вы можете ознакомиться ниже.	elevators
\.


--
-- Data for Name: pagas_services_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pagas_services_localizations_links (pagas_service_id, inv_pagas_service_id) FROM stdin;
3	2
3	1
1	3
1	2
2	3
2	1
6	5
6	4
4	6
4	5
5	6
5	4
9	8
9	7
7	9
7	8
8	9
8	7
12	11
12	10
10	12
10	11
11	12
11	10
15	14
15	13
13	15
13	14
14	15
14	13
18	17
18	16
16	18
16	17
17	18
17	16
\.


--
-- Data for Name: product_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_lists (id, description, created_at, updated_at, created_by_id, updated_by_id, locale) FROM stdin;
33	IP Wideo kamera	2022-06-24 11:08:11.314	2022-08-11 13:02:12.658	\N	2	tk
31	IP Видеокамера	2022-06-24 11:08:03.314	2022-08-11 13:02:12.707	\N	\N	ru
32	IP Camcorder	2022-06-24 11:08:07.672	2022-08-11 13:02:12.708	\N	\N	en
36	Lift bloklarynyň binýadynda Merkezleşdiriji toplum	2022-06-24 11:08:41.67	2022-08-11 13:02:40.104	\N	2	tk
35	Dispatching Complex based on Lift Blocks	2022-06-24 11:08:34.493	2022-08-11 13:02:40.163	\N	\N	en
28	Full gigabit 28-port managed PoE switch	2022-06-24 11:06:57.454	2022-06-24 11:07:28.825	\N	\N	ru
29	Full gigabit 28-port managed PoE switch	2022-06-24 11:07:23.074	2022-06-24 11:07:28.827	\N	\N	en
12	4MP Fixed Color Maker Bullet Camera	2022-06-24 10:53:22.811	2022-06-24 10:59:45.156	\N	\N	tk
8	4MP Fixed Color Maker Bullet Camera	2022-06-24 10:52:38.946	2022-06-24 10:59:45.188	\N	\N	ru
11	4MP Fixed Color Maker Bullet Camera	2022-06-24 10:53:17.78	2022-06-24 10:59:45.189	\N	\N	en
15	5MP Video Structure AI Dual PTZ Camera	2022-06-24 10:55:07.554	2022-06-24 10:59:59.08	\N	\N	tk
13	5MP Video Structure AI Dual PTZ Camera	2022-06-24 10:54:58.007	2022-06-24 10:59:59.108	\N	\N	ru
14	5MP Video Structure AI Dual PTZ Camera	2022-06-24 10:55:02.467	2022-06-24 10:59:59.109	\N	\N	en
18	16-ch HD Decoding Controller	2022-06-24 10:56:10.037	2022-06-24 11:00:17.687	\N	\N	tk
17	16-ch HD Decoding Controller	2022-06-24 10:56:04.755	2022-06-24 11:00:17.72	\N	\N	en
16	16-ch HD Decoding Controller	2022-06-24 10:55:46.206	2022-06-24 11:00:17.719	\N	\N	ru
21	Face Recognition Terminal	2022-06-24 10:57:09.105	2022-06-24 11:00:34.009	\N	\N	tk
19	Face Recognition Terminal	2022-06-24 10:56:53.945	2022-06-24 11:00:34.035	\N	\N	ru
20	Face Recognition Terminal	2022-06-24 10:57:01.547	2022-06-24 11:00:34.038	\N	\N	en
24	Gigabit 3-port PoE switch	2022-06-24 11:01:53.438	2022-06-24 11:01:53.438	\N	\N	tk
10	2MP Fixed Color Maker Turret Camera	2022-06-24 10:52:55.515	2022-06-24 10:59:31.176	\N	\N	tk
7	2MP Fixed Color Maker Turret Camera	2022-06-24 10:51:59.402	2022-06-24 10:59:31.208	\N	\N	ru
9	2MP Fixed Color Maker Turret Camera	2022-06-24 10:52:50.191	2022-06-24 10:59:31.21	\N	\N	en
22	Gigabit 3-port PoE switch	2022-06-24 11:01:43.126	2022-06-24 11:01:53.481	\N	\N	ru
23	Gigabit 3-port PoE switch	2022-06-24 11:01:48.798	2022-06-24 11:01:53.483	\N	\N	en
27	10/100M 10-port AI PoE switch	2022-06-24 11:06:19.964	2022-06-24 11:06:19.964	\N	\N	tk
25	10/100M 10-port AI PoE switch	2022-06-24 11:05:30.328	2022-06-24 11:06:20	\N	\N	ru
26	10/100M 10-port AI PoE switch	2022-06-24 11:06:03.94	2022-06-24 11:06:20.002	\N	\N	en
30	Full gigabit 28-port managed PoE switch	2022-06-24 11:07:28.778	2022-06-24 11:07:28.778	\N	\N	tk
34	Диспетчерский Комплекс на базе Лифтовых блоков	2022-06-24 11:08:30.984	2022-08-11 13:02:40.165	\N	\N	ru
39	Konsentrator 7.2/485	2022-06-24 11:09:11.759	2022-08-11 13:03:07.61	\N	2	tk
37	Концентратор 7.2/485	2022-06-24 11:08:59.439	2022-08-11 13:03:07.667	\N	\N	ru
38	Hub 7.2/485	2022-06-24 11:09:02.932	2022-08-11 13:03:07.682	\N	\N	en
48	Göteriji platformalaryň merkezleşdirmesi	2022-06-24 11:10:39.079	2022-08-12 10:53:45.091	\N	2	tk
46	Диспетчеризация подъемных платформ	2022-06-24 11:10:29.473	2022-08-12 10:53:45.186	\N	2	ru
47	Dispatching of lifting platforms	2022-06-24 11:10:33.042	2022-08-12 10:53:45.188	\N	\N	en
40	Адаптер звукового оповещения	2022-06-24 11:09:33.791	2022-08-11 14:10:42.394	\N	2	ru
41	 Sound Alert Adapter	2022-06-24 11:09:39.669	2022-08-11 14:10:42.443	\N	2	en
42	Sesli duýduryş adapteri	2022-06-24 11:09:44.477	2022-08-11 14:10:42.444	\N	2	tk
50	 Lift block	2022-06-27 13:26:35.759	2022-08-11 14:41:50.997	\N	2	en
49	Лифтовой блок	2022-06-27 13:26:24.04	2022-08-11 14:41:51.11	\N	\N	ru
51	Lift blogy	2022-06-27 13:27:22.769	2022-08-11 14:41:51.112	\N	2	tk
43	Переговорное устройство АПУ-2Н	2022-06-24 11:10:02.358	2022-08-11 14:45:26.967	\N	2	ru
44	Intercom APU-2N	2022-06-24 11:10:06.711	2022-08-11 14:45:27.013	\N	\N	en
45	Gepleşik üçin enjam APU-2N	2022-06-24 11:10:10.874	2022-08-11 14:45:27.014	\N	2	tk
\.


--
-- Data for Name: product_lists_brand_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_lists_brand_links (product_list_id, brand_id) FROM stdin;
22	2
25	2
28	2
31	3
34	3
37	3
49	3
32	8
35	8
38	8
44	8
47	8
9	4
11	4
14	4
17	4
20	4
24	7
27	7
30	7
33	9
36	9
39	9
42	9
51	9
23	6
26	6
29	6
41	8
40	3
50	8
45	9
43	3
46	3
48	9
7	1
8	1
13	1
16	1
19	1
10	5
12	5
15	5
18	5
21	5
\.


--
-- Data for Name: product_lists_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_lists_localizations_links (product_list_id, inv_product_list_id) FROM stdin;
10	9
10	7
7	10
7	9
9	10
9	7
12	11
12	8
8	12
8	11
11	12
11	8
15	14
15	13
13	15
13	14
14	15
14	13
18	17
18	16
16	18
16	17
17	18
17	16
21	20
21	19
19	21
19	20
20	21
20	19
24	23
24	22
22	24
22	23
23	24
23	22
27	26
27	25
25	27
25	26
26	27
26	25
30	29
30	28
28	30
28	29
29	30
29	28
33	32
33	31
31	33
31	32
32	33
32	31
36	34
36	35
34	36
34	35
35	36
35	34
39	38
39	37
37	39
37	38
38	39
38	37
42	41
42	40
40	42
40	41
41	42
41	40
45	44
45	43
43	45
43	44
44	45
44	43
48	46
48	47
46	48
46	47
47	48
47	46
51	50
51	49
49	51
49	50
50	51
50	49
\.


--
-- Data for Name: service_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.service_lists (id, heading, description, created_at, updated_at, created_by_id, updated_by_id, locale, sort_id) FROM stdin;
18	Ýerli-hasapaýjy torlary taslamalaşdyrmak	Taslamalaşdyrma, gurnama, ulanyşa goýberiş-düzediş işleri kärhananyň prosessleriniň üstünlikli awtomatlaşdyrylmagy üçin zerurdyr, biz ygtybarly optimizasiýany üpjün edýän, kompýuter enjamyny we degişlilikleri bir tora jemleýäris.	2022-06-24 15:28:03.478	2022-08-17 15:59:31.871	\N	2	tk	6
4	Пожарная безопасность	Компания успешно проектирует и внедряет необходимые инженерно-технические решения, которые обеспечивают безопасную среду в зданиях и предприятиях.	2022-06-20 12:51:16.715	2022-08-17 15:59:42.655	\N	2	ru	3
14	Ýangyn howpsuzlygy	Kompaniýa binalarda we kärhanalarda howpsuz gurşawy üpjün edýän, zerur bolan inžener-tehniki çözgütleri üstünlikli taslamalaşdyrýar we ornaşdyrýar.	2022-06-24 15:24:53.991	2022-08-17 15:59:42.687	\N	2	tk	3
10	Toplumlaýyn gurluşyk işleri	Kompaniýanyň jaýlaryň we binalaryň  gurluşygy, turbageçirijiler, ýyladyş, howany sowadyş, howalandyryş ulgamlaryny gurnamak boýunça işleriň toplumyny, şeýle hem beýleki gurluşyk işlerini ýerine ýetirmek üçin ähli serişdeleri bar.	2022-06-24 15:21:48.271	2022-08-17 15:58:33.248	\N	2	tk	1
9	Integrated construction	Company has all the resources to perform a range of construction works of premises and buildings, pipelines, installation of heating, air conditioning, ventilation systems, as well as other construction work.	2022-06-24 15:21:21.882	2022-08-17 15:58:33.249	\N	2	en	1
13	Fire safety	Company successfully designs and implements the necessary engineering and technical solutions that provide a safe environment in buildings and enterprises.	2022-06-24 15:23:51.624	2022-08-17 15:59:42.688	\N	2	en	3
5	Лифтовая диспетчеризация	Мы в состоянии обеспечить эффективное реагирование на сбой, поломку лифтового оборудования, при помощи оперативного контроля безопасности пасажиров и их своевременной связи с диспетчером.	2022-06-23 15:00:04.677	2022-08-17 15:58:59.537	\N	2	ru	4
11	Elevator dispatching	We are able to provide an effective response to a failure, breakdown of elevator equipment, with the operational control support for the safety of passengers and their timely communication with the dispatcher.	2022-06-24 15:22:37.622	2022-08-17 15:58:59.578	\N	2	en	4
12	Lift merkezleşdirmesi	Biz ýolagçylaryň howpsuzlygynyň operatiw gözegçiligi we olaryň öz wagtynda dispetçer bilen habarlaşmagy arkaly, lift enjamynyň näsazlyklaryna, döwülmegine netijeli jogap bermegi üpjün edip bilýäris.	2022-06-24 15:23:08.259	2022-08-17 15:58:59.581	\N	2	tk	4
2	Проектирование	Мы готовы разработать концепции с нуля и выполнить строительное, промышленное и эскизное проектирование Вашего здания и сопровождать Ваш проект на протяжении всего строительства.	2022-06-20 12:50:08.33	2022-08-17 15:59:14.774	\N	2	ru	2
16	Taslamalaşdyrmak	Biz binaňyzyň täzeden başlap konsepsiýany işläp taýýarlamaga we gurluşyk, senagat we eskiz taslamasyny ýerine ýetirmäge, şeýle hem taslamaňyzy ähli gurluşyk döwründe alyp barmaga taýýar.	2022-06-24 15:25:45.934	2022-08-17 15:59:14.813	\N	2	tk	2
15	Design	We are ready to develop concepts from scratch and carry out construction, industrial and preliminary design of Your building and accompany Your project throughout the construction.	2022-06-24 15:25:26.955	2022-08-17 15:59:14.814	\N	2	en	2
17	Design of LP networks	Design, installation, commissioning are necessary for the successful automation of enterprises’ processes, we combine computer equipment and components into a common network that provides reliable optimization.	2022-06-24 15:27:21.022	2022-08-17 15:59:31.87	\N	2	en	6
7	CCTV	We successfully implement video surveillance systems, with guarantee for quality of visual control and automatic data analysis.	2022-06-24 15:19:54.377	2022-08-12 13:37:45.008	\N	2	en	5
3	Видеонаблюдение	Мы успешно внедряем системы видеонаблюдения, гарантируя качество визуального контроля и автоматического анализа данных.	2022-06-20 12:50:49.435	2022-08-12 13:37:45.054	\N	\N	ru	5
8	Wideogözegçilik	Biz daşky gözegçiligiň hilini we maglumatlaryň awtomatiki derňewini kepillendirýän wideo gözegçilik ulgamyny üstünlikli ornaşdyrýarys.	2022-06-24 15:20:58.58	2022-08-12 13:37:45.055	\N	2	tk	5
1	Комплексное строительство	Компания имеет все ресурсы для выполнения комплекса работ по строительству, помещений и зданий, трубопроводов, установке систем отопления, кондиционирования, вентиляции, а также прочие строительные работы.	2022-06-20 12:49:13.72	2022-08-17 15:58:33.21	\N	2	ru	1
6	Проектировка слаботочных сетей	Проектирование, монтаж, пуско-наладка необходима для успешной автоматизации процессов предприятий, мы объединяем компьютерное оборудование и комплектующие в общую сеть, обеспечивающие надежную оптимизацию.	2022-06-23 15:00:50.943	2022-08-17 15:59:31.815	\N	2	ru	6
\.


--
-- Data for Name: service_lists_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.service_lists_localizations_links (service_list_id, inv_service_list_id) FROM stdin;
8	3
8	7
3	8
3	7
7	8
7	3
10	9
10	1
1	10
1	9
9	10
9	1
12	11
12	5
5	12
5	11
11	12
11	5
14	13
14	4
4	14
4	13
13	14
13	4
16	15
16	2
2	16
2	15
15	16
15	2
18	17
18	6
6	18
6	17
17	18
17	6
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	insomnia		full-access	42383d21e19788a19f331f8127d830c11b77912887e6005c70ee95580c1218d2364a7c3cd81e64aad83b4d1e318ec0003d2fb04f1fce2c9334165e85c7d2118f	2022-08-16 00:22:01.105	2022-08-16 00:22:01.105	\N	\N
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
2	plugin_content_manager_configuration_content_types::admin::permission	{"uid":"admin::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}	object	\N	\N
3	plugin_content_manager_configuration_content_types::admin::user	{"uid":"admin::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}	object	\N	\N
4	plugin_content_manager_configuration_content_types::admin::role	{"uid":"admin::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object	\N	\N
5	plugin_content_manager_configuration_content_types::admin::api-token	{"uid":"admin::api-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}]]}}	object	\N	\N
6	plugin_content_manager_configuration_content_types::plugin::upload.file	{"uid":"plugin::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object	\N	\N
7	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"uid":"plugin::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"editRelations":["role"],"edit":[[{"name":"action","size":6}]]}}	object	\N	\N
15	plugin_i18n_default_locale	"ru"	string	\N	\N
8	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"uid":"plugin::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"uid":"plugin::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object	\N	\N
11	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
12	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}	object	\N	\N
13	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
14	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"uid":"plugin::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"api::brand.brand":{"kind":"collectionType","collectionName":"brands","info":{"singularName":"brand","pluralName":"brands","displayName":"Вендоры","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"name":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"product_lists":{"type":"relation","relation":"oneToMany","target":"api::product-list.product-list","mappedBy":"brand"},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::brand.brand"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"brands","info":{"singularName":"brand","pluralName":"brands","displayName":"Вендоры","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"name":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"product_lists":{"type":"relation","relation":"oneToMany","target":"api::product-list.product-list","mappedBy":"brand"},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"}},"kind":"collectionType"},"modelType":"contentType","modelName":"brand","connection":"default","uid":"api::brand.brand","apiName":"brand","globalId":"Brand","actions":{},"lifecycles":{}},"api::certificate-list.certificate-list":{"kind":"collectionType","collectionName":"certificate_lists","info":{"singularName":"certificate-list","pluralName":"certificate-lists","displayName":"Сертификаты","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"img":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":false}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::certificate-list.certificate-list"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"certificate_lists","info":{"singularName":"certificate-list","pluralName":"certificate-lists","displayName":"Сертификаты","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"img":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":false}}}},"kind":"collectionType"},"modelType":"contentType","modelName":"certificate-list","connection":"default","uid":"api::certificate-list.certificate-list","apiName":"certificate-list","globalId":"CertificateList","actions":{},"lifecycles":{}},"api::layout.layout":{"kind":"singleType","collectionName":"layouts","info":{"singularName":"layout","pluralName":"layouts","displayName":"Хэдер и Футер","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"navbar":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"navbar-header.navbar"},"address":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"contacts.address"},"number":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"contacts.phone-number"},"footer":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"footer.footer-main"},"footer_dev":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"footer.footer-dev"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::layout.layout"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"layouts","info":{"singularName":"layout","pluralName":"layouts","displayName":"Хэдер и Футер","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"navbar":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"navbar-header.navbar"},"address":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"contacts.address"},"number":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"contacts.phone-number"},"footer":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"footer.footer-main"},"footer_dev":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"footer.footer-dev"}},"kind":"singleType"},"modelType":"contentType","modelName":"layout","connection":"default","uid":"api::layout.layout","apiName":"layout","globalId":"Layout","actions":{},"lifecycles":{}},"api::local.local":{"kind":"collectionType","collectionName":"locals","info":{"singularName":"local","pluralName":"locals","displayName":"Языки","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"name":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::local.local"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"locals","info":{"singularName":"local","pluralName":"locals","displayName":"Языки","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"name":{"type":"string","pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelType":"contentType","modelName":"local","connection":"default","uid":"api::local.local","apiName":"local","globalId":"Local","actions":{},"lifecycles":{}},"api::main.main":{"kind":"singleType","collectionName":"mains","info":{"singularName":"main","pluralName":"mains","displayName":"Главная страница","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"headVideo":{"type":"media","multiple":false,"required":false,"allowedTypes":["videos"],"pluginOptions":{"i18n":{"localized":false}}},"services":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"services.services"},"product":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"products.product"},"about":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"about.about"},"certificate":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"certificate.certificate"},"form":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"form.form-main"},"head":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"desc":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"},"headButton":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::main.main"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"mains","info":{"singularName":"main","pluralName":"mains","displayName":"Главная страница","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"headVideo":{"type":"media","multiple":false,"required":false,"allowedTypes":["videos"],"pluginOptions":{"i18n":{"localized":false}}},"services":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"services.services"},"product":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"products.product"},"about":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"about.about"},"certificate":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"certificate.certificate"},"form":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"form.form-main"},"head":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"desc":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"},"headButton":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"}},"kind":"singleType"},"modelType":"contentType","modelName":"main","connection":"default","uid":"api::main.main","apiName":"main","globalId":"Main","actions":{},"lifecycles":{}},"api::navigation.navigation":{"kind":"collectionType","collectionName":"navigations","info":{"singularName":"navigation","pluralName":"navigations","displayName":"Навигация","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"name":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"href":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"sort_id":{"pluginOptions":{"i18n":{"localized":true}},"type":"integer"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::navigation.navigation"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"navigations","info":{"singularName":"navigation","pluralName":"navigations","displayName":"Навигация","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"name":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"href":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"sort_id":{"pluginOptions":{"i18n":{"localized":true}},"type":"integer"}},"kind":"collectionType"},"modelType":"contentType","modelName":"navigation","connection":"default","uid":"api::navigation.navigation","apiName":"navigation","globalId":"Navigation","actions":{},"lifecycles":{}},"api::pagas-service.pagas-service":{"kind":"collectionType","collectionName":"pagas_services","info":{"singularName":"pagas-service","pluralName":"pagas-services","displayName":"Страницы услуг","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"},"under_description":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"},"img1":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":false}}},"img2":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":false}}},"img3":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":false}}},"sort_id":{"pluginOptions":{"i18n":{"localized":false}},"type":"integer"},"slug":{"pluginOptions":{"i18n":{"localized":false}},"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::pagas-service.pagas-service"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"pagas_services","info":{"singularName":"pagas-service","pluralName":"pagas-services","displayName":"Страницы услуг","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"},"under_description":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"},"img1":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":false}}},"img2":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":false}}},"img3":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":false}}},"sort_id":{"pluginOptions":{"i18n":{"localized":false}},"type":"integer"},"slug":{"pluginOptions":{"i18n":{"localized":false}},"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"pagas-service","connection":"default","uid":"api::pagas-service.pagas-service","apiName":"pagas-service","globalId":"PagasService","actions":{},"lifecycles":{}},"api::product-list.product-list":{"kind":"collectionType","collectionName":"product_lists","info":{"singularName":"product-list","pluralName":"product-lists","displayName":"Список продуктов","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"img":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":false}}},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"},"brand":{"type":"relation","relation":"manyToOne","target":"api::brand.brand","inversedBy":"product_lists"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::product-list.product-list"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"product_lists","info":{"singularName":"product-list","pluralName":"product-lists","displayName":"Список продуктов","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"img":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":false}}},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"},"brand":{"type":"relation","relation":"manyToOne","target":"api::brand.brand","inversedBy":"product_lists"}},"kind":"collectionType"},"modelType":"contentType","modelName":"product-list","connection":"default","uid":"api::product-list.product-list","apiName":"product-list","globalId":"ProductList","actions":{},"lifecycles":{}},"api::service-list.service-list":{"kind":"collectionType","collectionName":"service_lists","info":{"singularName":"service-list","pluralName":"service-lists","displayName":"Список услуг","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"img":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":false}}},"heading":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"},"sort_id":{"pluginOptions":{"i18n":{"localized":true}},"type":"integer"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::service-list.service-list"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"service_lists","info":{"singularName":"service-list","pluralName":"service-lists","displayName":"Список услуг","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"img":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":false}}},"heading":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"},"sort_id":{"pluginOptions":{"i18n":{"localized":true}},"type":"integer"}},"kind":"collectionType"},"modelType":"contentType","modelName":"service-list","connection":"default","uid":"api::service-list.service-list","apiName":"service-list","globalId":"ServiceList","actions":{},"lifecycles":{}}}	object	\N	\N
16	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object	\N	\N
20	plugin_content_manager_configuration_content_types::api::local.local	{"uid":"api::local.local","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","createdAt","updatedAt"],"editRelations":[],"edit":[[{"name":"name","size":6}]]}}	object	\N	\N
27	plugin_content_manager_configuration_content_types::api::product-list.product-list	{"uid":"api::product-list.product-list","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"img":{"edit":{"label":"img","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"img","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"brand":{"edit":{"label":"brand","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"brand","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","img","description","createdAt"],"edit":[[{"name":"img","size":6},{"name":"description","size":6}]],"editRelations":["brand"]}}	object	\N	\N
21	plugin_content_manager_configuration_components::contacts.address	{"uid":"contacts.address","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"address","defaultSortBy":"address","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"address":{"edit":{"label":"address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"address","searchable":true,"sortable":true}}},"layouts":{"list":["id","address"],"edit":[[{"name":"address","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
22	plugin_content_manager_configuration_components::contacts.mail	{"uid":"contacts.mail","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"mail":{"edit":{"label":"mail","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mail","searchable":true,"sortable":true}}},"layouts":{"list":["id","mail"],"edit":[[{"name":"mail","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
23	plugin_content_manager_configuration_components::contacts.phone-number	{"uid":"contacts.phone-number","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"number","defaultSortBy":"number","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"number":{"edit":{"label":"number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"number","searchable":true,"sortable":true}}},"layouts":{"list":["id","number"],"edit":[[{"name":"number","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
26	plugin_content_manager_configuration_components::products.product	{"uid":"products.product","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"brands":{"edit":{"label":"brands","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"brands","searchable":false,"sortable":false}}},"layouts":{"list":["id","heading"],"edit":[[{"name":"heading","size":6}],[{"name":"brands","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
35	plugin_content_manager_configuration_components::footer.footer-main	{"uid":"footer.footer-main","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title_mail","defaultSortBy":"title_mail","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"logo":{"edit":{"label":"logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logo","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"title_mail":{"edit":{"label":"title_mail","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title_mail","searchable":true,"sortable":true}},"mail":{"edit":{"label":"mail","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mail","searchable":true,"sortable":true}}},"layouts":{"list":["id","logo","description","title_mail"],"edit":[[{"name":"logo","size":6},{"name":"description","size":6}],[{"name":"title_mail","size":6},{"name":"mail","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
25	plugin_content_manager_configuration_content_types::api::service-list.service-list	{"uid":"api::service-list.service-list","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"img":{"edit":{"label":"img","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"img","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"sort_id":{"edit":{"label":"sort_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sort_id","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","img","heading","description"],"edit":[[{"name":"img","size":6},{"name":"heading","size":6}],[{"name":"description","size":6},{"name":"sort_id","size":4}]],"editRelations":[]}}	object	\N	\N
28	plugin_content_manager_configuration_components::about.about	{"uid":"about.about","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"headImg":{"edit":{"label":"headImg","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"headImg","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"under_heading":{"edit":{"label":"under_heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"under_heading","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"descImg":{"edit":{"label":"descImg","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"descImg","searchable":false,"sortable":false}}},"layouts":{"list":["id","headImg","heading","under_heading"],"edit":[[{"name":"headImg","size":6},{"name":"heading","size":6}],[{"name":"under_heading","size":6},{"name":"description","size":6}],[{"name":"descImg","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
30	plugin_content_manager_configuration_content_types::api::certificate-list.certificate-list	{"uid":"api::certificate-list.certificate-list","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"img":{"edit":{"label":"img","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"img","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","img","createdAt","updatedAt"],"editRelations":[],"edit":[[{"name":"img","size":6}]]}}	object	\N	\N
33	plugin_content_manager_configuration_components::form.form-main	{"uid":"form.form-main","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"message":{"edit":{"label":"message","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"message","searchable":true,"sortable":true}},"mail":{"edit":{"label":"mail","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mail","searchable":true,"sortable":true}},"form_address":{"edit":{"label":"form_address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"form_address","searchable":false,"sortable":false}},"form_mail":{"edit":{"label":"form_mail","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"form_mail","searchable":false,"sortable":false}},"form_number":{"edit":{"label":"form_number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"form_number","searchable":false,"sortable":false}},"button":{"edit":{"label":"button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"button","searchable":true,"sortable":true}}},"layouts":{"list":["id","heading","name","message"],"edit":[[{"name":"heading","size":6},{"name":"name","size":6}],[{"name":"message","size":6},{"name":"mail","size":6}],[{"name":"form_address","size":12}],[{"name":"form_mail","size":12}],[{"name":"form_number","size":12}],[{"name":"button","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
37	plugin_documentation_config	{"restrictedAccess":false}	object	\N	\N
34	plugin_content_manager_configuration_content_types::api::layout.layout	{"uid":"api::layout.layout","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"navbar":{"edit":{"label":"navbar","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"navbar","searchable":false,"sortable":false}},"address":{"edit":{"label":"address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"address","searchable":false,"sortable":false}},"number":{"edit":{"label":"number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"number","searchable":false,"sortable":false}},"footer":{"edit":{"label":"footer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"footer","searchable":false,"sortable":false}},"footer_dev":{"edit":{"label":"footer_dev","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"footer_dev","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","navbar","createdAt","updatedAt"],"edit":[[{"name":"navbar","size":12}],[{"name":"address","size":12}],[{"name":"number","size":12}],[{"name":"footer_dev","size":12}],[{"name":"footer","size":12}]],"editRelations":[]}}	object	\N	\N
17	plugin_content_manager_configuration_content_types::api::main.main	{"uid":"api::main.main","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"headVideo":{"edit":{"label":"headVideo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"headVideo","searchable":false,"sortable":false}},"services":{"edit":{"label":"services","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"services","searchable":false,"sortable":false}},"product":{"edit":{"label":"product","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"product","searchable":false,"sortable":false}},"about":{"edit":{"label":"about","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"about","searchable":false,"sortable":false}},"certificate":{"edit":{"label":"certificate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"certificate","searchable":false,"sortable":false}},"form":{"edit":{"label":"form","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"form","searchable":false,"sortable":false}},"head":{"edit":{"label":"head","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"head","searchable":true,"sortable":true}},"desc":{"edit":{"label":"desc","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"desc","searchable":true,"sortable":true}},"headButton":{"edit":{"label":"headButton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"headButton","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"headVideo","size":6},{"name":"headButton","size":6}],[{"name":"head","size":6},{"name":"desc","size":6}],[{"name":"services","size":12}],[{"name":"product","size":12}],[{"name":"about","size":12}],[{"name":"certificate","size":12}],[{"name":"form","size":12}]],"editRelations":[],"list":["id","createdAt","updatedAt","headVideo"]}}	object	\N	\N
18	plugin_content_manager_configuration_components::navbar-header.navbar	{"uid":"navbar-header.navbar","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"logo":{"edit":{"label":"logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logo","searchable":false,"sortable":false}},"locals":{"edit":{"label":"locals","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"locals","searchable":false,"sortable":false}},"navigations":{"edit":{"label":"navigations","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"navigations","searchable":false,"sortable":false}}},"layouts":{"list":["id","logo","locals","navigations"],"edit":[[{"name":"logo","size":6},{"name":"locals","size":6}],[{"name":"navigations","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
44	plugin_content_manager_configuration_content_types::api::brand.brand	{"uid":"api::brand.brand","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"product_lists":{"edit":{"label":"product_lists","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"product_lists","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","product_lists","createdAt"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}]],"editRelations":["product_lists"]}}	object	\N	\N
29	plugin_content_manager_configuration_components::certificate.certificate	{"uid":"certificate.certificate","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"logo":{"edit":{"label":"logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logo","searchable":false,"sortable":false}},"under_heading":{"edit":{"label":"under_heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"under_heading","searchable":true,"sortable":true}},"certificate_lists":{"edit":{"label":"certificate_lists","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"certificate_lists","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}}},"layouts":{"list":["id","logo","under_heading","certificate_lists"],"edit":[[{"name":"logo","size":6},{"name":"under_heading","size":6}],[{"name":"certificate_lists","size":6},{"name":"heading","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
19	plugin_content_manager_configuration_content_types::api::navigation.navigation	{"uid":"api::navigation.navigation","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"href":{"edit":{"label":"href","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"href","searchable":true,"sortable":true}},"sort_id":{"edit":{"label":"sort_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sort_id","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","createdAt","updatedAt"],"edit":[[{"name":"name","size":6},{"name":"href","size":6}],[{"name":"sort_id","size":4}]],"editRelations":[]}}	object	\N	\N
36	plugin_content_manager_configuration_components::footer.footer-dev	{"uid":"footer.footer-dev","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"permission","defaultSortBy":"permission","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"permission":{"edit":{"label":"permission","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"permission","searchable":true,"sortable":true}},"logo_dev":{"edit":{"label":"logo_dev","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logo_dev","searchable":false,"sortable":false}},"logo_dev1":{"edit":{"label":"logo_dev1","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logo_dev1","searchable":false,"sortable":false}},"devBy":{"edit":{"label":"devBy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"devBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","permission","logo_dev","logo_dev1"],"edit":[[{"name":"permission","size":6},{"name":"logo_dev","size":6}],[{"name":"logo_dev1","size":6},{"name":"devBy","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
47	plugin_content_manager_configuration_content_types::api::pagas-service.pagas-service	{"uid":"api::pagas-service.pagas-service","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"under_description":{"edit":{"label":"under_description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"under_description","searchable":true,"sortable":true}},"img1":{"edit":{"label":"img1","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"img1","searchable":false,"sortable":false}},"img2":{"edit":{"label":"img2","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"img2","searchable":false,"sortable":false}},"img3":{"edit":{"label":"img3","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"img3","searchable":false,"sortable":false}},"sort_id":{"edit":{"label":"sort_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sort_id","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","createdAt","updatedAt","slug"],"edit":[[{"name":"name","size":6}],[{"name":"sort_id","size":6}],[{"name":"description","size":12}],[{"name":"under_description","size":6},{"name":"img1","size":6}],[{"name":"img2","size":6},{"name":"img3","size":6}],[{"name":"slug","size":6}]],"editRelations":[]}}	object	\N	\N
24	plugin_content_manager_configuration_components::services.services	{"uid":"services.services","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"service_lists":{"edit":{"label":"service_lists","description":"","placeholder":"","visible":true,"editable":true,"mainField":"heading"},"list":{"label":"service_lists","searchable":false,"sortable":false}}},"layouts":{"list":["id","heading"],"edit":[[{"name":"heading","size":6}],[{"name":"service_lists","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
76	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"brands","indexes":[{"name":"brands_created_by_id_fk","columns":["created_by_id"]},{"name":"brands_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"brands_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"brands_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"certificate_lists","indexes":[{"name":"certificate_lists_created_by_id_fk","columns":["created_by_id"]},{"name":"certificate_lists_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"certificate_lists_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"certificate_lists_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"layouts","indexes":[{"name":"layouts_created_by_id_fk","columns":["created_by_id"]},{"name":"layouts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"layouts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"layouts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"locals","indexes":[{"name":"locals_created_by_id_fk","columns":["created_by_id"]},{"name":"locals_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"locals_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"locals_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"mains","indexes":[{"name":"mains_created_by_id_fk","columns":["created_by_id"]},{"name":"mains_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"mains_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"mains_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"head","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"desc","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"head_button","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"navigations","indexes":[{"name":"navigations_created_by_id_fk","columns":["created_by_id"]},{"name":"navigations_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"navigations_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"navigations_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"href","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"sort_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"pagas_services","indexes":[{"name":"pagas_services_created_by_id_fk","columns":["created_by_id"]},{"name":"pagas_services_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pagas_services_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pagas_services_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"under_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"sort_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"product_lists","indexes":[{"name":"product_lists_created_by_id_fk","columns":["created_by_id"]},{"name":"product_lists_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"product_lists_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"product_lists_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"service_lists","indexes":[{"name":"service_lists_created_by_id_fk","columns":["created_by_id"]},{"name":"service_lists_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"service_lists_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"service_lists_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"sort_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_about_abouts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"under_heading","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_certificate_certificates","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"under_heading","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_contacts_addresses","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"address","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_contacts_mail","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"mail","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_contacts_phone_numbers","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_footer_footer_devs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"dev_by","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_footer_footer_mains","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title_mail","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mail","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_form_form_mains","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"message","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mail","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_navbar_header_navbars","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_products_products","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_services_services","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"brands_localizations_links","indexes":[{"name":"brands_localizations_links_fk","columns":["brand_id"]},{"name":"brands_localizations_links_inv_fk","columns":["inv_brand_id"]}],"foreignKeys":[{"name":"brands_localizations_links_fk","columns":["brand_id"],"referencedColumns":["id"],"referencedTable":"brands","onDelete":"CASCADE"},{"name":"brands_localizations_links_inv_fk","columns":["inv_brand_id"],"referencedColumns":["id"],"referencedTable":"brands","onDelete":"CASCADE"}],"columns":[{"name":"brand_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_brand_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"certificate_lists_localizations_links","indexes":[{"name":"certificate_lists_localizations_links_fk","columns":["certificate_list_id"]},{"name":"certificate_lists_localizations_links_inv_fk","columns":["inv_certificate_list_id"]}],"foreignKeys":[{"name":"certificate_lists_localizations_links_fk","columns":["certificate_list_id"],"referencedColumns":["id"],"referencedTable":"certificate_lists","onDelete":"CASCADE"},{"name":"certificate_lists_localizations_links_inv_fk","columns":["inv_certificate_list_id"],"referencedColumns":["id"],"referencedTable":"certificate_lists","onDelete":"CASCADE"}],"columns":[{"name":"certificate_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_certificate_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"layouts_components","indexes":[{"name":"layouts_field_index","columns":["field"],"type":null},{"name":"layouts_component_type_index","columns":["component_type"],"type":null},{"name":"layouts_entity_fk","columns":["entity_id"]}],"foreignKeys":[{"name":"layouts_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"layouts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":0,"notNullable":false,"unsigned":true}]},{"name":"layouts_localizations_links","indexes":[{"name":"layouts_localizations_links_fk","columns":["layout_id"]},{"name":"layouts_localizations_links_inv_fk","columns":["inv_layout_id"]}],"foreignKeys":[{"name":"layouts_localizations_links_fk","columns":["layout_id"],"referencedColumns":["id"],"referencedTable":"layouts","onDelete":"CASCADE"},{"name":"layouts_localizations_links_inv_fk","columns":["inv_layout_id"],"referencedColumns":["id"],"referencedTable":"layouts","onDelete":"CASCADE"}],"columns":[{"name":"layout_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_layout_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"locals_localizations_links","indexes":[{"name":"locals_localizations_links_fk","columns":["local_id"]},{"name":"locals_localizations_links_inv_fk","columns":["inv_local_id"]}],"foreignKeys":[{"name":"locals_localizations_links_fk","columns":["local_id"],"referencedColumns":["id"],"referencedTable":"locals","onDelete":"CASCADE"},{"name":"locals_localizations_links_inv_fk","columns":["inv_local_id"],"referencedColumns":["id"],"referencedTable":"locals","onDelete":"CASCADE"}],"columns":[{"name":"local_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_local_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"mains_components","indexes":[{"name":"mains_field_index","columns":["field"],"type":null},{"name":"mains_component_type_index","columns":["component_type"],"type":null},{"name":"mains_entity_fk","columns":["entity_id"]}],"foreignKeys":[{"name":"mains_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"mains","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":0,"notNullable":false,"unsigned":true}]},{"name":"mains_localizations_links","indexes":[{"name":"mains_localizations_links_fk","columns":["main_id"]},{"name":"mains_localizations_links_inv_fk","columns":["inv_main_id"]}],"foreignKeys":[{"name":"mains_localizations_links_fk","columns":["main_id"],"referencedColumns":["id"],"referencedTable":"mains","onDelete":"CASCADE"},{"name":"mains_localizations_links_inv_fk","columns":["inv_main_id"],"referencedColumns":["id"],"referencedTable":"mains","onDelete":"CASCADE"}],"columns":[{"name":"main_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_main_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"navigations_localizations_links","indexes":[{"name":"navigations_localizations_links_fk","columns":["navigation_id"]},{"name":"navigations_localizations_links_inv_fk","columns":["inv_navigation_id"]}],"foreignKeys":[{"name":"navigations_localizations_links_fk","columns":["navigation_id"],"referencedColumns":["id"],"referencedTable":"navigations","onDelete":"CASCADE"},{"name":"navigations_localizations_links_inv_fk","columns":["inv_navigation_id"],"referencedColumns":["id"],"referencedTable":"navigations","onDelete":"CASCADE"}],"columns":[{"name":"navigation_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_navigation_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pagas_services_localizations_links","indexes":[{"name":"pagas_services_localizations_links_fk","columns":["pagas_service_id"]},{"name":"pagas_services_localizations_links_inv_fk","columns":["inv_pagas_service_id"]}],"foreignKeys":[{"name":"pagas_services_localizations_links_fk","columns":["pagas_service_id"],"referencedColumns":["id"],"referencedTable":"pagas_services","onDelete":"CASCADE"},{"name":"pagas_services_localizations_links_inv_fk","columns":["inv_pagas_service_id"],"referencedColumns":["id"],"referencedTable":"pagas_services","onDelete":"CASCADE"}],"columns":[{"name":"pagas_service_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_pagas_service_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"product_lists_brand_links","indexes":[{"name":"product_lists_brand_links_fk","columns":["product_list_id"]},{"name":"product_lists_brand_links_inv_fk","columns":["brand_id"]}],"foreignKeys":[{"name":"product_lists_brand_links_fk","columns":["product_list_id"],"referencedColumns":["id"],"referencedTable":"product_lists","onDelete":"CASCADE"},{"name":"product_lists_brand_links_inv_fk","columns":["brand_id"],"referencedColumns":["id"],"referencedTable":"brands","onDelete":"CASCADE"}],"columns":[{"name":"product_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"brand_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"product_lists_localizations_links","indexes":[{"name":"product_lists_localizations_links_fk","columns":["product_list_id"]},{"name":"product_lists_localizations_links_inv_fk","columns":["inv_product_list_id"]}],"foreignKeys":[{"name":"product_lists_localizations_links_fk","columns":["product_list_id"],"referencedColumns":["id"],"referencedTable":"product_lists","onDelete":"CASCADE"},{"name":"product_lists_localizations_links_inv_fk","columns":["inv_product_list_id"],"referencedColumns":["id"],"referencedTable":"product_lists","onDelete":"CASCADE"}],"columns":[{"name":"product_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_product_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"service_lists_localizations_links","indexes":[{"name":"service_lists_localizations_links_fk","columns":["service_list_id"]},{"name":"service_lists_localizations_links_inv_fk","columns":["inv_service_list_id"]}],"foreignKeys":[{"name":"service_lists_localizations_links_fk","columns":["service_list_id"],"referencedColumns":["id"],"referencedTable":"service_lists","onDelete":"CASCADE"},{"name":"service_lists_localizations_links_inv_fk","columns":["inv_service_list_id"],"referencedColumns":["id"],"referencedTable":"service_lists","onDelete":"CASCADE"}],"columns":[{"name":"service_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_service_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_certificate_certificates_certificate_lists_links","indexes":[{"name":"components_certificate_certificates_certificate_lists_links_fk","columns":["certificate_id"]},{"name":"components_certificate_certificates_certificate_lists_links_inv_fk","columns":["certificate_list_id"]}],"foreignKeys":[{"name":"components_certificate_certificates_certificate_lists_links_fk","columns":["certificate_id"],"referencedColumns":["id"],"referencedTable":"components_certificate_certificates","onDelete":"CASCADE"},{"name":"components_certificate_certificates_certificate_lists_links_inv_fk","columns":["certificate_list_id"],"referencedColumns":["id"],"referencedTable":"certificate_lists","onDelete":"CASCADE"}],"columns":[{"name":"certificate_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"certificate_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_form_form_mains_components","indexes":[{"name":"components_form_form_mains_field_index","columns":["field"],"type":null},{"name":"components_form_form_mains_component_type_index","columns":["component_type"],"type":null},{"name":"components_form_form_mains_entity_fk","columns":["entity_id"]}],"foreignKeys":[{"name":"components_form_form_mains_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_form_form_mains","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":0,"notNullable":false,"unsigned":true}]},{"name":"components_navbar_header_navbars_locals_links","indexes":[{"name":"components_navbar_header_navbars_locals_links_fk","columns":["navbar_id"]},{"name":"components_navbar_header_navbars_locals_links_inv_fk","columns":["local_id"]}],"foreignKeys":[{"name":"components_navbar_header_navbars_locals_links_fk","columns":["navbar_id"],"referencedColumns":["id"],"referencedTable":"components_navbar_header_navbars","onDelete":"CASCADE"},{"name":"components_navbar_header_navbars_locals_links_inv_fk","columns":["local_id"],"referencedColumns":["id"],"referencedTable":"locals","onDelete":"CASCADE"}],"columns":[{"name":"navbar_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"local_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_navbar_header_navbars_navigations_links","indexes":[{"name":"components_navbar_header_navbars_navigations_links_fk","columns":["navbar_id"]},{"name":"components_navbar_header_navbars_navigations_links_inv_fk","columns":["navigation_id"]}],"foreignKeys":[{"name":"components_navbar_header_navbars_navigations_links_fk","columns":["navbar_id"],"referencedColumns":["id"],"referencedTable":"components_navbar_header_navbars","onDelete":"CASCADE"},{"name":"components_navbar_header_navbars_navigations_links_inv_fk","columns":["navigation_id"],"referencedColumns":["id"],"referencedTable":"navigations","onDelete":"CASCADE"}],"columns":[{"name":"navbar_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"navigation_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_products_products_brands_links","indexes":[{"name":"components_products_products_brands_links_fk","columns":["product_id"]},{"name":"components_products_products_brands_links_inv_fk","columns":["brand_id"]}],"foreignKeys":[{"name":"components_products_products_brands_links_fk","columns":["product_id"],"referencedColumns":["id"],"referencedTable":"components_products_products","onDelete":"CASCADE"},{"name":"components_products_products_brands_links_inv_fk","columns":["brand_id"],"referencedColumns":["id"],"referencedTable":"brands","onDelete":"CASCADE"}],"columns":[{"name":"product_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"brand_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_services_services_service_lists_links","indexes":[{"name":"components_services_services_service_lists_links_fk","columns":["services_id"]},{"name":"components_services_services_service_lists_links_inv_fk","columns":["service_list_id"]}],"foreignKeys":[{"name":"components_services_services_service_lists_links_fk","columns":["services_id"],"referencedColumns":["id"],"referencedTable":"components_services_services","onDelete":"CASCADE"},{"name":"components_services_services_service_lists_links_inv_fk","columns":["service_list_id"],"referencedColumns":["id"],"referencedTable":"service_lists","onDelete":"CASCADE"}],"columns":[{"name":"services_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"service_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2022-08-12 12:20:58.845	86ac1a7f76355ff7b9b732a71adf2daa
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.auth.connect	2022-06-20 11:57:02.69	2022-06-20 11:57:02.69	\N	\N
2	plugin::users-permissions.user.me	2022-06-20 11:57:02.69	2022-06-20 11:57:02.69	\N	\N
5	plugin::users-permissions.auth.callback	2022-06-20 11:57:02.701	2022-06-20 11:57:02.701	\N	\N
6	plugin::users-permissions.auth.connect	2022-06-20 11:57:02.701	2022-06-20 11:57:02.701	\N	\N
9	plugin::users-permissions.auth.register	2022-06-20 11:57:02.701	2022-06-20 11:57:02.701	\N	\N
11	plugin::users-permissions.user.me	2022-06-20 11:57:02.701	2022-06-20 11:57:02.701	\N	\N
12	api::certificate-list.certificate-list.find	2022-06-20 15:06:56.489	2022-06-20 15:06:56.489	\N	\N
13	api::certificate-list.certificate-list.findOne	2022-06-20 15:06:56.489	2022-06-20 15:06:56.489	\N	\N
14	api::layout.layout.find	2022-06-20 15:06:56.489	2022-06-20 15:06:56.489	\N	\N
15	api::local.local.find	2022-06-20 15:06:56.489	2022-06-20 15:06:56.489	\N	\N
16	api::local.local.findOne	2022-06-20 15:06:56.489	2022-06-20 15:06:56.489	\N	\N
17	api::main.main.find	2022-06-20 15:06:56.49	2022-06-20 15:06:56.49	\N	\N
18	api::navigation.navigation.find	2022-06-20 15:06:56.49	2022-06-20 15:06:56.49	\N	\N
19	api::navigation.navigation.findOne	2022-06-20 15:06:56.49	2022-06-20 15:06:56.49	\N	\N
20	api::product-list.product-list.find	2022-06-20 15:06:56.49	2022-06-20 15:06:56.49	\N	\N
21	api::product-list.product-list.findOne	2022-06-20 15:06:56.49	2022-06-20 15:06:56.49	\N	\N
24	api::service-list.service-list.find	2022-06-20 15:06:56.49	2022-06-20 15:06:56.49	\N	\N
25	api::service-list.service-list.findOne	2022-06-20 15:06:56.49	2022-06-20 15:06:56.49	\N	\N
33	plugin::upload.content-api.find	2022-06-23 12:41:22.734	2022-06-23 12:41:22.734	\N	\N
34	plugin::upload.content-api.findOne	2022-06-23 12:41:22.734	2022-06-23 12:41:22.734	\N	\N
35	api::brand.brand.find	2022-06-24 11:24:23.712	2022-06-24 11:24:23.712	\N	\N
36	api::brand.brand.findOne	2022-06-24 11:24:23.712	2022-06-24 11:24:23.712	\N	\N
38	api::email.email.send	2022-07-04 13:33:36.59	2022-07-04 13:33:36.59	\N	\N
39	plugin::email.email.send	2022-07-04 16:09:13.073	2022-07-04 16:09:13.073	\N	\N
40	api::pagas-service.pagas-service.find	2022-07-07 10:30:47.74	2022-07-07 10:30:47.74	\N	\N
41	api::pagas-service.pagas-service.findOne	2022-07-07 10:30:47.74	2022-07-07 10:30:47.74	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_permissions_role_links (permission_id, role_id) FROM stdin;
1	1
2	1
6	2
5	2
9	2
11	2
12	2
13	2
14	2
16	2
15	2
17	2
19	2
18	2
20	2
21	2
24	2
25	2
33	2
34	2
35	2
36	2
38	2
39	2
40	2
41	2
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2022-06-20 11:57:02.676	2022-06-20 11:57:02.676	\N	\N
2	Public	Default role given to unauthenticated user.	public	2022-06-20 11:57:02.682	2022-07-07 10:30:47.732	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_users_role_links (user_id, role_id) FROM stdin;
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 432, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 3, true);


--
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brands_id_seq', 9, true);


--
-- Name: certificate_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.certificate_lists_id_seq', 15, true);


--
-- Name: components_about_abouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_about_abouts_id_seq', 3, true);


--
-- Name: components_certificate_certificates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_certificate_certificates_id_seq', 3, true);


--
-- Name: components_contacts_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_contacts_addresses_id_seq', 7, true);


--
-- Name: components_contacts_mail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_contacts_mail_id_seq', 3, true);


--
-- Name: components_contacts_phone_numbers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_contacts_phone_numbers_id_seq', 7, true);


--
-- Name: components_footer_footer_devs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_footer_footer_devs_id_seq', 3, true);


--
-- Name: components_footer_footer_mains_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_footer_footer_mains_id_seq', 3, true);


--
-- Name: components_form_form_mains_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_form_form_mains_components_id_seq', 171, true);


--
-- Name: components_form_form_mains_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_form_form_mains_id_seq', 3, true);


--
-- Name: components_navbar_header_navbars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_navbar_header_navbars_id_seq', 4, true);


--
-- Name: components_products_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_products_products_id_seq', 3, true);


--
-- Name: components_services_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_services_services_id_seq', 3, true);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_id_seq', 80, true);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 3, true);


--
-- Name: layouts_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.layouts_components_id_seq', 225, true);


--
-- Name: layouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.layouts_id_seq', 3, true);


--
-- Name: locals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.locals_id_seq', 9, true);


--
-- Name: mains_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mains_components_id_seq', 348, true);


--
-- Name: mains_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mains_id_seq', 3, true);


--
-- Name: navigations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.navigations_id_seq', 19, true);


--
-- Name: pagas_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pagas_services_id_seq', 18, true);


--
-- Name: product_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_lists_id_seq', 51, true);


--
-- Name: service_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.service_lists_id_seq', 18, true);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, true);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 48, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 76, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 41, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, true);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- Name: certificate_lists certificate_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certificate_lists
    ADD CONSTRAINT certificate_lists_pkey PRIMARY KEY (id);


--
-- Name: components_about_abouts components_about_abouts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_about_abouts
    ADD CONSTRAINT components_about_abouts_pkey PRIMARY KEY (id);


--
-- Name: components_certificate_certificates components_certificate_certificates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_certificate_certificates
    ADD CONSTRAINT components_certificate_certificates_pkey PRIMARY KEY (id);


--
-- Name: components_contacts_addresses components_contacts_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_contacts_addresses
    ADD CONSTRAINT components_contacts_addresses_pkey PRIMARY KEY (id);


--
-- Name: components_contacts_mail components_contacts_mail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_contacts_mail
    ADD CONSTRAINT components_contacts_mail_pkey PRIMARY KEY (id);


--
-- Name: components_contacts_phone_numbers components_contacts_phone_numbers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_contacts_phone_numbers
    ADD CONSTRAINT components_contacts_phone_numbers_pkey PRIMARY KEY (id);


--
-- Name: components_footer_footer_devs components_footer_footer_devs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_footer_footer_devs
    ADD CONSTRAINT components_footer_footer_devs_pkey PRIMARY KEY (id);


--
-- Name: components_footer_footer_mains components_footer_footer_mains_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_footer_footer_mains
    ADD CONSTRAINT components_footer_footer_mains_pkey PRIMARY KEY (id);


--
-- Name: components_form_form_mains_components components_form_form_mains_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_form_form_mains_components
    ADD CONSTRAINT components_form_form_mains_components_pkey PRIMARY KEY (id);


--
-- Name: components_form_form_mains components_form_form_mains_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_form_form_mains
    ADD CONSTRAINT components_form_form_mains_pkey PRIMARY KEY (id);


--
-- Name: components_navbar_header_navbars components_navbar_header_navbars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_navbar_header_navbars
    ADD CONSTRAINT components_navbar_header_navbars_pkey PRIMARY KEY (id);


--
-- Name: components_products_products components_products_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_products_products
    ADD CONSTRAINT components_products_products_pkey PRIMARY KEY (id);


--
-- Name: components_services_services components_services_services_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_services_services
    ADD CONSTRAINT components_services_services_pkey PRIMARY KEY (id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: layouts_components layouts_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layouts_components
    ADD CONSTRAINT layouts_components_pkey PRIMARY KEY (id);


--
-- Name: layouts layouts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layouts
    ADD CONSTRAINT layouts_pkey PRIMARY KEY (id);


--
-- Name: locals locals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locals
    ADD CONSTRAINT locals_pkey PRIMARY KEY (id);


--
-- Name: mains_components mains_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mains_components
    ADD CONSTRAINT mains_components_pkey PRIMARY KEY (id);


--
-- Name: mains mains_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mains
    ADD CONSTRAINT mains_pkey PRIMARY KEY (id);


--
-- Name: navigations navigations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.navigations
    ADD CONSTRAINT navigations_pkey PRIMARY KEY (id);


--
-- Name: pagas_services pagas_services_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pagas_services
    ADD CONSTRAINT pagas_services_pkey PRIMARY KEY (id);


--
-- Name: product_lists product_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_lists
    ADD CONSTRAINT product_lists_pkey PRIMARY KEY (id);


--
-- Name: service_lists service_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_lists
    ADD CONSTRAINT service_lists_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: brands_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX brands_created_by_id_fk ON public.brands USING btree (created_by_id);


--
-- Name: brands_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX brands_localizations_links_fk ON public.brands_localizations_links USING btree (brand_id);


--
-- Name: brands_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX brands_localizations_links_inv_fk ON public.brands_localizations_links USING btree (inv_brand_id);


--
-- Name: brands_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX brands_updated_by_id_fk ON public.brands USING btree (updated_by_id);


--
-- Name: certificate_lists_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX certificate_lists_created_by_id_fk ON public.certificate_lists USING btree (created_by_id);


--
-- Name: certificate_lists_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX certificate_lists_localizations_links_fk ON public.certificate_lists_localizations_links USING btree (certificate_list_id);


--
-- Name: certificate_lists_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX certificate_lists_localizations_links_inv_fk ON public.certificate_lists_localizations_links USING btree (inv_certificate_list_id);


--
-- Name: certificate_lists_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX certificate_lists_updated_by_id_fk ON public.certificate_lists USING btree (updated_by_id);


--
-- Name: components_certificate_certificates_certificate_lists_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_certificate_certificates_certificate_lists_links_fk ON public.components_certificate_certificates_certificate_lists_links USING btree (certificate_id);


--
-- Name: components_certificate_certificates_certificate_lists_links_inv; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_certificate_certificates_certificate_lists_links_inv ON public.components_certificate_certificates_certificate_lists_links USING btree (certificate_list_id);


--
-- Name: components_form_form_mains_component_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_form_form_mains_component_type_index ON public.components_form_form_mains_components USING btree (component_type);


--
-- Name: components_form_form_mains_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_form_form_mains_entity_fk ON public.components_form_form_mains_components USING btree (entity_id);


--
-- Name: components_form_form_mains_field_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_form_form_mains_field_index ON public.components_form_form_mains_components USING btree (field);


--
-- Name: components_navbar_header_navbars_locals_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_navbar_header_navbars_locals_links_fk ON public.components_navbar_header_navbars_locals_links USING btree (navbar_id);


--
-- Name: components_navbar_header_navbars_locals_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_navbar_header_navbars_locals_links_inv_fk ON public.components_navbar_header_navbars_locals_links USING btree (local_id);


--
-- Name: components_navbar_header_navbars_navigations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_navbar_header_navbars_navigations_links_fk ON public.components_navbar_header_navbars_navigations_links USING btree (navbar_id);


--
-- Name: components_navbar_header_navbars_navigations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_navbar_header_navbars_navigations_links_inv_fk ON public.components_navbar_header_navbars_navigations_links USING btree (navigation_id);


--
-- Name: components_products_products_brands_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_products_products_brands_links_fk ON public.components_products_products_brands_links USING btree (product_id);


--
-- Name: components_products_products_brands_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_products_products_brands_links_inv_fk ON public.components_products_products_brands_links USING btree (brand_id);


--
-- Name: components_services_services_service_lists_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_services_services_service_lists_links_fk ON public.components_services_services_service_lists_links USING btree (services_id);


--
-- Name: components_services_services_service_lists_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX components_services_services_service_lists_links_inv_fk ON public.components_services_services_service_lists_links USING btree (service_list_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: layouts_component_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX layouts_component_type_index ON public.layouts_components USING btree (component_type);


--
-- Name: layouts_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX layouts_created_by_id_fk ON public.layouts USING btree (created_by_id);


--
-- Name: layouts_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX layouts_entity_fk ON public.layouts_components USING btree (entity_id);


--
-- Name: layouts_field_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX layouts_field_index ON public.layouts_components USING btree (field);


--
-- Name: layouts_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX layouts_localizations_links_fk ON public.layouts_localizations_links USING btree (layout_id);


--
-- Name: layouts_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX layouts_localizations_links_inv_fk ON public.layouts_localizations_links USING btree (inv_layout_id);


--
-- Name: layouts_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX layouts_updated_by_id_fk ON public.layouts USING btree (updated_by_id);


--
-- Name: locals_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX locals_created_by_id_fk ON public.locals USING btree (created_by_id);


--
-- Name: locals_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX locals_localizations_links_fk ON public.locals_localizations_links USING btree (local_id);


--
-- Name: locals_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX locals_localizations_links_inv_fk ON public.locals_localizations_links USING btree (inv_local_id);


--
-- Name: locals_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX locals_updated_by_id_fk ON public.locals USING btree (updated_by_id);


--
-- Name: mains_component_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mains_component_type_index ON public.mains_components USING btree (component_type);


--
-- Name: mains_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mains_created_by_id_fk ON public.mains USING btree (created_by_id);


--
-- Name: mains_entity_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mains_entity_fk ON public.mains_components USING btree (entity_id);


--
-- Name: mains_field_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mains_field_index ON public.mains_components USING btree (field);


--
-- Name: mains_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mains_localizations_links_fk ON public.mains_localizations_links USING btree (main_id);


--
-- Name: mains_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mains_localizations_links_inv_fk ON public.mains_localizations_links USING btree (inv_main_id);


--
-- Name: mains_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mains_updated_by_id_fk ON public.mains USING btree (updated_by_id);


--
-- Name: navigations_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX navigations_created_by_id_fk ON public.navigations USING btree (created_by_id);


--
-- Name: navigations_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX navigations_localizations_links_fk ON public.navigations_localizations_links USING btree (navigation_id);


--
-- Name: navigations_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX navigations_localizations_links_inv_fk ON public.navigations_localizations_links USING btree (inv_navigation_id);


--
-- Name: navigations_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX navigations_updated_by_id_fk ON public.navigations USING btree (updated_by_id);


--
-- Name: pagas_services_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pagas_services_created_by_id_fk ON public.pagas_services USING btree (created_by_id);


--
-- Name: pagas_services_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pagas_services_localizations_links_fk ON public.pagas_services_localizations_links USING btree (pagas_service_id);


--
-- Name: pagas_services_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pagas_services_localizations_links_inv_fk ON public.pagas_services_localizations_links USING btree (inv_pagas_service_id);


--
-- Name: pagas_services_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pagas_services_updated_by_id_fk ON public.pagas_services USING btree (updated_by_id);


--
-- Name: product_lists_brand_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_lists_brand_links_fk ON public.product_lists_brand_links USING btree (product_list_id);


--
-- Name: product_lists_brand_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_lists_brand_links_inv_fk ON public.product_lists_brand_links USING btree (brand_id);


--
-- Name: product_lists_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_lists_created_by_id_fk ON public.product_lists USING btree (created_by_id);


--
-- Name: product_lists_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_lists_localizations_links_fk ON public.product_lists_localizations_links USING btree (product_list_id);


--
-- Name: product_lists_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_lists_localizations_links_inv_fk ON public.product_lists_localizations_links USING btree (inv_product_list_id);


--
-- Name: product_lists_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_lists_updated_by_id_fk ON public.product_lists USING btree (updated_by_id);


--
-- Name: service_lists_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX service_lists_created_by_id_fk ON public.service_lists USING btree (created_by_id);


--
-- Name: service_lists_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX service_lists_localizations_links_fk ON public.service_lists_localizations_links USING btree (service_list_id);


--
-- Name: service_lists_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX service_lists_localizations_links_inv_fk ON public.service_lists_localizations_links USING btree (inv_service_list_id);


--
-- Name: service_lists_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX service_lists_updated_by_id_fk ON public.service_lists USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: brands brands_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: brands_localizations_links brands_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands_localizations_links
    ADD CONSTRAINT brands_localizations_links_fk FOREIGN KEY (brand_id) REFERENCES public.brands(id) ON DELETE CASCADE;


--
-- Name: brands_localizations_links brands_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands_localizations_links
    ADD CONSTRAINT brands_localizations_links_inv_fk FOREIGN KEY (inv_brand_id) REFERENCES public.brands(id) ON DELETE CASCADE;


--
-- Name: brands brands_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: certificate_lists certificate_lists_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certificate_lists
    ADD CONSTRAINT certificate_lists_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: certificate_lists_localizations_links certificate_lists_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certificate_lists_localizations_links
    ADD CONSTRAINT certificate_lists_localizations_links_fk FOREIGN KEY (certificate_list_id) REFERENCES public.certificate_lists(id) ON DELETE CASCADE;


--
-- Name: certificate_lists_localizations_links certificate_lists_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certificate_lists_localizations_links
    ADD CONSTRAINT certificate_lists_localizations_links_inv_fk FOREIGN KEY (inv_certificate_list_id) REFERENCES public.certificate_lists(id) ON DELETE CASCADE;


--
-- Name: certificate_lists certificate_lists_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certificate_lists
    ADD CONSTRAINT certificate_lists_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: components_certificate_certificates_certificate_lists_links components_certificate_certificates_certificate_lists_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_certificate_certificates_certificate_lists_links
    ADD CONSTRAINT components_certificate_certificates_certificate_lists_links_fk FOREIGN KEY (certificate_id) REFERENCES public.components_certificate_certificates(id) ON DELETE CASCADE;


--
-- Name: components_certificate_certificates_certificate_lists_links components_certificate_certificates_certificate_lists_links_inv; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_certificate_certificates_certificate_lists_links
    ADD CONSTRAINT components_certificate_certificates_certificate_lists_links_inv FOREIGN KEY (certificate_list_id) REFERENCES public.certificate_lists(id) ON DELETE CASCADE;


--
-- Name: components_form_form_mains_components components_form_form_mains_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_form_form_mains_components
    ADD CONSTRAINT components_form_form_mains_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_form_form_mains(id) ON DELETE CASCADE;


--
-- Name: components_navbar_header_navbars_locals_links components_navbar_header_navbars_locals_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_navbar_header_navbars_locals_links
    ADD CONSTRAINT components_navbar_header_navbars_locals_links_fk FOREIGN KEY (navbar_id) REFERENCES public.components_navbar_header_navbars(id) ON DELETE CASCADE;


--
-- Name: components_navbar_header_navbars_locals_links components_navbar_header_navbars_locals_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_navbar_header_navbars_locals_links
    ADD CONSTRAINT components_navbar_header_navbars_locals_links_inv_fk FOREIGN KEY (local_id) REFERENCES public.locals(id) ON DELETE CASCADE;


--
-- Name: components_navbar_header_navbars_navigations_links components_navbar_header_navbars_navigations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_navbar_header_navbars_navigations_links
    ADD CONSTRAINT components_navbar_header_navbars_navigations_links_fk FOREIGN KEY (navbar_id) REFERENCES public.components_navbar_header_navbars(id) ON DELETE CASCADE;


--
-- Name: components_navbar_header_navbars_navigations_links components_navbar_header_navbars_navigations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_navbar_header_navbars_navigations_links
    ADD CONSTRAINT components_navbar_header_navbars_navigations_links_inv_fk FOREIGN KEY (navigation_id) REFERENCES public.navigations(id) ON DELETE CASCADE;


--
-- Name: components_products_products_brands_links components_products_products_brands_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_products_products_brands_links
    ADD CONSTRAINT components_products_products_brands_links_fk FOREIGN KEY (product_id) REFERENCES public.components_products_products(id) ON DELETE CASCADE;


--
-- Name: components_products_products_brands_links components_products_products_brands_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_products_products_brands_links
    ADD CONSTRAINT components_products_products_brands_links_inv_fk FOREIGN KEY (brand_id) REFERENCES public.brands(id) ON DELETE CASCADE;


--
-- Name: components_services_services_service_lists_links components_services_services_service_lists_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_services_services_service_lists_links
    ADD CONSTRAINT components_services_services_service_lists_links_fk FOREIGN KEY (services_id) REFERENCES public.components_services_services(id) ON DELETE CASCADE;


--
-- Name: components_services_services_service_lists_links components_services_services_service_lists_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_services_services_service_lists_links
    ADD CONSTRAINT components_services_services_service_lists_links_inv_fk FOREIGN KEY (service_list_id) REFERENCES public.service_lists(id) ON DELETE CASCADE;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: layouts layouts_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layouts
    ADD CONSTRAINT layouts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: layouts_components layouts_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layouts_components
    ADD CONSTRAINT layouts_entity_fk FOREIGN KEY (entity_id) REFERENCES public.layouts(id) ON DELETE CASCADE;


--
-- Name: layouts_localizations_links layouts_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layouts_localizations_links
    ADD CONSTRAINT layouts_localizations_links_fk FOREIGN KEY (layout_id) REFERENCES public.layouts(id) ON DELETE CASCADE;


--
-- Name: layouts_localizations_links layouts_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layouts_localizations_links
    ADD CONSTRAINT layouts_localizations_links_inv_fk FOREIGN KEY (inv_layout_id) REFERENCES public.layouts(id) ON DELETE CASCADE;


--
-- Name: layouts layouts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layouts
    ADD CONSTRAINT layouts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: locals locals_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locals
    ADD CONSTRAINT locals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: locals_localizations_links locals_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locals_localizations_links
    ADD CONSTRAINT locals_localizations_links_fk FOREIGN KEY (local_id) REFERENCES public.locals(id) ON DELETE CASCADE;


--
-- Name: locals_localizations_links locals_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locals_localizations_links
    ADD CONSTRAINT locals_localizations_links_inv_fk FOREIGN KEY (inv_local_id) REFERENCES public.locals(id) ON DELETE CASCADE;


--
-- Name: locals locals_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locals
    ADD CONSTRAINT locals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: mains mains_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mains
    ADD CONSTRAINT mains_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: mains_components mains_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mains_components
    ADD CONSTRAINT mains_entity_fk FOREIGN KEY (entity_id) REFERENCES public.mains(id) ON DELETE CASCADE;


--
-- Name: mains_localizations_links mains_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mains_localizations_links
    ADD CONSTRAINT mains_localizations_links_fk FOREIGN KEY (main_id) REFERENCES public.mains(id) ON DELETE CASCADE;


--
-- Name: mains_localizations_links mains_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mains_localizations_links
    ADD CONSTRAINT mains_localizations_links_inv_fk FOREIGN KEY (inv_main_id) REFERENCES public.mains(id) ON DELETE CASCADE;


--
-- Name: mains mains_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mains
    ADD CONSTRAINT mains_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: navigations navigations_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.navigations
    ADD CONSTRAINT navigations_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: navigations_localizations_links navigations_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.navigations_localizations_links
    ADD CONSTRAINT navigations_localizations_links_fk FOREIGN KEY (navigation_id) REFERENCES public.navigations(id) ON DELETE CASCADE;


--
-- Name: navigations_localizations_links navigations_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.navigations_localizations_links
    ADD CONSTRAINT navigations_localizations_links_inv_fk FOREIGN KEY (inv_navigation_id) REFERENCES public.navigations(id) ON DELETE CASCADE;


--
-- Name: navigations navigations_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.navigations
    ADD CONSTRAINT navigations_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: pagas_services pagas_services_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pagas_services
    ADD CONSTRAINT pagas_services_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: pagas_services_localizations_links pagas_services_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pagas_services_localizations_links
    ADD CONSTRAINT pagas_services_localizations_links_fk FOREIGN KEY (pagas_service_id) REFERENCES public.pagas_services(id) ON DELETE CASCADE;


--
-- Name: pagas_services_localizations_links pagas_services_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pagas_services_localizations_links
    ADD CONSTRAINT pagas_services_localizations_links_inv_fk FOREIGN KEY (inv_pagas_service_id) REFERENCES public.pagas_services(id) ON DELETE CASCADE;


--
-- Name: pagas_services pagas_services_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pagas_services
    ADD CONSTRAINT pagas_services_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: product_lists_brand_links product_lists_brand_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_lists_brand_links
    ADD CONSTRAINT product_lists_brand_links_fk FOREIGN KEY (product_list_id) REFERENCES public.product_lists(id) ON DELETE CASCADE;


--
-- Name: product_lists_brand_links product_lists_brand_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_lists_brand_links
    ADD CONSTRAINT product_lists_brand_links_inv_fk FOREIGN KEY (brand_id) REFERENCES public.brands(id) ON DELETE CASCADE;


--
-- Name: product_lists product_lists_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_lists
    ADD CONSTRAINT product_lists_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: product_lists_localizations_links product_lists_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_lists_localizations_links
    ADD CONSTRAINT product_lists_localizations_links_fk FOREIGN KEY (product_list_id) REFERENCES public.product_lists(id) ON DELETE CASCADE;


--
-- Name: product_lists_localizations_links product_lists_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_lists_localizations_links
    ADD CONSTRAINT product_lists_localizations_links_inv_fk FOREIGN KEY (inv_product_list_id) REFERENCES public.product_lists(id) ON DELETE CASCADE;


--
-- Name: product_lists product_lists_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_lists
    ADD CONSTRAINT product_lists_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: service_lists service_lists_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_lists
    ADD CONSTRAINT service_lists_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: service_lists_localizations_links service_lists_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_lists_localizations_links
    ADD CONSTRAINT service_lists_localizations_links_fk FOREIGN KEY (service_list_id) REFERENCES public.service_lists(id) ON DELETE CASCADE;


--
-- Name: service_lists_localizations_links service_lists_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_lists_localizations_links
    ADD CONSTRAINT service_lists_localizations_links_inv_fk FOREIGN KEY (inv_service_list_id) REFERENCES public.service_lists(id) ON DELETE CASCADE;


--
-- Name: service_lists service_lists_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_lists
    ADD CONSTRAINT service_lists_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

