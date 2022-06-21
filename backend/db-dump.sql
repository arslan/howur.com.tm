--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Debian 14.2-1.pgdg110+1)
-- Dumped by pg_dump version 14.2 (Debian 14.2-1.pgdg110+1)

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

ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
ALTER TABLE ONLY public.under_navs DROP CONSTRAINT under_navs_updated_by_id_fk;
ALTER TABLE ONLY public.under_navs_localizations_links DROP CONSTRAINT under_navs_localizations_links_inv_fk;
ALTER TABLE ONLY public.under_navs_localizations_links DROP CONSTRAINT under_navs_localizations_links_fk;
ALTER TABLE ONLY public.under_navs DROP CONSTRAINT under_navs_created_by_id_fk;
ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
ALTER TABLE ONLY public.sonstruction_services DROP CONSTRAINT sonstruction_services_updated_by_id_fk;
ALTER TABLE ONLY public.sonstruction_services_localizations_links DROP CONSTRAINT sonstruction_services_localizations_links_inv_fk;
ALTER TABLE ONLY public.sonstruction_services_localizations_links DROP CONSTRAINT sonstruction_services_localizations_links_fk;
ALTER TABLE ONLY public.sonstruction_services_components DROP CONSTRAINT sonstruction_services_entity_fk;
ALTER TABLE ONLY public.sonstruction_services DROP CONSTRAINT sonstruction_services_created_by_id_fk;
ALTER TABLE ONLY public.service_lists DROP CONSTRAINT service_lists_updated_by_id_fk;
ALTER TABLE ONLY public.service_lists_localizations_links DROP CONSTRAINT service_lists_localizations_links_inv_fk;
ALTER TABLE ONLY public.service_lists_localizations_links DROP CONSTRAINT service_lists_localizations_links_fk;
ALTER TABLE ONLY public.service_lists DROP CONSTRAINT service_lists_created_by_id_fk;
ALTER TABLE ONLY public.sertificate_lists DROP CONSTRAINT sertificate_lists_updated_by_id_fk;
ALTER TABLE ONLY public.sertificate_lists_localizations_links DROP CONSTRAINT sertificate_lists_localizations_links_inv_fk;
ALTER TABLE ONLY public.sertificate_lists_localizations_links DROP CONSTRAINT sertificate_lists_localizations_links_fk;
ALTER TABLE ONLY public.sertificate_lists DROP CONSTRAINT sertificate_lists_created_by_id_fk;
ALTER TABLE ONLY public.product_lists DROP CONSTRAINT product_lists_updated_by_id_fk;
ALTER TABLE ONLY public.product_lists_localizations_links DROP CONSTRAINT product_lists_localizations_links_inv_fk;
ALTER TABLE ONLY public.product_lists_localizations_links DROP CONSTRAINT product_lists_localizations_links_fk;
ALTER TABLE ONLY public.product_lists DROP CONSTRAINT product_lists_created_by_id_fk;
ALTER TABLE ONLY public.network_services DROP CONSTRAINT network_services_updated_by_id_fk;
ALTER TABLE ONLY public.network_services_localizations_links DROP CONSTRAINT network_services_localizations_links_inv_fk;
ALTER TABLE ONLY public.network_services_localizations_links DROP CONSTRAINT network_services_localizations_links_fk;
ALTER TABLE ONLY public.network_services_components DROP CONSTRAINT network_services_entity_fk;
ALTER TABLE ONLY public.network_services DROP CONSTRAINT network_services_created_by_id_fk;
ALTER TABLE ONLY public.navigations DROP CONSTRAINT navigations_updated_by_id_fk;
ALTER TABLE ONLY public.navigations_localizations_links DROP CONSTRAINT navigations_localizations_links_inv_fk;
ALTER TABLE ONLY public.navigations_localizations_links DROP CONSTRAINT navigations_localizations_links_fk;
ALTER TABLE ONLY public.navigations DROP CONSTRAINT navigations_created_by_id_fk;
ALTER TABLE ONLY public.mains DROP CONSTRAINT mains_updated_by_id_fk;
ALTER TABLE ONLY public.mains_localizations_links DROP CONSTRAINT mains_localizations_links_inv_fk;
ALTER TABLE ONLY public.mains_localizations_links DROP CONSTRAINT mains_localizations_links_fk;
ALTER TABLE ONLY public.mains_components DROP CONSTRAINT mains_entity_fk;
ALTER TABLE ONLY public.mains DROP CONSTRAINT mains_created_by_id_fk;
ALTER TABLE ONLY public.locals DROP CONSTRAINT locals_updated_by_id_fk;
ALTER TABLE ONLY public.locals_localizations_links DROP CONSTRAINT locals_localizations_links_inv_fk;
ALTER TABLE ONLY public.locals_localizations_links DROP CONSTRAINT locals_localizations_links_fk;
ALTER TABLE ONLY public.locals DROP CONSTRAINT locals_created_by_id_fk;
ALTER TABLE ONLY public.layouts DROP CONSTRAINT layouts_updated_by_id_fk;
ALTER TABLE ONLY public.layouts_localizations_links DROP CONSTRAINT layouts_localizations_links_inv_fk;
ALTER TABLE ONLY public.layouts_localizations_links DROP CONSTRAINT layouts_localizations_links_fk;
ALTER TABLE ONLY public.layouts_components DROP CONSTRAINT layouts_entity_fk;
ALTER TABLE ONLY public.layouts DROP CONSTRAINT layouts_created_by_id_fk;
ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
ALTER TABLE ONLY public.fire_safety_services DROP CONSTRAINT fire_safety_services_updated_by_id_fk;
ALTER TABLE ONLY public.fire_safety_services_localizations_links DROP CONSTRAINT fire_safety_services_localizations_links_inv_fk;
ALTER TABLE ONLY public.fire_safety_services_localizations_links DROP CONSTRAINT fire_safety_services_localizations_links_fk;
ALTER TABLE ONLY public.fire_safety_services_components DROP CONSTRAINT fire_safety_services_entity_fk;
ALTER TABLE ONLY public.fire_safety_services DROP CONSTRAINT fire_safety_services_created_by_id_fk;
ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
ALTER TABLE ONLY public.elevator_dispatching_services DROP CONSTRAINT elevator_dispatching_services_updated_by_id_fk;
ALTER TABLE ONLY public.elevator_dispatching_services_localizations_links DROP CONSTRAINT elevator_dispatching_services_localizations_links_inv_fk;
ALTER TABLE ONLY public.elevator_dispatching_services_localizations_links DROP CONSTRAINT elevator_dispatching_services_localizations_links_fk;
ALTER TABLE ONLY public.elevator_dispatching_services_components DROP CONSTRAINT elevator_dispatching_services_entity_fk;
ALTER TABLE ONLY public.elevator_dispatching_services DROP CONSTRAINT elevator_dispatching_services_created_by_id_fk;
ALTER TABLE ONLY public.design_services DROP CONSTRAINT design_services_updated_by_id_fk;
ALTER TABLE ONLY public.design_services_localizations_links DROP CONSTRAINT design_services_localizations_links_inv_fk;
ALTER TABLE ONLY public.design_services_localizations_links DROP CONSTRAINT design_services_localizations_links_fk;
ALTER TABLE ONLY public.design_services_components DROP CONSTRAINT design_services_entity_fk;
ALTER TABLE ONLY public.design_services DROP CONSTRAINT design_services_created_by_id_fk;
ALTER TABLE ONLY public.components_services_services_service_lists_links DROP CONSTRAINT components_services_services_service_lists_links_inv_fk;
ALTER TABLE ONLY public.components_services_services_service_lists_links DROP CONSTRAINT components_services_services_service_lists_links_fk;
ALTER TABLE ONLY public.components_products_products_product_lists_links DROP CONSTRAINT components_products_products_product_lists_links_inv_fk;
ALTER TABLE ONLY public.components_products_products_product_lists_links DROP CONSTRAINT components_products_products_product_lists_links_fk;
ALTER TABLE ONLY public.components_navbar_header_navbars_under_navs_links DROP CONSTRAINT components_navbar_header_navbars_under_navs_links_inv_fk;
ALTER TABLE ONLY public.components_navbar_header_navbars_under_navs_links DROP CONSTRAINT components_navbar_header_navbars_under_navs_links_fk;
ALTER TABLE ONLY public.components_navbar_header_navbars_navigations_links DROP CONSTRAINT components_navbar_header_navbars_navigations_links_inv_fk;
ALTER TABLE ONLY public.components_navbar_header_navbars_navigations_links DROP CONSTRAINT components_navbar_header_navbars_navigations_links_fk;
ALTER TABLE ONLY public.components_navbar_header_navbars_locals_links DROP CONSTRAINT components_navbar_header_navbars_locals_links_inv_fk;
ALTER TABLE ONLY public.components_navbar_header_navbars_locals_links DROP CONSTRAINT components_navbar_header_navbars_locals_links_fk;
ALTER TABLE ONLY public.components_form_form_mains_components DROP CONSTRAINT components_form_form_mains_entity_fk;
ALTER TABLE ONLY public.components_certificate_certificates_certificate_lists_links DROP CONSTRAINT components_certificate_certificates_certificate_lists_links_inv;
ALTER TABLE ONLY public.components_certificate_certificates_certificate_lists_links DROP CONSTRAINT components_certificate_certificates_certificate_lists_links_fk;
ALTER TABLE ONLY public.certificate_lists DROP CONSTRAINT certificate_lists_updated_by_id_fk;
ALTER TABLE ONLY public.certificate_lists_localizations_links DROP CONSTRAINT certificate_lists_localizations_links_inv_fk;
ALTER TABLE ONLY public.certificate_lists_localizations_links DROP CONSTRAINT certificate_lists_localizations_links_fk;
ALTER TABLE ONLY public.certificate_lists DROP CONSTRAINT certificate_lists_created_by_id_fk;
ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
DROP INDEX public.up_users_updated_by_id_fk;
DROP INDEX public.up_users_role_links_inv_fk;
DROP INDEX public.up_users_role_links_fk;
DROP INDEX public.up_users_created_by_id_fk;
DROP INDEX public.up_roles_updated_by_id_fk;
DROP INDEX public.up_roles_created_by_id_fk;
DROP INDEX public.up_permissions_updated_by_id_fk;
DROP INDEX public.up_permissions_role_links_inv_fk;
DROP INDEX public.up_permissions_role_links_fk;
DROP INDEX public.up_permissions_created_by_id_fk;
DROP INDEX public.under_navs_updated_by_id_fk;
DROP INDEX public.under_navs_localizations_links_inv_fk;
DROP INDEX public.under_navs_localizations_links_fk;
DROP INDEX public.under_navs_created_by_id_fk;
DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
DROP INDEX public.strapi_api_tokens_created_by_id_fk;
DROP INDEX public.sonstruction_services_updated_by_id_fk;
DROP INDEX public.sonstruction_services_localizations_links_inv_fk;
DROP INDEX public.sonstruction_services_localizations_links_fk;
DROP INDEX public.sonstruction_services_field_index;
DROP INDEX public.sonstruction_services_entity_fk;
DROP INDEX public.sonstruction_services_created_by_id_fk;
DROP INDEX public.sonstruction_services_component_type_index;
DROP INDEX public.service_lists_updated_by_id_fk;
DROP INDEX public.service_lists_localizations_links_inv_fk;
DROP INDEX public.service_lists_localizations_links_fk;
DROP INDEX public.service_lists_created_by_id_fk;
DROP INDEX public.sertificate_lists_updated_by_id_fk;
DROP INDEX public.sertificate_lists_localizations_links_inv_fk;
DROP INDEX public.sertificate_lists_localizations_links_fk;
DROP INDEX public.sertificate_lists_created_by_id_fk;
DROP INDEX public.product_lists_updated_by_id_fk;
DROP INDEX public.product_lists_localizations_links_inv_fk;
DROP INDEX public.product_lists_localizations_links_fk;
DROP INDEX public.product_lists_created_by_id_fk;
DROP INDEX public.network_services_updated_by_id_fk;
DROP INDEX public.network_services_localizations_links_inv_fk;
DROP INDEX public.network_services_localizations_links_fk;
DROP INDEX public.network_services_field_index;
DROP INDEX public.network_services_entity_fk;
DROP INDEX public.network_services_created_by_id_fk;
DROP INDEX public.network_services_component_type_index;
DROP INDEX public.navigations_updated_by_id_fk;
DROP INDEX public.navigations_localizations_links_inv_fk;
DROP INDEX public.navigations_localizations_links_fk;
DROP INDEX public.navigations_created_by_id_fk;
DROP INDEX public.mains_updated_by_id_fk;
DROP INDEX public.mains_localizations_links_inv_fk;
DROP INDEX public.mains_localizations_links_fk;
DROP INDEX public.mains_field_index;
DROP INDEX public.mains_entity_fk;
DROP INDEX public.mains_created_by_id_fk;
DROP INDEX public.mains_component_type_index;
DROP INDEX public.locals_updated_by_id_fk;
DROP INDEX public.locals_localizations_links_inv_fk;
DROP INDEX public.locals_localizations_links_fk;
DROP INDEX public.locals_created_by_id_fk;
DROP INDEX public.layouts_updated_by_id_fk;
DROP INDEX public.layouts_localizations_links_inv_fk;
DROP INDEX public.layouts_localizations_links_fk;
DROP INDEX public.layouts_field_index;
DROP INDEX public.layouts_entity_fk;
DROP INDEX public.layouts_created_by_id_fk;
DROP INDEX public.layouts_component_type_index;
DROP INDEX public.i18n_locale_updated_by_id_fk;
DROP INDEX public.i18n_locale_created_by_id_fk;
DROP INDEX public.fire_safety_services_updated_by_id_fk;
DROP INDEX public.fire_safety_services_localizations_links_inv_fk;
DROP INDEX public.fire_safety_services_localizations_links_fk;
DROP INDEX public.fire_safety_services_field_index;
DROP INDEX public.fire_safety_services_entity_fk;
DROP INDEX public.fire_safety_services_created_by_id_fk;
DROP INDEX public.fire_safety_services_component_type_index;
DROP INDEX public.files_updated_by_id_fk;
DROP INDEX public.files_related_morphs_fk;
DROP INDEX public.files_created_by_id_fk;
DROP INDEX public.elevator_dispatching_services_updated_by_id_fk;
DROP INDEX public.elevator_dispatching_services_localizations_links_inv_fk;
DROP INDEX public.elevator_dispatching_services_localizations_links_fk;
DROP INDEX public.elevator_dispatching_services_field_index;
DROP INDEX public.elevator_dispatching_services_entity_fk;
DROP INDEX public.elevator_dispatching_services_created_by_id_fk;
DROP INDEX public.elevator_dispatching_services_component_type_index;
DROP INDEX public.design_services_updated_by_id_fk;
DROP INDEX public.design_services_localizations_links_inv_fk;
DROP INDEX public.design_services_localizations_links_fk;
DROP INDEX public.design_services_field_index;
DROP INDEX public.design_services_entity_fk;
DROP INDEX public.design_services_created_by_id_fk;
DROP INDEX public.design_services_component_type_index;
DROP INDEX public.components_services_services_service_lists_links_inv_fk;
DROP INDEX public.components_services_services_service_lists_links_fk;
DROP INDEX public.components_products_products_product_lists_links_inv_fk;
DROP INDEX public.components_products_products_product_lists_links_fk;
DROP INDEX public.components_navbar_header_navbars_under_navs_links_inv_fk;
DROP INDEX public.components_navbar_header_navbars_under_navs_links_fk;
DROP INDEX public.components_navbar_header_navbars_navigations_links_inv_fk;
DROP INDEX public.components_navbar_header_navbars_navigations_links_fk;
DROP INDEX public.components_navbar_header_navbars_locals_links_inv_fk;
DROP INDEX public.components_navbar_header_navbars_locals_links_fk;
DROP INDEX public.components_form_form_mains_field_index;
DROP INDEX public.components_form_form_mains_entity_fk;
DROP INDEX public.components_form_form_mains_component_type_index;
DROP INDEX public.components_certificate_certificates_certificate_lists_links_inv;
DROP INDEX public.components_certificate_certificates_certificate_lists_links_fk;
DROP INDEX public.certificate_lists_updated_by_id_fk;
DROP INDEX public.certificate_lists_localizations_links_inv_fk;
DROP INDEX public.certificate_lists_localizations_links_fk;
DROP INDEX public.certificate_lists_created_by_id_fk;
DROP INDEX public.admin_users_updated_by_id_fk;
DROP INDEX public.admin_users_roles_links_inv_fk;
DROP INDEX public.admin_users_roles_links_fk;
DROP INDEX public.admin_users_created_by_id_fk;
DROP INDEX public.admin_roles_updated_by_id_fk;
DROP INDEX public.admin_roles_created_by_id_fk;
DROP INDEX public.admin_permissions_updated_by_id_fk;
DROP INDEX public.admin_permissions_role_links_inv_fk;
DROP INDEX public.admin_permissions_role_links_fk;
DROP INDEX public.admin_permissions_created_by_id_fk;
ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
ALTER TABLE ONLY public.under_navs DROP CONSTRAINT under_navs_pkey;
ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
ALTER TABLE ONLY public.sonstruction_services DROP CONSTRAINT sonstruction_services_pkey;
ALTER TABLE ONLY public.sonstruction_services_components DROP CONSTRAINT sonstruction_services_components_pkey;
ALTER TABLE ONLY public.service_lists DROP CONSTRAINT service_lists_pkey;
ALTER TABLE ONLY public.sertificate_lists DROP CONSTRAINT sertificate_lists_pkey;
ALTER TABLE ONLY public.product_lists DROP CONSTRAINT product_lists_pkey;
ALTER TABLE ONLY public.network_services DROP CONSTRAINT network_services_pkey;
ALTER TABLE ONLY public.network_services_components DROP CONSTRAINT network_services_components_pkey;
ALTER TABLE ONLY public.navigations DROP CONSTRAINT navigations_pkey;
ALTER TABLE ONLY public.mains DROP CONSTRAINT mains_pkey;
ALTER TABLE ONLY public.mains_components DROP CONSTRAINT mains_components_pkey;
ALTER TABLE ONLY public.locals DROP CONSTRAINT locals_pkey;
ALTER TABLE ONLY public.layouts DROP CONSTRAINT layouts_pkey;
ALTER TABLE ONLY public.layouts_components DROP CONSTRAINT layouts_components_pkey;
ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
ALTER TABLE ONLY public.fire_safety_services DROP CONSTRAINT fire_safety_services_pkey;
ALTER TABLE ONLY public.fire_safety_services_components DROP CONSTRAINT fire_safety_services_components_pkey;
ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
ALTER TABLE ONLY public.elevator_dispatching_services DROP CONSTRAINT elevator_dispatching_services_pkey;
ALTER TABLE ONLY public.elevator_dispatching_services_components DROP CONSTRAINT elevator_dispatching_services_components_pkey;
ALTER TABLE ONLY public.design_services DROP CONSTRAINT design_services_pkey;
ALTER TABLE ONLY public.design_services_components DROP CONSTRAINT design_services_components_pkey;
ALTER TABLE ONLY public.components_services_services DROP CONSTRAINT components_services_services_pkey;
ALTER TABLE ONLY public.components_services_page_com_component_services DROP CONSTRAINT components_services_page_com_component_services_pkey;
ALTER TABLE ONLY public.components_products_products DROP CONSTRAINT components_products_products_pkey;
ALTER TABLE ONLY public.components_navbar_header_navbars DROP CONSTRAINT components_navbar_header_navbars_pkey;
ALTER TABLE ONLY public.components_form_form_mains DROP CONSTRAINT components_form_form_mains_pkey;
ALTER TABLE ONLY public.components_form_form_mains_components DROP CONSTRAINT components_form_form_mains_components_pkey;
ALTER TABLE ONLY public.components_footer_footer_mains DROP CONSTRAINT components_footer_footer_mains_pkey;
ALTER TABLE ONLY public.components_footer_footer_devs DROP CONSTRAINT components_footer_footer_devs_pkey;
ALTER TABLE ONLY public.components_contacts_phone_numbers DROP CONSTRAINT components_contacts_phone_numbers_pkey;
ALTER TABLE ONLY public.components_contacts_mail DROP CONSTRAINT components_contacts_mail_pkey;
ALTER TABLE ONLY public.components_contacts_addresses DROP CONSTRAINT components_contacts_addresses_pkey;
ALTER TABLE ONLY public.components_certificate_certificates DROP CONSTRAINT components_certificate_certificates_pkey;
ALTER TABLE ONLY public.components_about_abouts DROP CONSTRAINT components_about_abouts_pkey;
ALTER TABLE ONLY public.certificate_lists DROP CONSTRAINT certificate_lists_pkey;
ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.under_navs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.sonstruction_services_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.sonstruction_services ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.service_lists ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.sertificate_lists ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.product_lists ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.network_services_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.network_services ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.navigations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.mains_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.mains ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.locals ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.layouts_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.layouts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.fire_safety_services_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.fire_safety_services ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.elevator_dispatching_services_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.elevator_dispatching_services ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.design_services_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.design_services ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.components_services_services ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.components_services_page_com_component_services ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.components_products_products ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.components_navbar_header_navbars ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.components_form_form_mains_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.components_form_form_mains ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.components_footer_footer_mains ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.components_footer_footer_devs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.components_contacts_phone_numbers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.components_contacts_mail ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.components_contacts_addresses ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.components_certificate_certificates ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.components_about_abouts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.certificate_lists ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
DROP TABLE public.up_users_role_links;
DROP SEQUENCE public.up_users_id_seq;
DROP TABLE public.up_users;
DROP SEQUENCE public.up_roles_id_seq;
DROP TABLE public.up_roles;
DROP TABLE public.up_permissions_role_links;
DROP SEQUENCE public.up_permissions_id_seq;
DROP TABLE public.up_permissions;
DROP TABLE public.under_navs_localizations_links;
DROP SEQUENCE public.under_navs_id_seq;
DROP TABLE public.under_navs;
DROP SEQUENCE public.strapi_webhooks_id_seq;
DROP TABLE public.strapi_webhooks;
DROP SEQUENCE public.strapi_migrations_id_seq;
DROP TABLE public.strapi_migrations;
DROP SEQUENCE public.strapi_database_schema_id_seq;
DROP TABLE public.strapi_database_schema;
DROP SEQUENCE public.strapi_core_store_settings_id_seq;
DROP TABLE public.strapi_core_store_settings;
DROP SEQUENCE public.strapi_api_tokens_id_seq;
DROP TABLE public.strapi_api_tokens;
DROP TABLE public.sonstruction_services_localizations_links;
DROP SEQUENCE public.sonstruction_services_id_seq;
DROP SEQUENCE public.sonstruction_services_components_id_seq;
DROP TABLE public.sonstruction_services_components;
DROP TABLE public.sonstruction_services;
DROP TABLE public.service_lists_localizations_links;
DROP SEQUENCE public.service_lists_id_seq;
DROP TABLE public.service_lists;
DROP TABLE public.sertificate_lists_localizations_links;
DROP SEQUENCE public.sertificate_lists_id_seq;
DROP TABLE public.sertificate_lists;
DROP TABLE public.product_lists_localizations_links;
DROP SEQUENCE public.product_lists_id_seq;
DROP TABLE public.product_lists;
DROP TABLE public.network_services_localizations_links;
DROP SEQUENCE public.network_services_id_seq;
DROP SEQUENCE public.network_services_components_id_seq;
DROP TABLE public.network_services_components;
DROP TABLE public.network_services;
DROP TABLE public.navigations_localizations_links;
DROP SEQUENCE public.navigations_id_seq;
DROP TABLE public.navigations;
DROP TABLE public.mains_localizations_links;
DROP SEQUENCE public.mains_id_seq;
DROP SEQUENCE public.mains_components_id_seq;
DROP TABLE public.mains_components;
DROP TABLE public.mains;
DROP TABLE public.locals_localizations_links;
DROP SEQUENCE public.locals_id_seq;
DROP TABLE public.locals;
DROP TABLE public.layouts_localizations_links;
DROP SEQUENCE public.layouts_id_seq;
DROP SEQUENCE public.layouts_components_id_seq;
DROP TABLE public.layouts_components;
DROP TABLE public.layouts;
DROP SEQUENCE public.i18n_locale_id_seq;
DROP TABLE public.i18n_locale;
DROP TABLE public.fire_safety_services_localizations_links;
DROP SEQUENCE public.fire_safety_services_id_seq;
DROP SEQUENCE public.fire_safety_services_components_id_seq;
DROP TABLE public.fire_safety_services_components;
DROP TABLE public.fire_safety_services;
DROP TABLE public.files_related_morphs;
DROP SEQUENCE public.files_id_seq;
DROP TABLE public.files;
DROP TABLE public.elevator_dispatching_services_localizations_links;
DROP SEQUENCE public.elevator_dispatching_services_id_seq;
DROP SEQUENCE public.elevator_dispatching_services_components_id_seq;
DROP TABLE public.elevator_dispatching_services_components;
DROP TABLE public.elevator_dispatching_services;
DROP TABLE public.design_services_localizations_links;
DROP SEQUENCE public.design_services_id_seq;
DROP SEQUENCE public.design_services_components_id_seq;
DROP TABLE public.design_services_components;
DROP TABLE public.design_services;
DROP TABLE public.components_services_services_service_lists_links;
DROP SEQUENCE public.components_services_services_id_seq;
DROP TABLE public.components_services_services;
DROP SEQUENCE public.components_services_page_com_component_services_id_seq;
DROP TABLE public.components_services_page_com_component_services;
DROP TABLE public.components_products_products_product_lists_links;
DROP SEQUENCE public.components_products_products_id_seq;
DROP TABLE public.components_products_products;
DROP TABLE public.components_navbar_header_navbars_under_navs_links;
DROP TABLE public.components_navbar_header_navbars_navigations_links;
DROP TABLE public.components_navbar_header_navbars_locals_links;
DROP SEQUENCE public.components_navbar_header_navbars_id_seq;
DROP TABLE public.components_navbar_header_navbars;
DROP SEQUENCE public.components_form_form_mains_id_seq;
DROP SEQUENCE public.components_form_form_mains_components_id_seq;
DROP TABLE public.components_form_form_mains_components;
DROP TABLE public.components_form_form_mains;
DROP SEQUENCE public.components_footer_footer_mains_id_seq;
DROP TABLE public.components_footer_footer_mains;
DROP SEQUENCE public.components_footer_footer_devs_id_seq;
DROP TABLE public.components_footer_footer_devs;
DROP SEQUENCE public.components_contacts_phone_numbers_id_seq;
DROP TABLE public.components_contacts_phone_numbers;
DROP SEQUENCE public.components_contacts_mail_id_seq;
DROP TABLE public.components_contacts_mail;
DROP SEQUENCE public.components_contacts_addresses_id_seq;
DROP TABLE public.components_contacts_addresses;
DROP SEQUENCE public.components_certificate_certificates_id_seq;
DROP TABLE public.components_certificate_certificates_certificate_lists_links;
DROP TABLE public.components_certificate_certificates;
DROP SEQUENCE public.components_about_abouts_id_seq;
DROP TABLE public.components_about_abouts;
DROP TABLE public.certificate_lists_localizations_links;
DROP SEQUENCE public.certificate_lists_id_seq;
DROP TABLE public.certificate_lists;
DROP TABLE public.admin_users_roles_links;
DROP SEQUENCE public.admin_users_id_seq;
DROP TABLE public.admin_users;
DROP SEQUENCE public.admin_roles_id_seq;
DROP TABLE public.admin_roles;
DROP TABLE public.admin_permissions_role_links;
DROP SEQUENCE public.admin_permissions_id_seq;
DROP TABLE public.admin_permissions;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: -
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


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.admin_permissions_role_links (
    permission_id integer,
    role_id integer
);


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: -
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


--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: -
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


--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.admin_users_roles_links (
    user_id integer,
    role_id integer
);


--
-- Name: certificate_lists; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.certificate_lists (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- Name: certificate_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.certificate_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: certificate_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.certificate_lists_id_seq OWNED BY public.certificate_lists.id;


--
-- Name: certificate_lists_localizations_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.certificate_lists_localizations_links (
    certificate_list_id integer,
    inv_certificate_list_id integer
);


--
-- Name: components_about_abouts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_about_abouts (
    id integer NOT NULL,
    heading character varying(255),
    under_heading text,
    description text
);


--
-- Name: components_about_abouts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_about_abouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: components_about_abouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_about_abouts_id_seq OWNED BY public.components_about_abouts.id;


--
-- Name: components_certificate_certificates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_certificate_certificates (
    id integer NOT NULL,
    under_heading text
);


--
-- Name: components_certificate_certificates_certificate_lists_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_certificate_certificates_certificate_lists_links (
    certificate_id integer,
    certificate_list_id integer
);


--
-- Name: components_certificate_certificates_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_certificate_certificates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: components_certificate_certificates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_certificate_certificates_id_seq OWNED BY public.components_certificate_certificates.id;


--
-- Name: components_contacts_addresses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_contacts_addresses (
    id integer NOT NULL,
    address character varying(255)
);


--
-- Name: components_contacts_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_contacts_addresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: components_contacts_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_contacts_addresses_id_seq OWNED BY public.components_contacts_addresses.id;


--
-- Name: components_contacts_mail; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_contacts_mail (
    id integer NOT NULL,
    mail character varying(255)
);


--
-- Name: components_contacts_mail_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_contacts_mail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: components_contacts_mail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_contacts_mail_id_seq OWNED BY public.components_contacts_mail.id;


--
-- Name: components_contacts_phone_numbers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_contacts_phone_numbers (
    id integer NOT NULL,
    number character varying(255)
);


--
-- Name: components_contacts_phone_numbers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_contacts_phone_numbers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: components_contacts_phone_numbers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_contacts_phone_numbers_id_seq OWNED BY public.components_contacts_phone_numbers.id;


--
-- Name: components_footer_footer_devs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_footer_footer_devs (
    id integer NOT NULL,
    permission character varying(255)
);


--
-- Name: components_footer_footer_devs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_footer_footer_devs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: components_footer_footer_devs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_footer_footer_devs_id_seq OWNED BY public.components_footer_footer_devs.id;


--
-- Name: components_footer_footer_mains; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_footer_footer_mains (
    id integer NOT NULL,
    description text,
    title_mail character varying(255),
    mail character varying(255)
);


--
-- Name: components_footer_footer_mains_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_footer_footer_mains_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: components_footer_footer_mains_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_footer_footer_mains_id_seq OWNED BY public.components_footer_footer_mains.id;


--
-- Name: components_form_form_mains; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_form_form_mains (
    id integer NOT NULL,
    heading character varying(255),
    name character varying(255),
    message character varying(255),
    mail character varying(255),
    button character varying(255)
);


--
-- Name: components_form_form_mains_components; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_form_form_mains_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);


--
-- Name: components_form_form_mains_components_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_form_form_mains_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: components_form_form_mains_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_form_form_mains_components_id_seq OWNED BY public.components_form_form_mains_components.id;


--
-- Name: components_form_form_mains_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_form_form_mains_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: components_form_form_mains_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_form_form_mains_id_seq OWNED BY public.components_form_form_mains.id;


--
-- Name: components_navbar_header_navbars; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_navbar_header_navbars (
    id integer NOT NULL
);


--
-- Name: components_navbar_header_navbars_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_navbar_header_navbars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: components_navbar_header_navbars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_navbar_header_navbars_id_seq OWNED BY public.components_navbar_header_navbars.id;


--
-- Name: components_navbar_header_navbars_locals_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_navbar_header_navbars_locals_links (
    navbar_id integer,
    local_id integer
);


--
-- Name: components_navbar_header_navbars_navigations_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_navbar_header_navbars_navigations_links (
    navbar_id integer,
    navigation_id integer
);


--
-- Name: components_navbar_header_navbars_under_navs_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_navbar_header_navbars_under_navs_links (
    navbar_id integer,
    under_nav_id integer
);


--
-- Name: components_products_products; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_products_products (
    id integer NOT NULL,
    heading character varying(255),
    description text
);


--
-- Name: components_products_products_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_products_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: components_products_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_products_products_id_seq OWNED BY public.components_products_products.id;


--
-- Name: components_products_products_product_lists_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_products_products_product_lists_links (
    product_id integer,
    product_list_id integer
);


--
-- Name: components_services_page_com_component_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_services_page_com_component_services (
    id integer NOT NULL,
    heading character varying(255),
    description text,
    under_description text
);


--
-- Name: components_services_page_com_component_services_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_services_page_com_component_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: components_services_page_com_component_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_services_page_com_component_services_id_seq OWNED BY public.components_services_page_com_component_services.id;


--
-- Name: components_services_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_services_services (
    id integer NOT NULL,
    heading character varying(255),
    under_heading text,
    description text,
    button character varying(255)
);


--
-- Name: components_services_services_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_services_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: components_services_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_services_services_id_seq OWNED BY public.components_services_services.id;


--
-- Name: components_services_services_service_lists_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_services_services_service_lists_links (
    services_id integer,
    service_list_id integer
);


--
-- Name: design_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.design_services (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- Name: design_services_components; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.design_services_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);


--
-- Name: design_services_components_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.design_services_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: design_services_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.design_services_components_id_seq OWNED BY public.design_services_components.id;


--
-- Name: design_services_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.design_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: design_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.design_services_id_seq OWNED BY public.design_services.id;


--
-- Name: design_services_localizations_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.design_services_localizations_links (
    design_service_id integer,
    inv_design_service_id integer
);


--
-- Name: elevator_dispatching_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.elevator_dispatching_services (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- Name: elevator_dispatching_services_components; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.elevator_dispatching_services_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);


--
-- Name: elevator_dispatching_services_components_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.elevator_dispatching_services_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: elevator_dispatching_services_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.elevator_dispatching_services_components_id_seq OWNED BY public.elevator_dispatching_services_components.id;


--
-- Name: elevator_dispatching_services_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.elevator_dispatching_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: elevator_dispatching_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.elevator_dispatching_services_id_seq OWNED BY public.elevator_dispatching_services.id;


--
-- Name: elevator_dispatching_services_localizations_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.elevator_dispatching_services_localizations_links (
    elevator_dispatching_service_id integer,
    inv_elevator_dispatching_service_id integer
);


--
-- Name: files; Type: TABLE; Schema: public; Owner: -
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


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.files_related_morphs (
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" integer
);


--
-- Name: fire_safety_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fire_safety_services (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- Name: fire_safety_services_components; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fire_safety_services_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);


--
-- Name: fire_safety_services_components_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fire_safety_services_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: fire_safety_services_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fire_safety_services_components_id_seq OWNED BY public.fire_safety_services_components.id;


--
-- Name: fire_safety_services_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fire_safety_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: fire_safety_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fire_safety_services_id_seq OWNED BY public.fire_safety_services.id;


--
-- Name: fire_safety_services_localizations_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fire_safety_services_localizations_links (
    fire_safety_service_id integer,
    inv_fire_safety_service_id integer
);


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: -
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


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: layouts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.layouts (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- Name: layouts_components; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.layouts_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);


--
-- Name: layouts_components_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.layouts_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: layouts_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.layouts_components_id_seq OWNED BY public.layouts_components.id;


--
-- Name: layouts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.layouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: layouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.layouts_id_seq OWNED BY public.layouts.id;


--
-- Name: layouts_localizations_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.layouts_localizations_links (
    layout_id integer,
    inv_layout_id integer
);


--
-- Name: locals; Type: TABLE; Schema: public; Owner: -
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


--
-- Name: locals_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.locals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: locals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.locals_id_seq OWNED BY public.locals.id;


--
-- Name: locals_localizations_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.locals_localizations_links (
    local_id integer,
    inv_local_id integer
);


--
-- Name: mains; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mains (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- Name: mains_components; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mains_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);


--
-- Name: mains_components_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.mains_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: mains_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mains_components_id_seq OWNED BY public.mains_components.id;


--
-- Name: mains_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.mains_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: mains_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mains_id_seq OWNED BY public.mains.id;


--
-- Name: mains_localizations_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mains_localizations_links (
    main_id integer,
    inv_main_id integer
);


--
-- Name: navigations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.navigations (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- Name: navigations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.navigations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: navigations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.navigations_id_seq OWNED BY public.navigations.id;


--
-- Name: navigations_localizations_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.navigations_localizations_links (
    navigation_id integer,
    inv_navigation_id integer
);


--
-- Name: network_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.network_services (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- Name: network_services_components; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.network_services_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);


--
-- Name: network_services_components_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.network_services_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: network_services_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.network_services_components_id_seq OWNED BY public.network_services_components.id;


--
-- Name: network_services_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.network_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: network_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.network_services_id_seq OWNED BY public.network_services.id;


--
-- Name: network_services_localizations_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.network_services_localizations_links (
    network_service_id integer,
    inv_network_service_id integer
);


--
-- Name: product_lists; Type: TABLE; Schema: public; Owner: -
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


--
-- Name: product_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.product_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: product_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.product_lists_id_seq OWNED BY public.product_lists.id;


--
-- Name: product_lists_localizations_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.product_lists_localizations_links (
    product_list_id integer,
    inv_product_list_id integer
);


--
-- Name: sertificate_lists; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sertificate_lists (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- Name: sertificate_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sertificate_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sertificate_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sertificate_lists_id_seq OWNED BY public.sertificate_lists.id;


--
-- Name: sertificate_lists_localizations_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sertificate_lists_localizations_links (
    sertificate_list_id integer,
    inv_sertificate_list_id integer
);


--
-- Name: service_lists; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_lists (
    id integer NOT NULL,
    heading character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- Name: service_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.service_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.service_lists_id_seq OWNED BY public.service_lists.id;


--
-- Name: service_lists_localizations_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_lists_localizations_links (
    service_list_id integer,
    inv_service_list_id integer
);


--
-- Name: sonstruction_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sonstruction_services (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- Name: sonstruction_services_components; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sonstruction_services_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);


--
-- Name: sonstruction_services_components_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sonstruction_services_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sonstruction_services_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sonstruction_services_components_id_seq OWNED BY public.sonstruction_services_components.id;


--
-- Name: sonstruction_services_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sonstruction_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sonstruction_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sonstruction_services_id_seq OWNED BY public.sonstruction_services.id;


--
-- Name: sonstruction_services_localizations_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sonstruction_services_localizations_links (
    sonstruction_service_id integer,
    inv_sonstruction_service_id integer
);


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: -
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


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: under_navs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.under_navs (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


--
-- Name: under_navs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.under_navs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: under_navs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.under_navs_id_seq OWNED BY public.under_navs.id;


--
-- Name: under_navs_localizations_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.under_navs_localizations_links (
    under_nav_id integer,
    inv_under_nav_id integer
);


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.up_permissions_role_links (
    permission_id integer,
    role_id integer
);


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: -
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


--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: -
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


--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.up_users_role_links (
    user_id integer,
    role_id integer
);


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: certificate_lists id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.certificate_lists ALTER COLUMN id SET DEFAULT nextval('public.certificate_lists_id_seq'::regclass);


--
-- Name: components_about_abouts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_about_abouts ALTER COLUMN id SET DEFAULT nextval('public.components_about_abouts_id_seq'::regclass);


--
-- Name: components_certificate_certificates id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_certificate_certificates ALTER COLUMN id SET DEFAULT nextval('public.components_certificate_certificates_id_seq'::regclass);


--
-- Name: components_contacts_addresses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_contacts_addresses ALTER COLUMN id SET DEFAULT nextval('public.components_contacts_addresses_id_seq'::regclass);


--
-- Name: components_contacts_mail id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_contacts_mail ALTER COLUMN id SET DEFAULT nextval('public.components_contacts_mail_id_seq'::regclass);


--
-- Name: components_contacts_phone_numbers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_contacts_phone_numbers ALTER COLUMN id SET DEFAULT nextval('public.components_contacts_phone_numbers_id_seq'::regclass);


--
-- Name: components_footer_footer_devs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_footer_footer_devs ALTER COLUMN id SET DEFAULT nextval('public.components_footer_footer_devs_id_seq'::regclass);


--
-- Name: components_footer_footer_mains id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_footer_footer_mains ALTER COLUMN id SET DEFAULT nextval('public.components_footer_footer_mains_id_seq'::regclass);


--
-- Name: components_form_form_mains id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_form_form_mains ALTER COLUMN id SET DEFAULT nextval('public.components_form_form_mains_id_seq'::regclass);


--
-- Name: components_form_form_mains_components id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_form_form_mains_components ALTER COLUMN id SET DEFAULT nextval('public.components_form_form_mains_components_id_seq'::regclass);


--
-- Name: components_navbar_header_navbars id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_navbar_header_navbars ALTER COLUMN id SET DEFAULT nextval('public.components_navbar_header_navbars_id_seq'::regclass);


--
-- Name: components_products_products id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_products_products ALTER COLUMN id SET DEFAULT nextval('public.components_products_products_id_seq'::regclass);


--
-- Name: components_services_page_com_component_services id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_services_page_com_component_services ALTER COLUMN id SET DEFAULT nextval('public.components_services_page_com_component_services_id_seq'::regclass);


--
-- Name: components_services_services id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_services_services ALTER COLUMN id SET DEFAULT nextval('public.components_services_services_id_seq'::regclass);


--
-- Name: design_services id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.design_services ALTER COLUMN id SET DEFAULT nextval('public.design_services_id_seq'::regclass);


--
-- Name: design_services_components id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.design_services_components ALTER COLUMN id SET DEFAULT nextval('public.design_services_components_id_seq'::regclass);


--
-- Name: elevator_dispatching_services id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elevator_dispatching_services ALTER COLUMN id SET DEFAULT nextval('public.elevator_dispatching_services_id_seq'::regclass);


--
-- Name: elevator_dispatching_services_components id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elevator_dispatching_services_components ALTER COLUMN id SET DEFAULT nextval('public.elevator_dispatching_services_components_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: fire_safety_services id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fire_safety_services ALTER COLUMN id SET DEFAULT nextval('public.fire_safety_services_id_seq'::regclass);


--
-- Name: fire_safety_services_components id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fire_safety_services_components ALTER COLUMN id SET DEFAULT nextval('public.fire_safety_services_components_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: layouts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.layouts ALTER COLUMN id SET DEFAULT nextval('public.layouts_id_seq'::regclass);


--
-- Name: layouts_components id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.layouts_components ALTER COLUMN id SET DEFAULT nextval('public.layouts_components_id_seq'::regclass);


--
-- Name: locals id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.locals ALTER COLUMN id SET DEFAULT nextval('public.locals_id_seq'::regclass);


--
-- Name: mains id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mains ALTER COLUMN id SET DEFAULT nextval('public.mains_id_seq'::regclass);


--
-- Name: mains_components id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mains_components ALTER COLUMN id SET DEFAULT nextval('public.mains_components_id_seq'::regclass);


--
-- Name: navigations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.navigations ALTER COLUMN id SET DEFAULT nextval('public.navigations_id_seq'::regclass);


--
-- Name: network_services id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.network_services ALTER COLUMN id SET DEFAULT nextval('public.network_services_id_seq'::regclass);


--
-- Name: network_services_components id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.network_services_components ALTER COLUMN id SET DEFAULT nextval('public.network_services_components_id_seq'::regclass);


--
-- Name: product_lists id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_lists ALTER COLUMN id SET DEFAULT nextval('public.product_lists_id_seq'::regclass);


--
-- Name: sertificate_lists id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sertificate_lists ALTER COLUMN id SET DEFAULT nextval('public.sertificate_lists_id_seq'::regclass);


--
-- Name: service_lists id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_lists ALTER COLUMN id SET DEFAULT nextval('public.service_lists_id_seq'::regclass);


--
-- Name: sonstruction_services id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sonstruction_services ALTER COLUMN id SET DEFAULT nextval('public.sonstruction_services_id_seq'::regclass);


--
-- Name: sonstruction_services_components id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sonstruction_services_components ALTER COLUMN id SET DEFAULT nextval('public.sonstruction_services_components_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: under_navs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.under_navs ALTER COLUMN id SET DEFAULT nextval('public.under_navs_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: -
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
77	plugin::content-manager.explorer.create	api::navigation.navigation	{"fields": ["name"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 12:16:51.837	2022-06-20 12:16:51.837	\N	\N
78	plugin::content-manager.explorer.read	api::navigation.navigation	{"fields": ["name"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 12:16:51.856	2022-06-20 12:16:51.856	\N	\N
79	plugin::content-manager.explorer.update	api::navigation.navigation	{"fields": ["name"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 12:16:51.873	2022-06-20 12:16:51.873	\N	\N
80	plugin::content-manager.explorer.delete	api::navigation.navigation	{"locales": ["en", "tk", "ru"]}	[]	2022-06-20 12:16:51.889	2022-06-20 12:16:51.889	\N	\N
90	plugin::content-manager.explorer.create	api::service-list.service-list	{"fields": ["img", "heading", "description"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 12:44:32.01	2022-06-20 12:44:32.01	\N	\N
91	plugin::content-manager.explorer.read	api::service-list.service-list	{"fields": ["img", "heading", "description"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 12:44:32.03	2022-06-20 12:44:32.03	\N	\N
92	plugin::content-manager.explorer.update	api::service-list.service-list	{"fields": ["img", "heading", "description"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 12:44:32.047	2022-06-20 12:44:32.047	\N	\N
93	plugin::content-manager.explorer.delete	api::service-list.service-list	{"locales": ["en", "tk", "ru"]}	[]	2022-06-20 12:44:32.064	2022-06-20 12:44:32.064	\N	\N
97	plugin::content-manager.explorer.create	api::product-list.product-list	{"fields": ["img", "description"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 12:56:35.164	2022-06-20 12:56:35.164	\N	\N
98	plugin::content-manager.explorer.read	api::product-list.product-list	{"fields": ["img", "description"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 12:56:35.185	2022-06-20 12:56:35.185	\N	\N
99	plugin::content-manager.explorer.update	api::product-list.product-list	{"fields": ["img", "description"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 12:56:35.209	2022-06-20 12:56:35.209	\N	\N
100	plugin::content-manager.explorer.delete	api::product-list.product-list	{"locales": ["en", "tk", "ru"]}	[]	2022-06-20 12:56:35.231	2022-06-20 12:56:35.231	\N	\N
108	plugin::content-manager.explorer.create	api::certificate-list.certificate-list	{"fields": ["img"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 13:13:44.302	2022-06-20 13:13:44.302	\N	\N
109	plugin::content-manager.explorer.read	api::certificate-list.certificate-list	{"fields": ["img"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 13:13:44.329	2022-06-20 13:13:44.329	\N	\N
110	plugin::content-manager.explorer.update	api::certificate-list.certificate-list	{"fields": ["img"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 13:13:44.356	2022-06-20 13:13:44.356	\N	\N
111	plugin::content-manager.explorer.delete	api::certificate-list.certificate-list	{"locales": ["en", "tk", "ru"]}	[]	2022-06-20 13:13:44.379	2022-06-20 13:13:44.379	\N	\N
112	plugin::content-manager.explorer.create	api::under-nav.under-nav	{"fields": ["name"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 13:19:09.848	2022-06-20 13:19:09.848	\N	\N
113	plugin::content-manager.explorer.read	api::under-nav.under-nav	{"fields": ["name"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 13:19:09.876	2022-06-20 13:19:09.876	\N	\N
114	plugin::content-manager.explorer.update	api::under-nav.under-nav	{"fields": ["name"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 13:19:09.897	2022-06-20 13:19:09.897	\N	\N
115	plugin::content-manager.explorer.delete	api::under-nav.under-nav	{"locales": ["en", "tk", "ru"]}	[]	2022-06-20 13:19:09.916	2022-06-20 13:19:09.916	\N	\N
122	plugin::content-manager.explorer.create	api::sertificate-list.sertificate-list	{"fields": ["img"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 14:21:18.791	2022-06-20 14:21:18.791	\N	\N
123	plugin::content-manager.explorer.read	api::sertificate-list.sertificate-list	{"fields": ["img"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 14:21:18.803	2022-06-20 14:21:18.803	\N	\N
124	plugin::content-manager.explorer.update	api::sertificate-list.sertificate-list	{"fields": ["img"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 14:21:18.811	2022-06-20 14:21:18.811	\N	\N
125	plugin::content-manager.explorer.delete	api::sertificate-list.sertificate-list	{"locales": ["en", "tk", "ru"]}	[]	2022-06-20 14:21:18.819	2022-06-20 14:21:18.819	\N	\N
170	plugin::content-manager.explorer.create	api::elevator-dispatching-service.elevator-dispatching-service	{"fields": ["elevator_dispatching.heading", "elevator_dispatching.description", "elevator_dispatching.under_description", "elevator_dispatching.img1", "elevator_dispatching.img2", "elevator_dispatching.img3"], "locales": ["en", "tk", "ru"]}	[]	2022-06-21 12:56:41.901	2022-06-21 12:56:41.901	\N	\N
171	plugin::content-manager.explorer.read	api::elevator-dispatching-service.elevator-dispatching-service	{"fields": ["elevator_dispatching.heading", "elevator_dispatching.description", "elevator_dispatching.under_description", "elevator_dispatching.img1", "elevator_dispatching.img2", "elevator_dispatching.img3"], "locales": ["en", "tk", "ru"]}	[]	2022-06-21 12:56:41.915	2022-06-21 12:56:41.915	\N	\N
172	plugin::content-manager.explorer.update	api::elevator-dispatching-service.elevator-dispatching-service	{"fields": ["elevator_dispatching.heading", "elevator_dispatching.description", "elevator_dispatching.under_description", "elevator_dispatching.img1", "elevator_dispatching.img2", "elevator_dispatching.img3"], "locales": ["en", "tk", "ru"]}	[]	2022-06-21 12:56:41.927	2022-06-21 12:56:41.927	\N	\N
173	plugin::content-manager.explorer.delete	api::elevator-dispatching-service.elevator-dispatching-service	{"locales": ["en", "tk", "ru"]}	[]	2022-06-21 12:56:41.936	2022-06-21 12:56:41.936	\N	\N
175	plugin::content-manager.explorer.read	api::network-service.network-service	{"fields": ["network.heading", "network.description", "network.under_description", "network.img1", "network.img2", "network.img3"], "locales": ["en", "tk", "ru"]}	[]	2022-06-21 12:58:20.154	2022-06-21 12:58:20.154	\N	\N
176	plugin::content-manager.explorer.update	api::network-service.network-service	{"fields": ["network.heading", "network.description", "network.under_description", "network.img1", "network.img2", "network.img3"], "locales": ["en", "tk", "ru"]}	[]	2022-06-21 12:58:20.162	2022-06-21 12:58:20.162	\N	\N
138	plugin::content-manager.explorer.delete	api::layout.layout	{"locales": ["en", "tk", "ru"]}	[]	2022-06-20 14:44:24.494	2022-06-20 14:44:24.494	\N	\N
139	plugin::content-manager.explorer.create	api::main.main	{"fields": ["headImg", "services.heading", "services.under_heading", "services.description", "services.service_lists", "services.button", "product.heading", "product.description", "product.product_lists", "about.headImg", "about.heading", "about.under_heading", "about.description", "about.descImg", "certificate.logo", "certificate.under_heading", "certificate.certificate_lists", "form.heading", "form.name", "form.message", "form.mail", "form.form_address.address", "form.form_mail.mail", "form.form_number.number", "form.button"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 14:44:54.285	2022-06-20 14:44:54.285	\N	\N
140	plugin::content-manager.explorer.read	api::main.main	{"fields": ["headImg", "services.heading", "services.under_heading", "services.description", "services.service_lists", "services.button", "product.heading", "product.description", "product.product_lists", "about.headImg", "about.heading", "about.under_heading", "about.description", "about.descImg", "certificate.logo", "certificate.under_heading", "certificate.certificate_lists", "form.heading", "form.name", "form.message", "form.mail", "form.form_address.address", "form.form_mail.mail", "form.form_number.number", "form.button"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 14:44:54.296	2022-06-20 14:44:54.296	\N	\N
141	plugin::content-manager.explorer.update	api::main.main	{"fields": ["headImg", "services.heading", "services.under_heading", "services.description", "services.service_lists", "services.button", "product.heading", "product.description", "product.product_lists", "about.headImg", "about.heading", "about.under_heading", "about.description", "about.descImg", "certificate.logo", "certificate.under_heading", "certificate.certificate_lists", "form.heading", "form.name", "form.message", "form.mail", "form.form_address.address", "form.form_mail.mail", "form.form_number.number", "form.button"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 14:44:54.305	2022-06-20 14:44:54.305	\N	\N
151	plugin::content-manager.explorer.create	api::layout.layout	{"fields": ["navbar.logo", "navbar.locals", "navbar.navigations", "navbar.under_navs", "address.address", "number.number", "footer.logo", "footer.description", "footer.title_mail", "footer.mail", "footer_dev.permission", "footer_dev.logo_dev"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 14:56:57.263	2022-06-20 14:56:57.263	\N	\N
152	plugin::content-manager.explorer.read	api::layout.layout	{"fields": ["navbar.logo", "navbar.locals", "navbar.navigations", "navbar.under_navs", "address.address", "number.number", "footer.logo", "footer.description", "footer.title_mail", "footer.mail", "footer_dev.permission", "footer_dev.logo_dev"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 14:56:57.275	2022-06-20 14:56:57.275	\N	\N
153	plugin::content-manager.explorer.update	api::layout.layout	{"fields": ["navbar.logo", "navbar.locals", "navbar.navigations", "navbar.under_navs", "address.address", "number.number", "footer.logo", "footer.description", "footer.title_mail", "footer.mail", "footer_dev.permission", "footer_dev.logo_dev"], "locales": ["en", "tk", "ru"]}	[]	2022-06-20 14:56:57.287	2022-06-20 14:56:57.287	\N	\N
154	plugin::documentation.read	\N	{}	[]	2022-06-20 15:00:12.222	2022-06-20 15:00:12.222	\N	\N
155	plugin::documentation.settings.update	\N	{}	[]	2022-06-20 15:00:12.231	2022-06-20 15:00:12.231	\N	\N
156	plugin::documentation.settings.regenerate	\N	{}	[]	2022-06-20 15:00:12.239	2022-06-20 15:00:12.239	\N	\N
157	plugin::documentation.settings.read	\N	{}	[]	2022-06-20 15:00:12.247	2022-06-20 15:00:12.247	\N	\N
158	plugin::content-manager.explorer.create	api::sonstruction-service.sonstruction-service	{"fields": ["construction.heading", "construction.description", "construction.under_description", "construction.img1", "construction.img2", "construction.img3"], "locales": ["en", "tk", "ru"]}	[]	2022-06-21 12:52:42.317	2022-06-21 12:52:42.317	\N	\N
159	plugin::content-manager.explorer.read	api::sonstruction-service.sonstruction-service	{"fields": ["construction.heading", "construction.description", "construction.under_description", "construction.img1", "construction.img2", "construction.img3"], "locales": ["en", "tk", "ru"]}	[]	2022-06-21 12:52:42.33	2022-06-21 12:52:42.33	\N	\N
160	plugin::content-manager.explorer.update	api::sonstruction-service.sonstruction-service	{"fields": ["construction.heading", "construction.description", "construction.under_description", "construction.img1", "construction.img2", "construction.img3"], "locales": ["en", "tk", "ru"]}	[]	2022-06-21 12:52:42.339	2022-06-21 12:52:42.339	\N	\N
161	plugin::content-manager.explorer.delete	api::sonstruction-service.sonstruction-service	{"locales": ["en", "tk", "ru"]}	[]	2022-06-21 12:52:42.347	2022-06-21 12:52:42.347	\N	\N
162	plugin::content-manager.explorer.create	api::design-service.design-service	{"fields": ["design.heading", "design.description", "design.under_description", "design.img1", "design.img2", "design.img3"], "locales": ["en", "tk", "ru"]}	[]	2022-06-21 12:53:49.06	2022-06-21 12:53:49.06	\N	\N
163	plugin::content-manager.explorer.read	api::design-service.design-service	{"fields": ["design.heading", "design.description", "design.under_description", "design.img1", "design.img2", "design.img3"], "locales": ["en", "tk", "ru"]}	[]	2022-06-21 12:53:49.072	2022-06-21 12:53:49.072	\N	\N
164	plugin::content-manager.explorer.update	api::design-service.design-service	{"fields": ["design.heading", "design.description", "design.under_description", "design.img1", "design.img2", "design.img3"], "locales": ["en", "tk", "ru"]}	[]	2022-06-21 12:53:49.08	2022-06-21 12:53:49.08	\N	\N
165	plugin::content-manager.explorer.delete	api::design-service.design-service	{"locales": ["en", "tk", "ru"]}	[]	2022-06-21 12:53:49.09	2022-06-21 12:53:49.09	\N	\N
166	plugin::content-manager.explorer.create	api::fire-safety-service.fire-safety-service	{"fields": ["fire_safety.heading", "fire_safety.description", "fire_safety.under_description", "fire_safety.img1", "fire_safety.img2", "fire_safety.img3"], "locales": ["en", "tk", "ru"]}	[]	2022-06-21 12:55:09.604	2022-06-21 12:55:09.604	\N	\N
167	plugin::content-manager.explorer.read	api::fire-safety-service.fire-safety-service	{"fields": ["fire_safety.heading", "fire_safety.description", "fire_safety.under_description", "fire_safety.img1", "fire_safety.img2", "fire_safety.img3"], "locales": ["en", "tk", "ru"]}	[]	2022-06-21 12:55:09.617	2022-06-21 12:55:09.617	\N	\N
168	plugin::content-manager.explorer.update	api::fire-safety-service.fire-safety-service	{"fields": ["fire_safety.heading", "fire_safety.description", "fire_safety.under_description", "fire_safety.img1", "fire_safety.img2", "fire_safety.img3"], "locales": ["en", "tk", "ru"]}	[]	2022-06-21 12:55:09.626	2022-06-21 12:55:09.626	\N	\N
169	plugin::content-manager.explorer.delete	api::fire-safety-service.fire-safety-service	{"locales": ["en", "tk", "ru"]}	[]	2022-06-21 12:55:09.635	2022-06-21 12:55:09.635	\N	\N
174	plugin::content-manager.explorer.create	api::network-service.network-service	{"fields": ["network.heading", "network.description", "network.under_description", "network.img1", "network.img2", "network.img3"], "locales": ["en", "tk", "ru"]}	[]	2022-06-21 12:58:20.139	2022-06-21 12:58:20.139	\N	\N
177	plugin::content-manager.explorer.delete	api::network-service.network-service	{"locales": ["en", "tk", "ru"]}	[]	2022-06-21 12:58:20.17	2022-06-21 12:58:20.17	\N	\N
\.


--
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: -
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
64	1
73	1
74	1
75	1
76	1
77	1
78	1
79	1
80	1
90	1
91	1
92	1
93	1
97	1
98	1
99	1
100	1
108	1
109	1
110	1
111	1
112	1
113	1
114	1
115	1
122	1
123	1
124	1
125	1
138	1
139	1
140	1
141	1
151	1
152	1
153	1
154	1
155	1
156	1
157	1
158	1
159	1
160	1
161	1
162	1
163	1
164	1
165	1
166	1
167	1
168	1
169	1
170	1
171	1
172	1
173	1
174	1
175	1
176	1
177	1
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2022-06-20 11:57:02.799	2022-06-20 11:57:02.799	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2022-06-20 11:57:02.809	2022-06-20 11:57:02.809	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2022-06-20 11:57:02.817	2022-06-20 11:57:02.817	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Max	Btr	\N	admin@test.test	$2a$10$TvPkIq06UujsMdciPuRWU.Go3Fm57u74Qx47u4OyuywKiQ11AUDoK	\N	\N	t	f	\N	2022-06-20 11:57:46.555	2022-06-20 11:57:46.555	\N	\N
\.


--
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.admin_users_roles_links (user_id, role_id) FROM stdin;
1	1
\.


--
-- Data for Name: certificate_lists; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.certificate_lists (id, created_at, updated_at, created_by_id, updated_by_id, locale) FROM stdin;
1	2022-06-20 14:23:24.256	2022-06-21 13:00:23.499	1	1	ru
2	2022-06-20 14:23:31.128	2022-06-21 13:00:29.256	1	1	ru
3	2022-06-20 14:23:37.956	2022-06-21 13:00:35.768	1	1	ru
4	2022-06-20 14:23:43.833	2022-06-21 13:00:42.646	1	1	ru
5	2022-06-20 14:23:50.838	2022-06-21 13:00:48.437	1	1	ru
\.


--
-- Data for Name: certificate_lists_localizations_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.certificate_lists_localizations_links (certificate_list_id, inv_certificate_list_id) FROM stdin;
\.


--
-- Data for Name: components_about_abouts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_about_abouts (id, heading, under_heading, description) FROM stdin;
1	О нас	“Höwür” имеет все необходимые функции	Лорем ипсум долор сит амет, ин еос мелиус бонорум молестиае, еос ан деленити цонституам. Ад хомеро сцрипторем усу. Ет яуем солута вулпутате еам, вих ад пробатус партиендо ассуеверит. Меи ат сапиентем елояуентиам. Ин вих сцрибентур инструцтиор. Волумус адиписци диспутатиони ат нец, при еррор малорум не. Делицата ехплицари продессет мел те, вивендум симилияуе сцрипторем ан нам, усу аццоммодаре цонтентионес.
\.


--
-- Data for Name: components_certificate_certificates; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_certificate_certificates (id, under_heading) FROM stdin;
1	Сертификаты, полученные нашей компанией на сегодняшний день
\.


--
-- Data for Name: components_certificate_certificates_certificate_lists_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_certificate_certificates_certificate_lists_links (certificate_id, certificate_list_id) FROM stdin;
1	1
1	2
1	3
1	4
1	5
\.


--
-- Data for Name: components_contacts_addresses; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_contacts_addresses (id, address) FROM stdin;
1	Туркменистан / Ашгабад, Парахат 1, Здание 68
2	Туркменистан / Ашгабад, Парахат 1, Здание 68 
3	Туркменистан / Ашгабад, Парахат 1, Здание 68 
\.


--
-- Data for Name: components_contacts_mail; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_contacts_mail (id, mail) FROM stdin;
1	hovur_web@gmail.com
\.


--
-- Data for Name: components_contacts_phone_numbers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_contacts_phone_numbers (id, number) FROM stdin;
1	+993 65039539
2	+99364030500
3	+99364030500
\.


--
-- Data for Name: components_footer_footer_devs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_footer_footer_devs (id, permission) FROM stdin;
1	©2021 Hilli Tilsimat. All Rights Reserved. Privacy Policy.
\.


--
-- Data for Name: components_footer_footer_mains; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_footer_footer_mains (id, description, title_mail, mail) FROM stdin;
1	Индивидуальное предприятие “Höwür” - строительная компания, объединяющая талантливых инженеров, проектировщиков, строителей.  Вместе мы строим будущее.	Электронная почта 	hovur_web@gmail.com
\.


--
-- Data for Name: components_form_form_mains; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_form_form_mains (id, heading, name, message, mail, button) FROM stdin;
1	Лорем ипсум долор сит амет, ин еос мелиус бонорум молестиае	Введите ФИО	Введите сообщение	Введите адрес электронной почты	Отправлять
\.


--
-- Data for Name: components_form_form_mains_components; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_form_form_mains_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
7	1	2	contacts.address	form_address	1
8	1	1	contacts.mail	form_mail	1
9	1	2	contacts.phone-number	form_number	1
\.


--
-- Data for Name: components_navbar_header_navbars; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_navbar_header_navbars (id) FROM stdin;
1
2
\.


--
-- Data for Name: components_navbar_header_navbars_locals_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_navbar_header_navbars_locals_links (navbar_id, local_id) FROM stdin;
1	1
1	2
1	3
2	1
2	2
2	3
\.


--
-- Data for Name: components_navbar_header_navbars_navigations_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_navbar_header_navbars_navigations_links (navbar_id, navigation_id) FROM stdin;
2	1
2	2
2	3
2	4
1	1
1	2
1	3
1	4
\.


--
-- Data for Name: components_navbar_header_navbars_under_navs_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_navbar_header_navbars_under_navs_links (navbar_id, under_nav_id) FROM stdin;
1	1
1	2
1	3
1	4
1	5
2	1
2	2
2	3
2	4
2	5
\.


--
-- Data for Name: components_products_products; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_products_products (id, heading, description) FROM stdin;
1	Наш продукты	Лорем ипсум долор сит амет, ин еос мелиус бонорум молестиае, еос ан деленити цонституам. Ад хомеро сцрипторем усу. Ет яуем солута вулпутате еам, вих ад пробатус партиендо ассуеверит.
\.


--
-- Data for Name: components_products_products_product_lists_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_products_products_product_lists_links (product_id, product_list_id) FROM stdin;
1	4
1	5
1	6
\.


--
-- Data for Name: components_services_page_com_component_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_services_page_com_component_services (id, heading, description, under_description) FROM stdin;
1	Строительство	Лорем ипсум долор сит амет, ин еос мелиус бонорум молестиае, еос ан деленити цонституам. Ад хомеро сцрипторем усу. Ет яуем солута вулпутате еам, вих ад пробатус партиендо ассуеверит. Меи ат сапиентем елояуентиам. Ин вих сцрибентур инструцтиор.\n\nВолумус адиписци диспутатиони ат нец, при еррор малорум не. Делицата ехплицари продессет мел те, вивендум симилияуе сцрипторем ан нам, усу аццоммодаре цонтентионес ид. 	Лорем ипсум долор сит амет, ин еос мелиус бонорум молестиае, еос ан деленити цонституам. Ад хомеро сцрипторем усу. Ет яуем солута вулпутате еам, вих ад пробатус партиендо ассуеверит. 
2	Проектирование	Лорем ипсум долор сит амет, ин еос мелиус бонорум молестиае, еос ан деленити цонституам. Ад хомеро сцрипторем усу. Ет яуем солута вулпутате еам, вих ад пробатус партиендо ассуеверит. Меи ат сапиентем елояуентиам. Ин вих сцрибентур инструцтиор.\n\nВолумус адиписци диспутатиони ат нец, при еррор малорум не. Делицата ехплицари продессет мел те, вивендум симилияуе сцрипторем ан нам, усу аццоммодаре цонтентионес ид. 	Лорем ипсум долор сит амет, ин еос мелиус бонорум молестиае, еос ан деленити цонституам. Ад хомеро сцрипторем усу. Ет яуем солута вулпутате еам, вих ад пробатус партиендо ассуеверит. 
3	Пожарная безопасность	Лорем ипсум долор сит амет, ин еос мелиус бонорум молестиае, еос ан деленити цонституам. Ад хомеро сцрипторем усу. Ет яуем солута вулпутате еам, вих ад пробатус партиендо ассуеверит. Меи ат сапиентем елояуентиам. Ин вих сцрибентур инструцтиор.\n\nВолумус адиписци диспутатиони ат нец, при еррор малорум не. Делицата ехплицари продессет мел те, вивендум симилияуе сцрипторем ан нам, усу аццоммодаре цонтентионес ид. 	Лорем ипсум долор сит амет, ин еос мелиус бонорум молестиае, еос ан деленити цонституам. Ад хомеро сцрипторем усу. Ет яуем солута вулпутате еам, вих ад пробатус партиендо ассуеверит. 
4	Лифтовая диспечеризация	Лорем ипсум долор сит амет, ин еос мелиус бонорум молестиае, еос ан деленити цонституам. Ад хомеро сцрипторем усу. Ет яуем солута вулпутате еам, вих ад пробатус партиендо ассуеверит. Меи ат сапиентем елояуентиам. Ин вих сцрибентур инструцтиор.\n\nВолумус адиписци диспутатиони ат нец, при еррор малорум не. Делицата ехплицари продессет мел те, вивендум симилияуе сцрипторем ан нам, усу аццоммодаре цонтентионес ид. 	Лорем ипсум долор сит амет, ин еос мелиус бонорум молестиае, еос ан деленити цонституам. Ад хомеро сцрипторем усу. Ет яуем солута вулпутате еам, вих ад пробатус партиендо ассуеверит. 
5	Проектирование Сети	Лорем ипсум долор сит амет, ин еос мелиус бонорум молестиае, еос ан деленити цонституам. Ад хомеро сцрипторем усу. Ет яуем солута вулпутате еам, вих ад пробатус партиендо ассуеверит. Меи ат сапиентем елояуентиам. Ин вих сцрибентур инструцтиор.\n\nВолумус адиписци диспутатиони ат нец, при еррор малорум не. Делицата ехплицари продессет мел те, вивендум симилияуе сцрипторем ан нам, усу аццоммодаре цонтентионес ид. 	Лорем ипсум долор сит амет, ин еос мелиус бонорум молестиае, еос ан деленити цонституам. Ад хомеро сцрипторем усу. Ет яуем солута вулпутате еам, вих ад пробатус партиендо ассуеверит. 
\.


--
-- Data for Name: components_services_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_services_services (id, heading, under_heading, description, button) FROM stdin;
1	Наш услуги	Höwür - прочность, стойкость и уверенность.	 Индивидуальное предприятие “Höwür” было основано в 2016 году. Зарекомендовав себя на рынке, как надежный подрядчик по выполнению строительных работ, мы проектируем, строим коммерческие и гражданские объекты, а также оснащаем им высокотехнологическим оборудованием  	Подробнее
\.


--
-- Data for Name: components_services_services_service_lists_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_services_services_service_lists_links (services_id, service_list_id) FROM stdin;
1	1
1	2
1	3
1	4
\.


--
-- Data for Name: design_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.design_services (id, created_at, updated_at, created_by_id, updated_by_id, locale) FROM stdin;
1	2022-06-21 13:04:38.262	2022-06-21 13:04:38.262	1	1	ru
\.


--
-- Data for Name: design_services_components; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.design_services_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	2	services-page-com.component-services	design	1
\.


--
-- Data for Name: design_services_localizations_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.design_services_localizations_links (design_service_id, inv_design_service_id) FROM stdin;
\.


--
-- Data for Name: elevator_dispatching_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.elevator_dispatching_services (id, created_at, updated_at, created_by_id, updated_by_id, locale) FROM stdin;
1	2022-06-21 13:07:07.069	2022-06-21 13:07:07.069	1	1	ru
\.


--
-- Data for Name: elevator_dispatching_services_components; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.elevator_dispatching_services_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	4	services-page-com.component-services	elevator_dispatching	1
\.


--
-- Data for Name: elevator_dispatching_services_localizations_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.elevator_dispatching_services_localizations_links (elevator_dispatching_service_id, inv_elevator_dispatching_service_id) FROM stdin;
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Vector 3.png	Vector 3.png	Vector 3.png	1920	602	{"large": {"ext": ".png", "url": "/uploads/large_Vector_3_5dec458d0e.png", "hash": "large_Vector_3_5dec458d0e", "mime": "image/png", "name": "large_Vector 3.png", "path": null, "size": 532.48, "width": 1000, "height": 314}, "small": {"ext": ".png", "url": "/uploads/small_Vector_3_5dec458d0e.png", "hash": "small_Vector_3_5dec458d0e", "mime": "image/png", "name": "small_Vector 3.png", "path": null, "size": 153.23, "width": 500, "height": 157}, "medium": {"ext": ".png", "url": "/uploads/medium_Vector_3_5dec458d0e.png", "hash": "medium_Vector_3_5dec458d0e", "mime": "image/png", "name": "medium_Vector 3.png", "path": null, "size": 315.05, "width": 750, "height": 235}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Vector_3_5dec458d0e.png", "hash": "thumbnail_Vector_3_5dec458d0e", "mime": "image/png", "name": "thumbnail_Vector 3.png", "path": null, "size": 44.64, "width": 245, "height": 77}}	Vector_3_5dec458d0e	.png	image/png	323.53	/uploads/Vector_3_5dec458d0e.png	\N	local	\N	2022-06-20 12:06:04.006	2022-06-20 12:06:04.006	1	1
3	Group 2.png	Group 2.png	Group 2.png	72	84	\N	Group_2_1456cb22f6	.png	image/png	1.26	/uploads/Group_2_1456cb22f6.png	\N	local	\N	2022-06-20 12:09:48.212	2022-06-20 12:09:48.212	1	1
4	Frame 9.png	Frame 9.png	Frame 9.png	319	219	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_9_0b52018cfd.png", "hash": "thumbnail_Frame_9_0b52018cfd", "mime": "image/png", "name": "thumbnail_Frame 9.png", "path": null, "size": 68.62, "width": 227, "height": 156}}	Frame_9_0b52018cfd	.png	image/png	29.85	/uploads/Frame_9_0b52018cfd.png	\N	local	\N	2022-06-20 12:48:32.582	2022-06-20 12:48:32.582	1	1
5	Frame 7.png	Frame 7.png	Frame 7.png	319	219	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_7_939053538b.png", "hash": "thumbnail_Frame_7_939053538b", "mime": "image/png", "name": "thumbnail_Frame 7.png", "path": null, "size": 82.1, "width": 227, "height": 156}}	Frame_7_939053538b	.png	image/png	40.84	/uploads/Frame_7_939053538b.png	\N	local	\N	2022-06-20 12:48:32.657	2022-06-20 12:48:32.657	1	1
6	Frame 8.png	Frame 8.png	Frame 8.png	319	219	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_8_e0c402fe74.png", "hash": "thumbnail_Frame_8_e0c402fe74", "mime": "image/png", "name": "thumbnail_Frame 8.png", "path": null, "size": 100.36, "width": 227, "height": 156}}	Frame_8_e0c402fe74	.png	image/png	54.59	/uploads/Frame_8_e0c402fe74.png	\N	local	\N	2022-06-20 12:48:32.87	2022-06-20 12:48:32.87	1	1
7	Frame 6.png	Frame 6.png	Frame 6.png	319	219	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_6_34fa34faba.png", "hash": "thumbnail_Frame_6_34fa34faba", "mime": "image/png", "name": "thumbnail_Frame 6.png", "path": null, "size": 110.61, "width": 227, "height": 156}}	Frame_6_34fa34faba	.png	image/png	63.58	/uploads/Frame_6_34fa34faba.png	\N	local	\N	2022-06-20 12:48:32.907	2022-06-20 12:48:32.907	1	1
8	840px-I3YLC1PFI 1.png	840px-I3YLC1PFI 1.png	840px-I3YLC1PFI 1.png	835	604	{"small": {"ext": ".png", "url": "/uploads/small_840px_I3_YLC_1_PFI_1_3f6619bffd.png", "hash": "small_840px_I3_YLC_1_PFI_1_3f6619bffd", "mime": "image/png", "name": "small_840px-I3YLC1PFI 1.png", "path": null, "size": 443.6, "width": 500, "height": 362}, "medium": {"ext": ".png", "url": "/uploads/medium_840px_I3_YLC_1_PFI_1_3f6619bffd.png", "hash": "medium_840px_I3_YLC_1_PFI_1_3f6619bffd", "mime": "image/png", "name": "medium_840px-I3YLC1PFI 1.png", "path": null, "size": 939.43, "width": 750, "height": 543}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_840px_I3_YLC_1_PFI_1_3f6619bffd.png", "hash": "thumbnail_840px_I3_YLC_1_PFI_1_3f6619bffd", "mime": "image/png", "name": "thumbnail_840px-I3YLC1PFI 1.png", "path": null, "size": 91.2, "width": 216, "height": 156}}	840px_I3_YLC_1_PFI_1_3f6619bffd	.png	image/png	187.63	/uploads/840px_I3_YLC_1_PFI_1_3f6619bffd.png	\N	local	\N	2022-06-20 12:57:34.381	2022-06-20 12:57:34.381	1	1
9	scale_1200 1.png	scale_1200 1.png	scale_1200 1.png	455	287	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_scale_1200_1_f036b6bf34.png", "hash": "thumbnail_scale_1200_1_f036b6bf34", "mime": "image/png", "name": "thumbnail_scale_1200 1.png", "path": null, "size": 73.02, "width": 245, "height": 155}}	scale_1200_1_f036b6bf34	.png	image/png	48.42	/uploads/scale_1200_1_f036b6bf34.png	\N	local	\N	2022-06-20 12:57:55.149	2022-06-20 12:57:55.149	1	1
10	2-4 1.png	2-4 1.png	2-4 1.png	455	287	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_2_4_1_db790c68d1.png", "hash": "thumbnail_2_4_1_db790c68d1", "mime": "image/png", "name": "thumbnail_2-4 1.png", "path": null, "size": 85.9, "width": 245, "height": 155}}	2_4_1_db790c68d1	.png	image/png	61.10	/uploads/2_4_1_db790c68d1.png	\N	local	\N	2022-06-20 12:57:55.375	2022-06-20 12:57:55.375	1	1
11	Slide 16_9 - 1.png	Slide 16_9 - 1.png	Slide 16_9 - 1.png	759	425	{"small": {"ext": ".png", "url": "/uploads/small_Slide_16_9_1_1c9a6a3e6b.png", "hash": "small_Slide_16_9_1_1c9a6a3e6b", "mime": "image/png", "name": "small_Slide 16_9 - 1.png", "path": null, "size": 251.97, "width": 500, "height": 280}, "medium": {"ext": ".png", "url": "/uploads/medium_Slide_16_9_1_1c9a6a3e6b.png", "hash": "medium_Slide_16_9_1_1c9a6a3e6b", "mime": "image/png", "name": "medium_Slide 16_9 - 1.png", "path": null, "size": 505.75, "width": 750, "height": 420}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Slide_16_9_1_1c9a6a3e6b.png", "hash": "thumbnail_Slide_16_9_1_1c9a6a3e6b", "mime": "image/png", "name": "thumbnail_Slide 16_9 - 1.png", "path": null, "size": 69.78, "width": 245, "height": 137}}	Slide_16_9_1_1c9a6a3e6b	.png	image/png	138.31	/uploads/Slide_16_9_1_1c9a6a3e6b.png	\N	local	\N	2022-06-20 13:09:21.143	2022-06-20 13:09:21.143	1	1
12	Frame 3183468.png	Frame 3183468.png	Frame 3183468.png	620	425	{"small": {"ext": ".png", "url": "/uploads/small_Frame_3183468_1c25e9a07e.png", "hash": "small_Frame_3183468_1c25e9a07e", "mime": "image/png", "name": "small_Frame 3183468.png", "path": null, "size": 381.46, "width": 500, "height": 343}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_3183468_1c25e9a07e.png", "hash": "thumbnail_Frame_3183468_1c25e9a07e", "mime": "image/png", "name": "thumbnail_Frame 3183468.png", "path": null, "size": 89.76, "width": 228, "height": 156}}	Frame_3183468_1c25e9a07e	.png	image/png	145.99	/uploads/Frame_3183468_1c25e9a07e.png	\N	local	\N	2022-06-20 13:09:21.182	2022-06-20 13:09:21.182	1	1
18	Vector.svg	Vector.svg	Vector.svg	\N	\N	\N	Vector_d67c2539a1	.svg	image/svg+xml	4.23	/uploads/Vector_d67c2539a1.svg	\N	local	\N	2022-06-20 14:57:57.733	2022-06-20 14:57:57.733	1	1
19	camera.jpg	camera.jpg	camera.jpg	2480	3506	{"large": {"ext": ".jpg", "url": "/uploads/large_camera_f114541302.jpg", "hash": "large_camera_f114541302", "mime": "image/jpeg", "name": "large_camera.jpg", "path": null, "size": 169.73, "width": 707, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_camera_f114541302.jpg", "hash": "small_camera_f114541302", "mime": "image/jpeg", "name": "small_camera.jpg", "path": null, "size": 46.81, "width": 354, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_camera_f114541302.jpg", "hash": "medium_camera_f114541302", "mime": "image/jpeg", "name": "medium_camera.jpg", "path": null, "size": 102.7, "width": 531, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_camera_f114541302.jpg", "hash": "thumbnail_camera_f114541302", "mime": "image/jpeg", "name": "thumbnail_camera.jpg", "path": null, "size": 5.12, "width": 110, "height": 156}}	camera_f114541302	.jpg	image/jpeg	1024.68	/uploads/camera_f114541302.jpg	\N	local	\N	2022-06-21 13:00:13.07	2022-06-21 13:00:13.07	1	1
20	transport.jpg	transport.jpg	transport.jpg	2480	3506	{"large": {"ext": ".jpg", "url": "/uploads/large_transport_751425bf57.jpg", "hash": "large_transport_751425bf57", "mime": "image/jpeg", "name": "large_transport.jpg", "path": null, "size": 163.74, "width": 707, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_transport_751425bf57.jpg", "hash": "small_transport_751425bf57", "mime": "image/jpeg", "name": "small_transport.jpg", "path": null, "size": 44.62, "width": 354, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_transport_751425bf57.jpg", "hash": "medium_transport_751425bf57", "mime": "image/jpeg", "name": "medium_transport.jpg", "path": null, "size": 98.33, "width": 531, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_transport_751425bf57.jpg", "hash": "thumbnail_transport_751425bf57", "mime": "image/jpeg", "name": "thumbnail_transport.jpg", "path": null, "size": 4.73, "width": 110, "height": 156}}	transport_751425bf57	.jpg	image/jpeg	1103.70	/uploads/transport_751425bf57.jpg	\N	local	\N	2022-06-21 13:00:13.124	2022-06-21 13:00:13.124	1	1
21	yangyn.jpg	yangyn.jpg	yangyn.jpg	2480	3506	{"large": {"ext": ".jpg", "url": "/uploads/large_yangyn_e4ef67782f.jpg", "hash": "large_yangyn_e4ef67782f", "mime": "image/jpeg", "name": "large_yangyn.jpg", "path": null, "size": 175.95, "width": 707, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_yangyn_e4ef67782f.jpg", "hash": "small_yangyn_e4ef67782f", "mime": "image/jpeg", "name": "small_yangyn.jpg", "path": null, "size": 49.2, "width": 354, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_yangyn_e4ef67782f.jpg", "hash": "medium_yangyn_e4ef67782f", "mime": "image/jpeg", "name": "medium_yangyn.jpg", "path": null, "size": 104.43, "width": 531, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_yangyn_e4ef67782f.jpg", "hash": "thumbnail_yangyn_e4ef67782f", "mime": "image/jpeg", "name": "thumbnail_yangyn.jpg", "path": null, "size": 5.11, "width": 110, "height": 156}}	yangyn_e4ef67782f	.jpg	image/jpeg	1140.13	/uploads/yangyn_e4ef67782f.jpg	\N	local	\N	2022-06-21 13:00:13.167	2022-06-21 13:00:13.167	1	1
22	Gurlusyk.jpg	Gurlusyk.jpg	Gurlusyk.jpg	2480	3506	{"large": {"ext": ".jpg", "url": "/uploads/large_Gurlusyk_b6d0b93fb2.jpg", "hash": "large_Gurlusyk_b6d0b93fb2", "mime": "image/jpeg", "name": "large_Gurlusyk.jpg", "path": null, "size": 173.85, "width": 707, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_Gurlusyk_b6d0b93fb2.jpg", "hash": "small_Gurlusyk_b6d0b93fb2", "mime": "image/jpeg", "name": "small_Gurlusyk.jpg", "path": null, "size": 46.35, "width": 354, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_Gurlusyk_b6d0b93fb2.jpg", "hash": "medium_Gurlusyk_b6d0b93fb2", "mime": "image/jpeg", "name": "medium_Gurlusyk.jpg", "path": null, "size": 101.37, "width": 531, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_Gurlusyk_b6d0b93fb2.jpg", "hash": "thumbnail_Gurlusyk_b6d0b93fb2", "mime": "image/jpeg", "name": "thumbnail_Gurlusyk.jpg", "path": null, "size": 5.1, "width": 110, "height": 156}}	Gurlusyk_b6d0b93fb2	.jpg	image/jpeg	1159.54	/uploads/Gurlusyk_b6d0b93fb2.jpg	\N	local	\N	2022-06-21 13:00:13.313	2022-06-21 13:00:13.313	1	1
23	Senagat.jpg	Senagat.jpg	Senagat.jpg	2480	3506	{"large": {"ext": ".jpg", "url": "/uploads/large_Senagat_64aea1247c.jpg", "hash": "large_Senagat_64aea1247c", "mime": "image/jpeg", "name": "large_Senagat.jpg", "path": null, "size": 196.58, "width": 707, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_Senagat_64aea1247c.jpg", "hash": "small_Senagat_64aea1247c", "mime": "image/jpeg", "name": "small_Senagat.jpg", "path": null, "size": 50.29, "width": 354, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_Senagat_64aea1247c.jpg", "hash": "medium_Senagat_64aea1247c", "mime": "image/jpeg", "name": "medium_Senagat.jpg", "path": null, "size": 112.35, "width": 531, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_Senagat_64aea1247c.jpg", "hash": "thumbnail_Senagat_64aea1247c", "mime": "image/jpeg", "name": "thumbnail_Senagat.jpg", "path": null, "size": 4.85, "width": 110, "height": 156}}	Senagat_64aea1247c	.jpg	image/jpeg	1316.16	/uploads/Senagat_64aea1247c.jpg	\N	local	\N	2022-06-21 13:00:13.536	2022-06-21 13:00:13.536	1	1
24	Frame 15.png	Frame 15.png	Frame 15.png	316	238	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_15_341a037033.png", "hash": "thumbnail_Frame_15_341a037033", "mime": "image/png", "name": "thumbnail_Frame 15.png", "path": null, "size": 63.88, "width": 207, "height": 156}}	Frame_15_341a037033	.png	image/png	32.22	/uploads/Frame_15_341a037033.png	\N	local	\N	2022-06-21 13:01:42.105	2022-06-21 13:01:42.105	1	1
25	Frame 14.png	Frame 14.png	Frame 14.png	316	406	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_14_90d148db37.png", "hash": "thumbnail_Frame_14_90d148db37", "mime": "image/png", "name": "thumbnail_Frame 14.png", "path": null, "size": 36.19, "width": 121, "height": 156}}	Frame_14_90d148db37	.png	image/png	47.85	/uploads/Frame_14_90d148db37.png	\N	local	\N	2022-06-21 13:02:11.48	2022-06-21 13:02:11.48	1	1
26	Frame 1.png	Frame 1.png	Frame 1.png	316	347	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_1_ce7bf21d17.png", "hash": "thumbnail_Frame_1_ce7bf21d17", "mime": "image/png", "name": "thumbnail_Frame 1.png", "path": null, "size": 55.2, "width": 142, "height": 156}}	Frame_1_ce7bf21d17	.png	image/png	61.14	/uploads/Frame_1_ce7bf21d17.png	\N	local	\N	2022-06-21 13:02:28.738	2022-06-21 13:02:28.738	1	1
27	Frame 16.png	Frame 16.png	Frame 16.png	316	347	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_16_81e22a8efd.png", "hash": "thumbnail_Frame_16_81e22a8efd", "mime": "image/png", "name": "thumbnail_Frame 16.png", "path": null, "size": 49.25, "width": 142, "height": 156}}	Frame_16_81e22a8efd	.png	image/png	45.50	/uploads/Frame_16_81e22a8efd.png	\N	local	\N	2022-06-21 13:03:59.552	2022-06-21 13:03:59.552	1	1
28	Frame 14 (1).png	Frame 14 (1).png	Frame 14 (1).png	316	406	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_14_1_45da6eefe0.png", "hash": "thumbnail_Frame_14_1_45da6eefe0", "mime": "image/png", "name": "thumbnail_Frame 14 (1).png", "path": null, "size": 29.55, "width": 121, "height": 156}}	Frame_14_1_45da6eefe0	.png	image/png	41.54	/uploads/Frame_14_1_45da6eefe0.png	\N	local	\N	2022-06-21 13:04:33.656	2022-06-21 13:04:33.656	1	1
29	Frame 14 (2).png	Frame 14 (2).png	Frame 14 (2).png	316	406	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_14_2_f1c7e0263b.png", "hash": "thumbnail_Frame_14_2_f1c7e0263b", "mime": "image/png", "name": "thumbnail_Frame 14 (2).png", "path": null, "size": 31.57, "width": 121, "height": 156}}	Frame_14_2_f1c7e0263b	.png	image/png	37.03	/uploads/Frame_14_2_f1c7e0263b.png	\N	local	\N	2022-06-21 13:05:40.515	2022-06-21 13:05:40.515	1	1
30	Frame 15 (3).png	Frame 15 (3).png	Frame 15 (3).png	316	347	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_15_3_16286e23a9.png", "hash": "thumbnail_Frame_15_3_16286e23a9", "mime": "image/png", "name": "thumbnail_Frame 15 (3).png", "path": null, "size": 29.19, "width": 142, "height": 156}}	Frame_15_3_16286e23a9	.png	image/png	29.40	/uploads/Frame_15_3_16286e23a9.png	\N	local	\N	2022-06-21 13:05:59.604	2022-06-21 13:05:59.604	1	1
33	Frame 16 (1).png	Frame 16 (1).png	Frame 16 (1).png	316	347	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_16_1_e56dc985bf.png", "hash": "thumbnail_Frame_16_1_e56dc985bf", "mime": "image/png", "name": "thumbnail_Frame 16 (1).png", "path": null, "size": 25.65, "width": 142, "height": 156}}	Frame_16_1_e56dc985bf	.png	image/png	26.59	/uploads/Frame_16_1_e56dc985bf.png	\N	local	\N	2022-06-21 13:07:02.421	2022-06-21 13:07:02.421	1	1
31	Frame 15 (4).png	Frame 15 (4).png	Frame 15 (4).png	316	238	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_15_4_4caa055d18.png", "hash": "thumbnail_Frame_15_4_4caa055d18", "mime": "image/png", "name": "thumbnail_Frame 15 (4).png", "path": null, "size": 92.73, "width": 207, "height": 156}}	Frame_15_4_4caa055d18	.png	image/png	57.90	/uploads/Frame_15_4_4caa055d18.png	\N	local	\N	2022-06-21 13:06:38.563	2022-06-21 13:06:38.563	1	1
32	Frame 14 (3).png	Frame 14 (3).png	Frame 14 (3).png	316	406	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_14_3_74f4a0ca8d.png", "hash": "thumbnail_Frame_14_3_74f4a0ca8d", "mime": "image/png", "name": "thumbnail_Frame 14 (3).png", "path": null, "size": 43.5, "width": 121, "height": 156}}	Frame_14_3_74f4a0ca8d	.png	image/png	63.39	/uploads/Frame_14_3_74f4a0ca8d.png	\N	local	\N	2022-06-21 13:06:48.573	2022-06-21 13:06:48.573	1	1
34	Frame 15 (5).png	Frame 15 (5).png	Frame 15 (5).png	316	238	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_15_5_e697fb508b.png", "hash": "thumbnail_Frame_15_5_e697fb508b", "mime": "image/png", "name": "thumbnail_Frame 15 (5).png", "path": null, "size": 92.74, "width": 207, "height": 156}}	Frame_15_5_e697fb508b	.png	image/png	57.95	/uploads/Frame_15_5_e697fb508b.png	\N	local	\N	2022-06-21 13:07:29.751	2022-06-21 13:07:29.751	1	1
35	Frame 14 (4).png	Frame 14 (4).png	Frame 14 (4).png	316	406	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_14_4_e69cab9bda.png", "hash": "thumbnail_Frame_14_4_e69cab9bda", "mime": "image/png", "name": "thumbnail_Frame 14 (4).png", "path": null, "size": 39.8, "width": 121, "height": 156}}	Frame_14_4_e69cab9bda	.png	image/png	51.38	/uploads/Frame_14_4_e69cab9bda.png	\N	local	\N	2022-06-21 13:07:38.319	2022-06-21 13:07:38.319	1	1
36	Frame 16 (2).png	Frame 16 (2).png	Frame 16 (2).png	316	347	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_16_2_64fccd0621.png", "hash": "thumbnail_Frame_16_2_64fccd0621", "mime": "image/png", "name": "thumbnail_Frame 16 (2).png", "path": null, "size": 58.14, "width": 142, "height": 156}}	Frame_16_2_64fccd0621	.png	image/png	73.78	/uploads/Frame_16_2_64fccd0621.png	\N	local	\N	2022-06-21 13:07:47.802	2022-06-21 13:07:47.802	1	1
\.


--
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: -
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
7	1	api::service-list.service-list	img	1
6	2	api::service-list.service-list	img	1
5	3	api::service-list.service-list	img	1
4	4	api::service-list.service-list	img	1
30	3	services-page-com.component-services	img3	1
31	4	services-page-com.component-services	img1	1
8	1	api::product-list.product-list	img	1
9	2	api::product-list.product-list	img	1
10	3	api::product-list.product-list	img	1
32	4	services-page-com.component-services	img2	1
33	4	services-page-com.component-services	img3	1
8	4	api::product-list.product-list	img	1
9	5	api::product-list.product-list	img	1
10	6	api::product-list.product-list	img	1
34	5	services-page-com.component-services	img1	1
35	5	services-page-com.component-services	img2	1
36	5	services-page-com.component-services	img3	1
3	1	navbar-header.navbar	logo	1
11	1	about.about	headImg	1
12	1	about.about	descImg	1
3	1	certificate.certificate	logo	1
1	1	api::main.main	headImg	1
3	2	navbar-header.navbar	logo	1
3	1	footer.footer-main	logo	1
18	1	footer.footer-dev	logo_dev	1
23	1	api::certificate-list.certificate-list	img	1
22	2	api::certificate-list.certificate-list	img	1
21	3	api::certificate-list.certificate-list	img	1
20	4	api::certificate-list.certificate-list	img	1
19	5	api::certificate-list.certificate-list	img	1
\.


--
-- Data for Name: fire_safety_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.fire_safety_services (id, created_at, updated_at, created_by_id, updated_by_id, locale) FROM stdin;
1	2022-06-21 13:06:02.326	2022-06-21 13:06:02.326	1	1	ru
\.


--
-- Data for Name: fire_safety_services_components; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.fire_safety_services_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	3	services-page-com.component-services	fire_safety	1
\.


--
-- Data for Name: fire_safety_services_localizations_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.fire_safety_services_localizations_links (fire_safety_service_id, inv_fire_safety_service_id) FROM stdin;
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2022-06-20 11:57:02.725	2022-06-20 11:57:02.725	\N	\N
2	Turkmen (tk)	tk	2022-06-20 12:04:02.859	2022-06-20 12:04:02.859	1	1
3	Russian (ru)	ru	2022-06-20 12:04:12.75	2022-06-20 12:04:21.923	1	1
\.


--
-- Data for Name: layouts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.layouts (id, created_at, updated_at, created_by_id, updated_by_id, locale) FROM stdin;
1	2022-06-20 14:45:20.084	2022-06-21 12:39:57.71	1	1	ru
\.


--
-- Data for Name: layouts_components; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.layouts_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
10	1	2	navbar-header.navbar	navbar	1
11	1	3	contacts.address	address	1
12	1	3	contacts.phone-number	number	1
13	1	1	footer.footer-main	footer	1
14	1	1	footer.footer-dev	footer_dev	1
\.


--
-- Data for Name: layouts_localizations_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.layouts_localizations_links (layout_id, inv_layout_id) FROM stdin;
\.


--
-- Data for Name: locals; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.locals (id, name, created_at, updated_at, created_by_id, updated_by_id, locale) FROM stdin;
1	Русский	2022-06-20 12:15:45.747	2022-06-20 12:15:45.747	1	1	ru
2	Английский	2022-06-20 12:17:34.804	2022-06-20 12:17:34.804	1	1	ru
3	Туркменский	2022-06-20 12:18:03.183	2022-06-20 12:18:03.183	1	1	ru
\.


--
-- Data for Name: locals_localizations_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.locals_localizations_links (local_id, inv_local_id) FROM stdin;
\.


--
-- Data for Name: mains; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mains (id, created_at, updated_at, created_by_id, updated_by_id, locale) FROM stdin;
1	2022-06-20 12:06:20.758	2022-06-21 12:39:07.786	1	1	ru
\.


--
-- Data for Name: mains_components; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mains_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
65	1	1	navbar-header.navbar	navbar	1
66	1	1	contacts.phone-number	phone	1
67	1	1	contacts.address	address	1
73	1	1	services.services	services	1
74	1	1	products.product	product	1
75	1	1	about.about	about	1
76	1	1	certificate.certificate	certificate	1
77	1	1	form.form-main	form	1
\.


--
-- Data for Name: mains_localizations_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mains_localizations_links (main_id, inv_main_id) FROM stdin;
\.


--
-- Data for Name: navigations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.navigations (id, name, created_at, updated_at, created_by_id, updated_by_id, locale) FROM stdin;
1	Услуги	2022-06-20 12:18:29.326	2022-06-20 12:18:29.326	1	1	ru
2	О нас	2022-06-20 12:18:59.155	2022-06-20 12:18:59.155	1	1	ru
3	Сертификат	2022-06-20 12:19:07.865	2022-06-20 12:19:07.865	1	1	ru
4	Контакты	2022-06-20 12:19:17.859	2022-06-20 12:19:17.859	1	1	ru
\.


--
-- Data for Name: navigations_localizations_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.navigations_localizations_links (navigation_id, inv_navigation_id) FROM stdin;
\.


--
-- Data for Name: network_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.network_services (id, created_at, updated_at, created_by_id, updated_by_id, locale) FROM stdin;
1	2022-06-21 13:07:50.045	2022-06-21 13:07:50.045	1	1	ru
\.


--
-- Data for Name: network_services_components; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.network_services_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	5	services-page-com.component-services	network	1
\.


--
-- Data for Name: network_services_localizations_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.network_services_localizations_links (network_service_id, inv_network_service_id) FROM stdin;
\.


--
-- Data for Name: product_lists; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.product_lists (id, description, created_at, updated_at, created_by_id, updated_by_id, locale) FROM stdin;
4	4 MP Fixed Color Maker Turret Camera. TC-C34XP	2022-06-20 13:03:58.413	2022-06-20 13:03:58.413	1	1	ru
5	4 MP Fixed Color Maker Turret Camera. TC-C34XP	2022-06-20 13:04:08.478	2022-06-20 13:04:08.478	1	1	ru
6	4 MP Fixed Color Maker Turret Camera. TC-C34XP	2022-06-20 13:04:15.653	2022-06-20 13:04:15.653	1	1	ru
\.


--
-- Data for Name: product_lists_localizations_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.product_lists_localizations_links (product_list_id, inv_product_list_id) FROM stdin;
\.


--
-- Data for Name: sertificate_lists; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.sertificate_lists (id, created_at, updated_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: sertificate_lists_localizations_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.sertificate_lists_localizations_links (sertificate_list_id, inv_sertificate_list_id) FROM stdin;
\.


--
-- Data for Name: service_lists; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.service_lists (id, heading, description, created_at, updated_at, created_by_id, updated_by_id, locale) FROM stdin;
1	Строительство	Лорем ипсум долор сит амет, ин еос мелиус бонорум молестиае, еос ан деленити цонституам. Ад хомеро сцрипторем усу. Ет яуем солута вулпутате еам, вих ад пробатус партиендо ассуеверит.	2022-06-20 12:49:13.72	2022-06-20 12:49:13.72	1	1	ru
2	Строительство промышленных и гражданских объектов	Лорем ипсум долор сит амет, ин еос мелиус бонорум молестиае, еос ан деленити цонституам. Ад хомеро сцрипторем усу. Ет яуем солута вулпутате еам, вих ад пробатус партиендо...	2022-06-20 12:50:08.33	2022-06-20 12:50:08.33	1	1	ru
3	Дизайн	Лорем ипсум долор сит амет, ин еос мелиус бонорум молестиае, еос ан деленити цонституам. Ад хомеро сцрипторем усу. Ет яуем солута вулпутате еам, вих ад пробатус партиендо ассуеверит.	2022-06-20 12:50:49.435	2022-06-20 12:50:49.435	1	1	ru
4	Пожарная безопасность	Лорем ипсум долор сит амет, ин еос мелиус бонорум молестиае, еос ан деленити цонституам. Ад хомеро сцрипторем усу. Ет яуем солута вулпутате еам, вих ад пробатус партиендо ассуеверит.	2022-06-20 12:51:16.715	2022-06-20 12:51:16.715	1	1	ru
\.


--
-- Data for Name: service_lists_localizations_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.service_lists_localizations_links (service_list_id, inv_service_list_id) FROM stdin;
\.


--
-- Data for Name: sonstruction_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.sonstruction_services (id, created_at, updated_at, created_by_id, updated_by_id, locale) FROM stdin;
1	2022-06-21 13:02:32.753	2022-06-21 13:02:32.753	1	1	ru
\.


--
-- Data for Name: sonstruction_services_components; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.sonstruction_services_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	services-page-com.component-services	construction	1
\.


--
-- Data for Name: sonstruction_services_localizations_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.sonstruction_services_localizations_links (sonstruction_service_id, inv_sonstruction_service_id) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: -
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
26	plugin_content_manager_configuration_components::products.product	{"uid":"products.product","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"product_lists":{"edit":{"label":"product_lists","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"product_lists","searchable":false,"sortable":false}}},"layouts":{"list":["id","heading","description","product_lists"],"edit":[[{"name":"heading","size":6},{"name":"description","size":6}],[{"name":"product_lists","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
19	plugin_content_manager_configuration_content_types::api::navigation.navigation	{"uid":"api::navigation.navigation","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","createdAt","updatedAt"],"editRelations":[],"edit":[[{"name":"name","size":6}]]}}	object	\N	\N
20	plugin_content_manager_configuration_content_types::api::local.local	{"uid":"api::local.local","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","createdAt","updatedAt"],"editRelations":[],"edit":[[{"name":"name","size":6}]]}}	object	\N	\N
27	plugin_content_manager_configuration_content_types::api::product-list.product-list	{"uid":"api::product-list.product-list","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"img":{"edit":{"label":"img","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"img","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","img","description","createdAt"],"editRelations":[],"edit":[[{"name":"img","size":6},{"name":"description","size":6}]]}}	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"api::certificate-list.certificate-list":{"kind":"collectionType","collectionName":"certificate_lists","info":{"singularName":"certificate-list","pluralName":"certificate-lists","displayName":"certificate_list"},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"img":{"allowedTypes":["images"],"type":"media","multiple":false,"pluginOptions":{"i18n":{"localized":false}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::certificate-list.certificate-list"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"certificate_lists","info":{"singularName":"certificate-list","pluralName":"certificate-lists","displayName":"certificate_list"},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"img":{"allowedTypes":["images"],"type":"media","multiple":false,"pluginOptions":{"i18n":{"localized":false}}}},"kind":"collectionType"},"modelType":"contentType","modelName":"certificate-list","connection":"default","uid":"api::certificate-list.certificate-list","apiName":"certificate-list","globalId":"CertificateList","actions":{},"lifecycles":{}},"api::design-service.design-service":{"kind":"singleType","collectionName":"design_services","info":{"singularName":"design-service","pluralName":"design-services","displayName":"design_service"},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"design":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"services-page-com.component-services"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::design-service.design-service"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"design_services","info":{"singularName":"design-service","pluralName":"design-services","displayName":"design_service"},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"design":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"services-page-com.component-services"}},"kind":"singleType"},"modelType":"contentType","modelName":"design-service","connection":"default","uid":"api::design-service.design-service","apiName":"design-service","globalId":"DesignService","actions":{},"lifecycles":{}},"api::elevator-dispatching-service.elevator-dispatching-service":{"kind":"singleType","collectionName":"elevator_dispatching_services","info":{"singularName":"elevator-dispatching-service","pluralName":"elevator-dispatching-services","displayName":"elevator_dispatching_service"},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"elevator_dispatching":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"services-page-com.component-services"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::elevator-dispatching-service.elevator-dispatching-service"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"elevator_dispatching_services","info":{"singularName":"elevator-dispatching-service","pluralName":"elevator-dispatching-services","displayName":"elevator_dispatching_service"},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"elevator_dispatching":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"services-page-com.component-services"}},"kind":"singleType"},"modelType":"contentType","modelName":"elevator-dispatching-service","connection":"default","uid":"api::elevator-dispatching-service.elevator-dispatching-service","apiName":"elevator-dispatching-service","globalId":"ElevatorDispatchingService","actions":{},"lifecycles":{}},"api::fire-safety-service.fire-safety-service":{"kind":"singleType","collectionName":"fire_safety_services","info":{"singularName":"fire-safety-service","pluralName":"fire-safety-services","displayName":"fire_safety_service"},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"fire_safety":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"services-page-com.component-services"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::fire-safety-service.fire-safety-service"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"fire_safety_services","info":{"singularName":"fire-safety-service","pluralName":"fire-safety-services","displayName":"fire_safety_service"},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"fire_safety":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"services-page-com.component-services"}},"kind":"singleType"},"modelType":"contentType","modelName":"fire-safety-service","connection":"default","uid":"api::fire-safety-service.fire-safety-service","apiName":"fire-safety-service","globalId":"FireSafetyService","actions":{},"lifecycles":{}},"api::layout.layout":{"kind":"singleType","collectionName":"layouts","info":{"singularName":"layout","pluralName":"layouts","displayName":"layout","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"navbar":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"navbar-header.navbar"},"address":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"contacts.address"},"number":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"contacts.phone-number"},"footer":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"footer.footer-main"},"footer_dev":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"footer.footer-dev"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::layout.layout"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"layouts","info":{"singularName":"layout","pluralName":"layouts","displayName":"layout","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"navbar":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"navbar-header.navbar"},"address":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"contacts.address"},"number":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"contacts.phone-number"},"footer":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"footer.footer-main"},"footer_dev":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"footer.footer-dev"}},"kind":"singleType"},"modelType":"contentType","modelName":"layout","connection":"default","uid":"api::layout.layout","apiName":"layout","globalId":"Layout","actions":{},"lifecycles":{}},"api::local.local":{"kind":"collectionType","collectionName":"locals","info":{"singularName":"local","pluralName":"locals","displayName":"local","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"name":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::local.local"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"locals","info":{"singularName":"local","pluralName":"locals","displayName":"local","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"name":{"type":"string","pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelType":"contentType","modelName":"local","connection":"default","uid":"api::local.local","apiName":"local","globalId":"Local","actions":{},"lifecycles":{}},"api::main.main":{"kind":"singleType","collectionName":"mains","info":{"singularName":"main","pluralName":"mains","displayName":"main","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"headImg":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":false}}},"services":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"services.services"},"product":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"products.product"},"about":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"about.about"},"certificate":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"certificate.certificate"},"form":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"form.form-main"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::main.main"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"mains","info":{"singularName":"main","pluralName":"mains","displayName":"main","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"headImg":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":false}}},"services":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"services.services"},"product":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"products.product"},"about":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"about.about"},"certificate":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"certificate.certificate"},"form":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"form.form-main"}},"kind":"singleType"},"modelType":"contentType","modelName":"main","connection":"default","uid":"api::main.main","apiName":"main","globalId":"Main","actions":{},"lifecycles":{}},"api::navigation.navigation":{"kind":"collectionType","collectionName":"navigations","info":{"singularName":"navigation","pluralName":"navigations","displayName":"navigation","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"name":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::navigation.navigation"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"navigations","info":{"singularName":"navigation","pluralName":"navigations","displayName":"navigation","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"name":{"type":"string","pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelType":"contentType","modelName":"navigation","connection":"default","uid":"api::navigation.navigation","apiName":"navigation","globalId":"Navigation","actions":{},"lifecycles":{}},"api::network-service.network-service":{"kind":"singleType","collectionName":"network_services","info":{"singularName":"network-service","pluralName":"network-services","displayName":"network_service"},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"network":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"services-page-com.component-services"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::network-service.network-service"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"network_services","info":{"singularName":"network-service","pluralName":"network-services","displayName":"network_service"},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"network":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"services-page-com.component-services"}},"kind":"singleType"},"modelType":"contentType","modelName":"network-service","connection":"default","uid":"api::network-service.network-service","apiName":"network-service","globalId":"NetworkService","actions":{},"lifecycles":{}},"api::product-list.product-list":{"kind":"collectionType","collectionName":"product_lists","info":{"singularName":"product-list","pluralName":"product-lists","displayName":"product_list","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"img":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":false}}},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::product-list.product-list"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"product_lists","info":{"singularName":"product-list","pluralName":"product-lists","displayName":"product_list","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"img":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":false}}},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"}},"kind":"collectionType"},"modelType":"contentType","modelName":"product-list","connection":"default","uid":"api::product-list.product-list","apiName":"product-list","globalId":"ProductList","actions":{},"lifecycles":{}},"api::sertificate-list.sertificate-list":{"kind":"collectionType","collectionName":"sertificate_lists","info":{"singularName":"sertificate-list","pluralName":"sertificate-lists","displayName":"сertificate_list"},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"img":{"allowedTypes":["images"],"type":"media","multiple":false,"pluginOptions":{"i18n":{"localized":false}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::sertificate-list.sertificate-list"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"sertificate_lists","info":{"singularName":"sertificate-list","pluralName":"sertificate-lists","displayName":"сertificate_list"},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"img":{"allowedTypes":["images"],"type":"media","multiple":false,"pluginOptions":{"i18n":{"localized":false}}}},"kind":"collectionType"},"modelType":"contentType","modelName":"sertificate-list","connection":"default","uid":"api::sertificate-list.sertificate-list","apiName":"sertificate-list","globalId":"SertificateList","actions":{},"lifecycles":{}},"api::service-list.service-list":{"kind":"collectionType","collectionName":"service_lists","info":{"singularName":"service-list","pluralName":"service-lists","displayName":"service_list"},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"img":{"allowedTypes":["images"],"type":"media","multiple":false,"pluginOptions":{"i18n":{"localized":false}}},"heading":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::service-list.service-list"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"service_lists","info":{"singularName":"service-list","pluralName":"service-lists","displayName":"service_list"},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"img":{"allowedTypes":["images"],"type":"media","multiple":false,"pluginOptions":{"i18n":{"localized":false}}},"heading":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"}},"kind":"collectionType"},"modelType":"contentType","modelName":"service-list","connection":"default","uid":"api::service-list.service-list","apiName":"service-list","globalId":"ServiceList","actions":{},"lifecycles":{}},"api::sonstruction-service.sonstruction-service":{"kind":"singleType","collectionName":"sonstruction_services","info":{"singularName":"sonstruction-service","pluralName":"sonstruction-services","displayName":"сonstruction_service"},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"construction":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"services-page-com.component-services"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::sonstruction-service.sonstruction-service"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"sonstruction_services","info":{"singularName":"sonstruction-service","pluralName":"sonstruction-services","displayName":"сonstruction_service"},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"construction":{"type":"component","repeatable":false,"pluginOptions":{"i18n":{"localized":true}},"component":"services-page-com.component-services"}},"kind":"singleType"},"modelType":"contentType","modelName":"sonstruction-service","connection":"default","uid":"api::sonstruction-service.sonstruction-service","apiName":"sonstruction-service","globalId":"SonstructionService","actions":{},"lifecycles":{}},"api::under-nav.under-nav":{"kind":"collectionType","collectionName":"under_navs","info":{"singularName":"under-nav","pluralName":"under-navs","displayName":"under_nav"},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::under-nav.under-nav"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"under_navs","info":{"singularName":"under-nav","pluralName":"under-navs","displayName":"under_nav"},"options":{"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"under-nav","connection":"default","uid":"api::under-nav.under-nav","apiName":"under-nav","globalId":"UnderNav","actions":{},"lifecycles":{}}}	object	\N	\N
16	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object	\N	\N
21	plugin_content_manager_configuration_components::contacts.address	{"uid":"contacts.address","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"address","defaultSortBy":"address","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"address":{"edit":{"label":"address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"address","searchable":true,"sortable":true}}},"layouts":{"list":["id","address"],"edit":[[{"name":"address","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
22	plugin_content_manager_configuration_components::contacts.mail	{"uid":"contacts.mail","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"mail":{"edit":{"label":"mail","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mail","searchable":true,"sortable":true}}},"layouts":{"list":["id","mail"],"edit":[[{"name":"mail","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
23	plugin_content_manager_configuration_components::contacts.phone-number	{"uid":"contacts.phone-number","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"number","defaultSortBy":"number","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"number":{"edit":{"label":"number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"number","searchable":true,"sortable":true}}},"layouts":{"list":["id","number"],"edit":[[{"name":"number","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
25	plugin_content_manager_configuration_content_types::api::service-list.service-list	{"uid":"api::service-list.service-list","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"img":{"edit":{"label":"img","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"img","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","img","heading","description"],"editRelations":[],"edit":[[{"name":"img","size":6},{"name":"heading","size":6}],[{"name":"description","size":6}]]}}	object	\N	\N
24	plugin_content_manager_configuration_components::services.services	{"uid":"services.services","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"under_heading":{"edit":{"label":"under_heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"under_heading","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"service_lists":{"edit":{"label":"service_lists","description":"","placeholder":"","visible":true,"editable":true,"mainField":"heading"},"list":{"label":"service_lists","searchable":false,"sortable":false}},"button":{"edit":{"label":"button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"button","searchable":true,"sortable":true}}},"layouts":{"list":["id","heading","under_heading","description"],"edit":[[{"name":"heading","size":6},{"name":"under_heading","size":6}],[{"name":"description","size":6},{"name":"service_lists","size":6}],[{"name":"button","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
35	plugin_content_manager_configuration_components::footer.footer-main	{"uid":"footer.footer-main","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title_mail","defaultSortBy":"title_mail","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"logo":{"edit":{"label":"logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logo","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"title_mail":{"edit":{"label":"title_mail","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title_mail","searchable":true,"sortable":true}},"mail":{"edit":{"label":"mail","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mail","searchable":true,"sortable":true}}},"layouts":{"list":["id","logo","description","title_mail"],"edit":[[{"name":"logo","size":6},{"name":"description","size":6}],[{"name":"title_mail","size":6},{"name":"mail","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
29	plugin_content_manager_configuration_components::certificate.certificate	{"uid":"certificate.certificate","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"logo":{"edit":{"label":"logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logo","searchable":false,"sortable":false}},"under_heading":{"edit":{"label":"under_heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"under_heading","searchable":true,"sortable":true}},"certificate_lists":{"edit":{"label":"certificate_lists","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"certificate_lists","searchable":false,"sortable":false}}},"layouts":{"list":["id","logo","under_heading","certificate_lists"],"edit":[[{"name":"logo","size":6},{"name":"under_heading","size":6}],[{"name":"certificate_lists","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
28	plugin_content_manager_configuration_components::about.about	{"uid":"about.about","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"headImg":{"edit":{"label":"headImg","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"headImg","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"under_heading":{"edit":{"label":"under_heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"under_heading","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"descImg":{"edit":{"label":"descImg","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"descImg","searchable":false,"sortable":false}}},"layouts":{"list":["id","headImg","heading","under_heading"],"edit":[[{"name":"headImg","size":6},{"name":"heading","size":6}],[{"name":"under_heading","size":6},{"name":"description","size":6}],[{"name":"descImg","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
30	plugin_content_manager_configuration_content_types::api::certificate-list.certificate-list	{"uid":"api::certificate-list.certificate-list","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"img":{"edit":{"label":"img","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"img","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","img","createdAt","updatedAt"],"editRelations":[],"edit":[[{"name":"img","size":6}]]}}	object	\N	\N
31	plugin_content_manager_configuration_content_types::api::under-nav.under-nav	{"uid":"api::under-nav.under-nav","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","createdAt","updatedAt"],"editRelations":[],"edit":[[{"name":"name","size":6}]]}}	object	\N	\N
18	plugin_content_manager_configuration_components::navbar-header.navbar	{"uid":"navbar-header.navbar","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"logo":{"edit":{"label":"logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logo","searchable":false,"sortable":false}},"locals":{"edit":{"label":"locals","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"locals","searchable":false,"sortable":false}},"navigations":{"edit":{"label":"navigations","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"navigations","searchable":false,"sortable":false}},"under_navs":{"edit":{"label":"under_navs","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"under_navs","searchable":false,"sortable":false}}},"layouts":{"list":["id","logo","locals","navigations"],"edit":[[{"name":"logo","size":6},{"name":"locals","size":6}],[{"name":"navigations","size":6},{"name":"under_navs","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
32	plugin_content_manager_configuration_content_types::api::sertificate-list.sertificate-list	{"uid":"api::sertificate-list.sertificate-list","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"img":{"edit":{"label":"img","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"img","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","img","createdAt","updatedAt"],"editRelations":[],"edit":[[{"name":"img","size":6}]]}}	object	\N	\N
33	plugin_content_manager_configuration_components::form.form-main	{"uid":"form.form-main","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"message":{"edit":{"label":"message","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"message","searchable":true,"sortable":true}},"mail":{"edit":{"label":"mail","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mail","searchable":true,"sortable":true}},"form_address":{"edit":{"label":"form_address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"form_address","searchable":false,"sortable":false}},"form_mail":{"edit":{"label":"form_mail","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"form_mail","searchable":false,"sortable":false}},"form_number":{"edit":{"label":"form_number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"form_number","searchable":false,"sortable":false}},"button":{"edit":{"label":"button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"button","searchable":true,"sortable":true}}},"layouts":{"list":["id","heading","name","message"],"edit":[[{"name":"heading","size":6},{"name":"name","size":6}],[{"name":"message","size":6},{"name":"mail","size":6}],[{"name":"form_address","size":12}],[{"name":"form_mail","size":12}],[{"name":"form_number","size":12}],[{"name":"button","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
17	plugin_content_manager_configuration_content_types::api::main.main	{"uid":"api::main.main","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"headImg":{"edit":{"label":"headImg","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"headImg","searchable":false,"sortable":false}},"services":{"edit":{"label":"services","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"services","searchable":false,"sortable":false}},"product":{"edit":{"label":"product","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"product","searchable":false,"sortable":false}},"about":{"edit":{"label":"about","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"about","searchable":false,"sortable":false}},"certificate":{"edit":{"label":"certificate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"certificate","searchable":false,"sortable":false}},"form":{"edit":{"label":"form","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"form","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","headImg","createdAt","updatedAt"],"edit":[[{"name":"headImg","size":6}],[{"name":"services","size":12}],[{"name":"product","size":12}],[{"name":"about","size":12}],[{"name":"certificate","size":12}],[{"name":"form","size":12}]],"editRelations":[]}}	object	\N	\N
36	plugin_content_manager_configuration_components::footer.footer-dev	{"uid":"footer.footer-dev","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"permission","defaultSortBy":"permission","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"permission":{"edit":{"label":"permission","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"permission","searchable":true,"sortable":true}},"logo_dev":{"edit":{"label":"logo_dev","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logo_dev","searchable":false,"sortable":false}}},"layouts":{"list":["id","permission","logo_dev"],"edit":[[{"name":"permission","size":6},{"name":"logo_dev","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
37	plugin_documentation_config	{"restrictedAccess":false}	object	\N	\N
34	plugin_content_manager_configuration_content_types::api::layout.layout	{"uid":"api::layout.layout","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"navbar":{"edit":{"label":"navbar","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"navbar","searchable":false,"sortable":false}},"address":{"edit":{"label":"address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"address","searchable":false,"sortable":false}},"number":{"edit":{"label":"number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"number","searchable":false,"sortable":false}},"footer":{"edit":{"label":"footer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"footer","searchable":false,"sortable":false}},"footer_dev":{"edit":{"label":"footer_dev","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"footer_dev","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","navbar","createdAt","updatedAt"],"edit":[[{"name":"navbar","size":12}],[{"name":"address","size":12}],[{"name":"number","size":12}],[{"name":"footer_dev","size":12}],[{"name":"footer","size":12}]],"editRelations":[]}}	object	\N	\N
38	plugin_content_manager_configuration_components::services-page-com.component-services	{"uid":"services-page-com.component-services","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"under_description":{"edit":{"label":"under_description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"under_description","searchable":true,"sortable":true}},"img1":{"edit":{"label":"img1","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"img1","searchable":false,"sortable":false}},"img2":{"edit":{"label":"img2","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"img2","searchable":false,"sortable":false}},"img3":{"edit":{"label":"img3","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"img3","searchable":false,"sortable":false}}},"layouts":{"list":["id","heading","description","under_description"],"edit":[[{"name":"heading","size":6},{"name":"description","size":6}],[{"name":"under_description","size":6},{"name":"img1","size":6}],[{"name":"img2","size":6},{"name":"img3","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
39	plugin_content_manager_configuration_content_types::api::sonstruction-service.sonstruction-service	{"uid":"api::sonstruction-service.sonstruction-service","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"construction":{"edit":{"label":"construction","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"construction","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","construction","createdAt","updatedAt"],"editRelations":[],"edit":[[{"name":"construction","size":12}]]}}	object	\N	\N
40	plugin_content_manager_configuration_content_types::api::design-service.design-service	{"uid":"api::design-service.design-service","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"design":{"edit":{"label":"design","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"design","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","design","createdAt","updatedAt"],"editRelations":[],"edit":[[{"name":"design","size":12}]]}}	object	\N	\N
41	plugin_content_manager_configuration_content_types::api::fire-safety-service.fire-safety-service	{"uid":"api::fire-safety-service.fire-safety-service","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"fire_safety":{"edit":{"label":"fire_safety","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"fire_safety","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","fire_safety","createdAt","updatedAt"],"editRelations":[],"edit":[[{"name":"fire_safety","size":12}]]}}	object	\N	\N
42	plugin_content_manager_configuration_content_types::api::elevator-dispatching-service.elevator-dispatching-service	{"uid":"api::elevator-dispatching-service.elevator-dispatching-service","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"elevator_dispatching":{"edit":{"label":"elevator_dispatching","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"elevator_dispatching","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","elevator_dispatching","createdAt","updatedAt"],"editRelations":[],"edit":[[{"name":"elevator_dispatching","size":12}]]}}	object	\N	\N
43	plugin_content_manager_configuration_content_types::api::network-service.network-service	{"uid":"api::network-service.network-service","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"network":{"edit":{"label":"network","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"network","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","network","createdAt","updatedAt"],"editRelations":[],"edit":[[{"name":"network","size":12}]]}}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
40	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"certificate_lists","indexes":[{"name":"certificate_lists_created_by_id_fk","columns":["created_by_id"]},{"name":"certificate_lists_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"certificate_lists_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"certificate_lists_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"design_services","indexes":[{"name":"design_services_created_by_id_fk","columns":["created_by_id"]},{"name":"design_services_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"design_services_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"design_services_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"elevator_dispatching_services","indexes":[{"name":"elevator_dispatching_services_created_by_id_fk","columns":["created_by_id"]},{"name":"elevator_dispatching_services_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"elevator_dispatching_services_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"elevator_dispatching_services_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"fire_safety_services","indexes":[{"name":"fire_safety_services_created_by_id_fk","columns":["created_by_id"]},{"name":"fire_safety_services_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"fire_safety_services_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"fire_safety_services_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"layouts","indexes":[{"name":"layouts_created_by_id_fk","columns":["created_by_id"]},{"name":"layouts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"layouts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"layouts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"locals","indexes":[{"name":"locals_created_by_id_fk","columns":["created_by_id"]},{"name":"locals_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"locals_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"locals_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"mains","indexes":[{"name":"mains_created_by_id_fk","columns":["created_by_id"]},{"name":"mains_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"mains_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"mains_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"navigations","indexes":[{"name":"navigations_created_by_id_fk","columns":["created_by_id"]},{"name":"navigations_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"navigations_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"navigations_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"network_services","indexes":[{"name":"network_services_created_by_id_fk","columns":["created_by_id"]},{"name":"network_services_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"network_services_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"network_services_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"product_lists","indexes":[{"name":"product_lists_created_by_id_fk","columns":["created_by_id"]},{"name":"product_lists_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"product_lists_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"product_lists_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"sertificate_lists","indexes":[{"name":"sertificate_lists_created_by_id_fk","columns":["created_by_id"]},{"name":"sertificate_lists_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"sertificate_lists_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"sertificate_lists_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"service_lists","indexes":[{"name":"service_lists_created_by_id_fk","columns":["created_by_id"]},{"name":"service_lists_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"service_lists_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"service_lists_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"sonstruction_services","indexes":[{"name":"sonstruction_services_created_by_id_fk","columns":["created_by_id"]},{"name":"sonstruction_services_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"sonstruction_services_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"sonstruction_services_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"under_navs","indexes":[{"name":"under_navs_created_by_id_fk","columns":["created_by_id"]},{"name":"under_navs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"under_navs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"under_navs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_about_abouts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"under_heading","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_certificate_certificates","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"under_heading","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_contacts_addresses","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"address","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_contacts_mail","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"mail","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_contacts_phone_numbers","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_footer_footer_devs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_footer_footer_mains","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title_mail","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mail","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_form_form_mains","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"message","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mail","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_navbar_header_navbars","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_products_products","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_services_page_com_component_services","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"under_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_services_services","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"under_heading","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"certificate_lists_localizations_links","indexes":[{"name":"certificate_lists_localizations_links_fk","columns":["certificate_list_id"]},{"name":"certificate_lists_localizations_links_inv_fk","columns":["inv_certificate_list_id"]}],"foreignKeys":[{"name":"certificate_lists_localizations_links_fk","columns":["certificate_list_id"],"referencedColumns":["id"],"referencedTable":"certificate_lists","onDelete":"CASCADE"},{"name":"certificate_lists_localizations_links_inv_fk","columns":["inv_certificate_list_id"],"referencedColumns":["id"],"referencedTable":"certificate_lists","onDelete":"CASCADE"}],"columns":[{"name":"certificate_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_certificate_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"design_services_components","indexes":[{"name":"design_services_field_index","columns":["field"],"type":null},{"name":"design_services_component_type_index","columns":["component_type"],"type":null},{"name":"design_services_entity_fk","columns":["entity_id"]}],"foreignKeys":[{"name":"design_services_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"design_services","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":0,"notNullable":false,"unsigned":true}]},{"name":"design_services_localizations_links","indexes":[{"name":"design_services_localizations_links_fk","columns":["design_service_id"]},{"name":"design_services_localizations_links_inv_fk","columns":["inv_design_service_id"]}],"foreignKeys":[{"name":"design_services_localizations_links_fk","columns":["design_service_id"],"referencedColumns":["id"],"referencedTable":"design_services","onDelete":"CASCADE"},{"name":"design_services_localizations_links_inv_fk","columns":["inv_design_service_id"],"referencedColumns":["id"],"referencedTable":"design_services","onDelete":"CASCADE"}],"columns":[{"name":"design_service_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_design_service_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"elevator_dispatching_services_components","indexes":[{"name":"elevator_dispatching_services_field_index","columns":["field"],"type":null},{"name":"elevator_dispatching_services_component_type_index","columns":["component_type"],"type":null},{"name":"elevator_dispatching_services_entity_fk","columns":["entity_id"]}],"foreignKeys":[{"name":"elevator_dispatching_services_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"elevator_dispatching_services","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":0,"notNullable":false,"unsigned":true}]},{"name":"elevator_dispatching_services_localizations_links","indexes":[{"name":"elevator_dispatching_services_localizations_links_fk","columns":["elevator_dispatching_service_id"]},{"name":"elevator_dispatching_services_localizations_links_inv_fk","columns":["inv_elevator_dispatching_service_id"]}],"foreignKeys":[{"name":"elevator_dispatching_services_localizations_links_fk","columns":["elevator_dispatching_service_id"],"referencedColumns":["id"],"referencedTable":"elevator_dispatching_services","onDelete":"CASCADE"},{"name":"elevator_dispatching_services_localizations_links_inv_fk","columns":["inv_elevator_dispatching_service_id"],"referencedColumns":["id"],"referencedTable":"elevator_dispatching_services","onDelete":"CASCADE"}],"columns":[{"name":"elevator_dispatching_service_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_elevator_dispatching_service_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"fire_safety_services_components","indexes":[{"name":"fire_safety_services_field_index","columns":["field"],"type":null},{"name":"fire_safety_services_component_type_index","columns":["component_type"],"type":null},{"name":"fire_safety_services_entity_fk","columns":["entity_id"]}],"foreignKeys":[{"name":"fire_safety_services_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"fire_safety_services","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":0,"notNullable":false,"unsigned":true}]},{"name":"fire_safety_services_localizations_links","indexes":[{"name":"fire_safety_services_localizations_links_fk","columns":["fire_safety_service_id"]},{"name":"fire_safety_services_localizations_links_inv_fk","columns":["inv_fire_safety_service_id"]}],"foreignKeys":[{"name":"fire_safety_services_localizations_links_fk","columns":["fire_safety_service_id"],"referencedColumns":["id"],"referencedTable":"fire_safety_services","onDelete":"CASCADE"},{"name":"fire_safety_services_localizations_links_inv_fk","columns":["inv_fire_safety_service_id"],"referencedColumns":["id"],"referencedTable":"fire_safety_services","onDelete":"CASCADE"}],"columns":[{"name":"fire_safety_service_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_fire_safety_service_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"layouts_components","indexes":[{"name":"layouts_field_index","columns":["field"],"type":null},{"name":"layouts_component_type_index","columns":["component_type"],"type":null},{"name":"layouts_entity_fk","columns":["entity_id"]}],"foreignKeys":[{"name":"layouts_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"layouts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":0,"notNullable":false,"unsigned":true}]},{"name":"layouts_localizations_links","indexes":[{"name":"layouts_localizations_links_fk","columns":["layout_id"]},{"name":"layouts_localizations_links_inv_fk","columns":["inv_layout_id"]}],"foreignKeys":[{"name":"layouts_localizations_links_fk","columns":["layout_id"],"referencedColumns":["id"],"referencedTable":"layouts","onDelete":"CASCADE"},{"name":"layouts_localizations_links_inv_fk","columns":["inv_layout_id"],"referencedColumns":["id"],"referencedTable":"layouts","onDelete":"CASCADE"}],"columns":[{"name":"layout_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_layout_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"locals_localizations_links","indexes":[{"name":"locals_localizations_links_fk","columns":["local_id"]},{"name":"locals_localizations_links_inv_fk","columns":["inv_local_id"]}],"foreignKeys":[{"name":"locals_localizations_links_fk","columns":["local_id"],"referencedColumns":["id"],"referencedTable":"locals","onDelete":"CASCADE"},{"name":"locals_localizations_links_inv_fk","columns":["inv_local_id"],"referencedColumns":["id"],"referencedTable":"locals","onDelete":"CASCADE"}],"columns":[{"name":"local_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_local_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"mains_components","indexes":[{"name":"mains_field_index","columns":["field"],"type":null},{"name":"mains_component_type_index","columns":["component_type"],"type":null},{"name":"mains_entity_fk","columns":["entity_id"]}],"foreignKeys":[{"name":"mains_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"mains","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":0,"notNullable":false,"unsigned":true}]},{"name":"mains_localizations_links","indexes":[{"name":"mains_localizations_links_fk","columns":["main_id"]},{"name":"mains_localizations_links_inv_fk","columns":["inv_main_id"]}],"foreignKeys":[{"name":"mains_localizations_links_fk","columns":["main_id"],"referencedColumns":["id"],"referencedTable":"mains","onDelete":"CASCADE"},{"name":"mains_localizations_links_inv_fk","columns":["inv_main_id"],"referencedColumns":["id"],"referencedTable":"mains","onDelete":"CASCADE"}],"columns":[{"name":"main_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_main_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"navigations_localizations_links","indexes":[{"name":"navigations_localizations_links_fk","columns":["navigation_id"]},{"name":"navigations_localizations_links_inv_fk","columns":["inv_navigation_id"]}],"foreignKeys":[{"name":"navigations_localizations_links_fk","columns":["navigation_id"],"referencedColumns":["id"],"referencedTable":"navigations","onDelete":"CASCADE"},{"name":"navigations_localizations_links_inv_fk","columns":["inv_navigation_id"],"referencedColumns":["id"],"referencedTable":"navigations","onDelete":"CASCADE"}],"columns":[{"name":"navigation_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_navigation_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"network_services_components","indexes":[{"name":"network_services_field_index","columns":["field"],"type":null},{"name":"network_services_component_type_index","columns":["component_type"],"type":null},{"name":"network_services_entity_fk","columns":["entity_id"]}],"foreignKeys":[{"name":"network_services_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"network_services","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":0,"notNullable":false,"unsigned":true}]},{"name":"network_services_localizations_links","indexes":[{"name":"network_services_localizations_links_fk","columns":["network_service_id"]},{"name":"network_services_localizations_links_inv_fk","columns":["inv_network_service_id"]}],"foreignKeys":[{"name":"network_services_localizations_links_fk","columns":["network_service_id"],"referencedColumns":["id"],"referencedTable":"network_services","onDelete":"CASCADE"},{"name":"network_services_localizations_links_inv_fk","columns":["inv_network_service_id"],"referencedColumns":["id"],"referencedTable":"network_services","onDelete":"CASCADE"}],"columns":[{"name":"network_service_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_network_service_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"product_lists_localizations_links","indexes":[{"name":"product_lists_localizations_links_fk","columns":["product_list_id"]},{"name":"product_lists_localizations_links_inv_fk","columns":["inv_product_list_id"]}],"foreignKeys":[{"name":"product_lists_localizations_links_fk","columns":["product_list_id"],"referencedColumns":["id"],"referencedTable":"product_lists","onDelete":"CASCADE"},{"name":"product_lists_localizations_links_inv_fk","columns":["inv_product_list_id"],"referencedColumns":["id"],"referencedTable":"product_lists","onDelete":"CASCADE"}],"columns":[{"name":"product_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_product_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"sertificate_lists_localizations_links","indexes":[{"name":"sertificate_lists_localizations_links_fk","columns":["sertificate_list_id"]},{"name":"sertificate_lists_localizations_links_inv_fk","columns":["inv_sertificate_list_id"]}],"foreignKeys":[{"name":"sertificate_lists_localizations_links_fk","columns":["sertificate_list_id"],"referencedColumns":["id"],"referencedTable":"sertificate_lists","onDelete":"CASCADE"},{"name":"sertificate_lists_localizations_links_inv_fk","columns":["inv_sertificate_list_id"],"referencedColumns":["id"],"referencedTable":"sertificate_lists","onDelete":"CASCADE"}],"columns":[{"name":"sertificate_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_sertificate_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"service_lists_localizations_links","indexes":[{"name":"service_lists_localizations_links_fk","columns":["service_list_id"]},{"name":"service_lists_localizations_links_inv_fk","columns":["inv_service_list_id"]}],"foreignKeys":[{"name":"service_lists_localizations_links_fk","columns":["service_list_id"],"referencedColumns":["id"],"referencedTable":"service_lists","onDelete":"CASCADE"},{"name":"service_lists_localizations_links_inv_fk","columns":["inv_service_list_id"],"referencedColumns":["id"],"referencedTable":"service_lists","onDelete":"CASCADE"}],"columns":[{"name":"service_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_service_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"sonstruction_services_components","indexes":[{"name":"sonstruction_services_field_index","columns":["field"],"type":null},{"name":"sonstruction_services_component_type_index","columns":["component_type"],"type":null},{"name":"sonstruction_services_entity_fk","columns":["entity_id"]}],"foreignKeys":[{"name":"sonstruction_services_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"sonstruction_services","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":0,"notNullable":false,"unsigned":true}]},{"name":"sonstruction_services_localizations_links","indexes":[{"name":"sonstruction_services_localizations_links_fk","columns":["sonstruction_service_id"]},{"name":"sonstruction_services_localizations_links_inv_fk","columns":["inv_sonstruction_service_id"]}],"foreignKeys":[{"name":"sonstruction_services_localizations_links_fk","columns":["sonstruction_service_id"],"referencedColumns":["id"],"referencedTable":"sonstruction_services","onDelete":"CASCADE"},{"name":"sonstruction_services_localizations_links_inv_fk","columns":["inv_sonstruction_service_id"],"referencedColumns":["id"],"referencedTable":"sonstruction_services","onDelete":"CASCADE"}],"columns":[{"name":"sonstruction_service_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_sonstruction_service_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"under_navs_localizations_links","indexes":[{"name":"under_navs_localizations_links_fk","columns":["under_nav_id"]},{"name":"under_navs_localizations_links_inv_fk","columns":["inv_under_nav_id"]}],"foreignKeys":[{"name":"under_navs_localizations_links_fk","columns":["under_nav_id"],"referencedColumns":["id"],"referencedTable":"under_navs","onDelete":"CASCADE"},{"name":"under_navs_localizations_links_inv_fk","columns":["inv_under_nav_id"],"referencedColumns":["id"],"referencedTable":"under_navs","onDelete":"CASCADE"}],"columns":[{"name":"under_nav_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_under_nav_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_certificate_certificates_certificate_lists_links","indexes":[{"name":"components_certificate_certificates_certificate_lists_links_fk","columns":["certificate_id"]},{"name":"components_certificate_certificates_certificate_lists_links_inv_fk","columns":["certificate_list_id"]}],"foreignKeys":[{"name":"components_certificate_certificates_certificate_lists_links_fk","columns":["certificate_id"],"referencedColumns":["id"],"referencedTable":"components_certificate_certificates","onDelete":"CASCADE"},{"name":"components_certificate_certificates_certificate_lists_links_inv_fk","columns":["certificate_list_id"],"referencedColumns":["id"],"referencedTable":"certificate_lists","onDelete":"CASCADE"}],"columns":[{"name":"certificate_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"certificate_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_form_form_mains_components","indexes":[{"name":"components_form_form_mains_field_index","columns":["field"],"type":null},{"name":"components_form_form_mains_component_type_index","columns":["component_type"],"type":null},{"name":"components_form_form_mains_entity_fk","columns":["entity_id"]}],"foreignKeys":[{"name":"components_form_form_mains_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_form_form_mains","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":0,"notNullable":false,"unsigned":true}]},{"name":"components_navbar_header_navbars_locals_links","indexes":[{"name":"components_navbar_header_navbars_locals_links_fk","columns":["navbar_id"]},{"name":"components_navbar_header_navbars_locals_links_inv_fk","columns":["local_id"]}],"foreignKeys":[{"name":"components_navbar_header_navbars_locals_links_fk","columns":["navbar_id"],"referencedColumns":["id"],"referencedTable":"components_navbar_header_navbars","onDelete":"CASCADE"},{"name":"components_navbar_header_navbars_locals_links_inv_fk","columns":["local_id"],"referencedColumns":["id"],"referencedTable":"locals","onDelete":"CASCADE"}],"columns":[{"name":"navbar_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"local_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_navbar_header_navbars_navigations_links","indexes":[{"name":"components_navbar_header_navbars_navigations_links_fk","columns":["navbar_id"]},{"name":"components_navbar_header_navbars_navigations_links_inv_fk","columns":["navigation_id"]}],"foreignKeys":[{"name":"components_navbar_header_navbars_navigations_links_fk","columns":["navbar_id"],"referencedColumns":["id"],"referencedTable":"components_navbar_header_navbars","onDelete":"CASCADE"},{"name":"components_navbar_header_navbars_navigations_links_inv_fk","columns":["navigation_id"],"referencedColumns":["id"],"referencedTable":"navigations","onDelete":"CASCADE"}],"columns":[{"name":"navbar_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"navigation_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_navbar_header_navbars_under_navs_links","indexes":[{"name":"components_navbar_header_navbars_under_navs_links_fk","columns":["navbar_id"]},{"name":"components_navbar_header_navbars_under_navs_links_inv_fk","columns":["under_nav_id"]}],"foreignKeys":[{"name":"components_navbar_header_navbars_under_navs_links_fk","columns":["navbar_id"],"referencedColumns":["id"],"referencedTable":"components_navbar_header_navbars","onDelete":"CASCADE"},{"name":"components_navbar_header_navbars_under_navs_links_inv_fk","columns":["under_nav_id"],"referencedColumns":["id"],"referencedTable":"under_navs","onDelete":"CASCADE"}],"columns":[{"name":"navbar_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"under_nav_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_products_products_product_lists_links","indexes":[{"name":"components_products_products_product_lists_links_fk","columns":["product_id"]},{"name":"components_products_products_product_lists_links_inv_fk","columns":["product_list_id"]}],"foreignKeys":[{"name":"components_products_products_product_lists_links_fk","columns":["product_id"],"referencedColumns":["id"],"referencedTable":"components_products_products","onDelete":"CASCADE"},{"name":"components_products_products_product_lists_links_inv_fk","columns":["product_list_id"],"referencedColumns":["id"],"referencedTable":"product_lists","onDelete":"CASCADE"}],"columns":[{"name":"product_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"product_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_services_services_service_lists_links","indexes":[{"name":"components_services_services_service_lists_links_fk","columns":["services_id"]},{"name":"components_services_services_service_lists_links_inv_fk","columns":["service_list_id"]}],"foreignKeys":[{"name":"components_services_services_service_lists_links_fk","columns":["services_id"],"referencedColumns":["id"],"referencedTable":"components_services_services","onDelete":"CASCADE"},{"name":"components_services_services_service_lists_links_inv_fk","columns":["service_list_id"],"referencedColumns":["id"],"referencedTable":"service_lists","onDelete":"CASCADE"}],"columns":[{"name":"services_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"service_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2022-06-21 12:58:19.336	a97a4034882905108162d1909c28c3c2
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: under_navs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.under_navs (id, name, created_at, updated_at, created_by_id, updated_by_id, locale) FROM stdin;
1	Строительство	2022-06-20 13:19:31.618	2022-06-20 13:19:31.618	1	1	ru
2	Проектирование	2022-06-20 13:19:42.549	2022-06-20 13:19:42.549	1	1	ru
3	Пожарная безопасность	2022-06-20 13:19:52.03	2022-06-20 13:19:52.03	1	1	ru
4	Лифтовая диспетчеризация	2022-06-20 13:20:01.35	2022-06-20 13:20:01.35	1	1	ru
5	Проектирование Сети	2022-06-20 13:20:10.275	2022-06-20 13:20:10.275	1	1	ru
\.


--
-- Data for Name: under_navs_localizations_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.under_navs_localizations_links (under_nav_id, inv_under_nav_id) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: -
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
22	api::sertificate-list.sertificate-list.find	2022-06-20 15:06:56.49	2022-06-20 15:06:56.49	\N	\N
23	api::sertificate-list.sertificate-list.findOne	2022-06-20 15:06:56.49	2022-06-20 15:06:56.49	\N	\N
24	api::service-list.service-list.find	2022-06-20 15:06:56.49	2022-06-20 15:06:56.49	\N	\N
25	api::service-list.service-list.findOne	2022-06-20 15:06:56.49	2022-06-20 15:06:56.49	\N	\N
27	api::under-nav.under-nav.findOne	2022-06-20 15:06:56.49	2022-06-20 15:06:56.49	\N	\N
26	api::under-nav.under-nav.find	2022-06-20 15:06:56.49	2022-06-20 15:06:56.49	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: -
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
27	2
21	2
24	2
26	2
22	2
23	2
25	2
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2022-06-20 11:57:02.676	2022-06-20 11:57:02.676	\N	\N
2	Public	Default role given to unauthenticated user.	public	2022-06-20 11:57:02.682	2022-06-20 15:06:56.473	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.up_users_role_links (user_id, role_id) FROM stdin;
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 177, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: certificate_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.certificate_lists_id_seq', 5, true);


--
-- Name: components_about_abouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_about_abouts_id_seq', 1, true);


--
-- Name: components_certificate_certificates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_certificate_certificates_id_seq', 1, true);


--
-- Name: components_contacts_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_contacts_addresses_id_seq', 3, true);


--
-- Name: components_contacts_mail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_contacts_mail_id_seq', 1, true);


--
-- Name: components_contacts_phone_numbers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_contacts_phone_numbers_id_seq', 3, true);


--
-- Name: components_footer_footer_devs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_footer_footer_devs_id_seq', 1, true);


--
-- Name: components_footer_footer_mains_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_footer_footer_mains_id_seq', 1, true);


--
-- Name: components_form_form_mains_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_form_form_mains_components_id_seq', 9, true);


--
-- Name: components_form_form_mains_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_form_form_mains_id_seq', 1, true);


--
-- Name: components_navbar_header_navbars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_navbar_header_navbars_id_seq', 2, true);


--
-- Name: components_products_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_products_products_id_seq', 1, true);


--
-- Name: components_services_page_com_component_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_services_page_com_component_services_id_seq', 5, true);


--
-- Name: components_services_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_services_services_id_seq', 1, true);


--
-- Name: design_services_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.design_services_components_id_seq', 1, true);


--
-- Name: design_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.design_services_id_seq', 1, true);


--
-- Name: elevator_dispatching_services_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.elevator_dispatching_services_components_id_seq', 1, true);


--
-- Name: elevator_dispatching_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.elevator_dispatching_services_id_seq', 1, true);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.files_id_seq', 36, true);


--
-- Name: fire_safety_services_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.fire_safety_services_components_id_seq', 1, true);


--
-- Name: fire_safety_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.fire_safety_services_id_seq', 1, true);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 3, true);


--
-- Name: layouts_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.layouts_components_id_seq', 14, true);


--
-- Name: layouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.layouts_id_seq', 1, true);


--
-- Name: locals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.locals_id_seq', 3, true);


--
-- Name: mains_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mains_components_id_seq', 77, true);


--
-- Name: mains_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mains_id_seq', 1, true);


--
-- Name: navigations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.navigations_id_seq', 4, true);


--
-- Name: network_services_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.network_services_components_id_seq', 1, true);


--
-- Name: network_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.network_services_id_seq', 1, true);


--
-- Name: product_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.product_lists_id_seq', 6, true);


--
-- Name: sertificate_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sertificate_lists_id_seq', 1, false);


--
-- Name: service_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.service_lists_id_seq', 4, true);


--
-- Name: sonstruction_services_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sonstruction_services_components_id_seq', 1, true);


--
-- Name: sonstruction_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sonstruction_services_id_seq', 1, true);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 43, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 40, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: under_navs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.under_navs_id_seq', 5, true);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 27, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: certificate_lists certificate_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.certificate_lists
    ADD CONSTRAINT certificate_lists_pkey PRIMARY KEY (id);


--
-- Name: components_about_abouts components_about_abouts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_about_abouts
    ADD CONSTRAINT components_about_abouts_pkey PRIMARY KEY (id);


--
-- Name: components_certificate_certificates components_certificate_certificates_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_certificate_certificates
    ADD CONSTRAINT components_certificate_certificates_pkey PRIMARY KEY (id);


--
-- Name: components_contacts_addresses components_contacts_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_contacts_addresses
    ADD CONSTRAINT components_contacts_addresses_pkey PRIMARY KEY (id);


--
-- Name: components_contacts_mail components_contacts_mail_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_contacts_mail
    ADD CONSTRAINT components_contacts_mail_pkey PRIMARY KEY (id);


--
-- Name: components_contacts_phone_numbers components_contacts_phone_numbers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_contacts_phone_numbers
    ADD CONSTRAINT components_contacts_phone_numbers_pkey PRIMARY KEY (id);


--
-- Name: components_footer_footer_devs components_footer_footer_devs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_footer_footer_devs
    ADD CONSTRAINT components_footer_footer_devs_pkey PRIMARY KEY (id);


--
-- Name: components_footer_footer_mains components_footer_footer_mains_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_footer_footer_mains
    ADD CONSTRAINT components_footer_footer_mains_pkey PRIMARY KEY (id);


--
-- Name: components_form_form_mains_components components_form_form_mains_components_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_form_form_mains_components
    ADD CONSTRAINT components_form_form_mains_components_pkey PRIMARY KEY (id);


--
-- Name: components_form_form_mains components_form_form_mains_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_form_form_mains
    ADD CONSTRAINT components_form_form_mains_pkey PRIMARY KEY (id);


--
-- Name: components_navbar_header_navbars components_navbar_header_navbars_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_navbar_header_navbars
    ADD CONSTRAINT components_navbar_header_navbars_pkey PRIMARY KEY (id);


--
-- Name: components_products_products components_products_products_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_products_products
    ADD CONSTRAINT components_products_products_pkey PRIMARY KEY (id);


--
-- Name: components_services_page_com_component_services components_services_page_com_component_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_services_page_com_component_services
    ADD CONSTRAINT components_services_page_com_component_services_pkey PRIMARY KEY (id);


--
-- Name: components_services_services components_services_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_services_services
    ADD CONSTRAINT components_services_services_pkey PRIMARY KEY (id);


--
-- Name: design_services_components design_services_components_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.design_services_components
    ADD CONSTRAINT design_services_components_pkey PRIMARY KEY (id);


--
-- Name: design_services design_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.design_services
    ADD CONSTRAINT design_services_pkey PRIMARY KEY (id);


--
-- Name: elevator_dispatching_services_components elevator_dispatching_services_components_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elevator_dispatching_services_components
    ADD CONSTRAINT elevator_dispatching_services_components_pkey PRIMARY KEY (id);


--
-- Name: elevator_dispatching_services elevator_dispatching_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elevator_dispatching_services
    ADD CONSTRAINT elevator_dispatching_services_pkey PRIMARY KEY (id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: fire_safety_services_components fire_safety_services_components_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fire_safety_services_components
    ADD CONSTRAINT fire_safety_services_components_pkey PRIMARY KEY (id);


--
-- Name: fire_safety_services fire_safety_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fire_safety_services
    ADD CONSTRAINT fire_safety_services_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: layouts_components layouts_components_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.layouts_components
    ADD CONSTRAINT layouts_components_pkey PRIMARY KEY (id);


--
-- Name: layouts layouts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.layouts
    ADD CONSTRAINT layouts_pkey PRIMARY KEY (id);


--
-- Name: locals locals_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.locals
    ADD CONSTRAINT locals_pkey PRIMARY KEY (id);


--
-- Name: mains_components mains_components_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mains_components
    ADD CONSTRAINT mains_components_pkey PRIMARY KEY (id);


--
-- Name: mains mains_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mains
    ADD CONSTRAINT mains_pkey PRIMARY KEY (id);


--
-- Name: navigations navigations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.navigations
    ADD CONSTRAINT navigations_pkey PRIMARY KEY (id);


--
-- Name: network_services_components network_services_components_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.network_services_components
    ADD CONSTRAINT network_services_components_pkey PRIMARY KEY (id);


--
-- Name: network_services network_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.network_services
    ADD CONSTRAINT network_services_pkey PRIMARY KEY (id);


--
-- Name: product_lists product_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_lists
    ADD CONSTRAINT product_lists_pkey PRIMARY KEY (id);


--
-- Name: sertificate_lists sertificate_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sertificate_lists
    ADD CONSTRAINT sertificate_lists_pkey PRIMARY KEY (id);


--
-- Name: service_lists service_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_lists
    ADD CONSTRAINT service_lists_pkey PRIMARY KEY (id);


--
-- Name: sonstruction_services_components sonstruction_services_components_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sonstruction_services_components
    ADD CONSTRAINT sonstruction_services_components_pkey PRIMARY KEY (id);


--
-- Name: sonstruction_services sonstruction_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sonstruction_services
    ADD CONSTRAINT sonstruction_services_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: under_navs under_navs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.under_navs
    ADD CONSTRAINT under_navs_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: certificate_lists_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX certificate_lists_created_by_id_fk ON public.certificate_lists USING btree (created_by_id);


--
-- Name: certificate_lists_localizations_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX certificate_lists_localizations_links_fk ON public.certificate_lists_localizations_links USING btree (certificate_list_id);


--
-- Name: certificate_lists_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX certificate_lists_localizations_links_inv_fk ON public.certificate_lists_localizations_links USING btree (inv_certificate_list_id);


--
-- Name: certificate_lists_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX certificate_lists_updated_by_id_fk ON public.certificate_lists USING btree (updated_by_id);


--
-- Name: components_certificate_certificates_certificate_lists_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX components_certificate_certificates_certificate_lists_links_fk ON public.components_certificate_certificates_certificate_lists_links USING btree (certificate_id);


--
-- Name: components_certificate_certificates_certificate_lists_links_inv; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX components_certificate_certificates_certificate_lists_links_inv ON public.components_certificate_certificates_certificate_lists_links USING btree (certificate_list_id);


--
-- Name: components_form_form_mains_component_type_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX components_form_form_mains_component_type_index ON public.components_form_form_mains_components USING btree (component_type);


--
-- Name: components_form_form_mains_entity_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX components_form_form_mains_entity_fk ON public.components_form_form_mains_components USING btree (entity_id);


--
-- Name: components_form_form_mains_field_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX components_form_form_mains_field_index ON public.components_form_form_mains_components USING btree (field);


--
-- Name: components_navbar_header_navbars_locals_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX components_navbar_header_navbars_locals_links_fk ON public.components_navbar_header_navbars_locals_links USING btree (navbar_id);


--
-- Name: components_navbar_header_navbars_locals_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX components_navbar_header_navbars_locals_links_inv_fk ON public.components_navbar_header_navbars_locals_links USING btree (local_id);


--
-- Name: components_navbar_header_navbars_navigations_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX components_navbar_header_navbars_navigations_links_fk ON public.components_navbar_header_navbars_navigations_links USING btree (navbar_id);


--
-- Name: components_navbar_header_navbars_navigations_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX components_navbar_header_navbars_navigations_links_inv_fk ON public.components_navbar_header_navbars_navigations_links USING btree (navigation_id);


--
-- Name: components_navbar_header_navbars_under_navs_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX components_navbar_header_navbars_under_navs_links_fk ON public.components_navbar_header_navbars_under_navs_links USING btree (navbar_id);


--
-- Name: components_navbar_header_navbars_under_navs_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX components_navbar_header_navbars_under_navs_links_inv_fk ON public.components_navbar_header_navbars_under_navs_links USING btree (under_nav_id);


--
-- Name: components_products_products_product_lists_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX components_products_products_product_lists_links_fk ON public.components_products_products_product_lists_links USING btree (product_id);


--
-- Name: components_products_products_product_lists_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX components_products_products_product_lists_links_inv_fk ON public.components_products_products_product_lists_links USING btree (product_list_id);


--
-- Name: components_services_services_service_lists_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX components_services_services_service_lists_links_fk ON public.components_services_services_service_lists_links USING btree (services_id);


--
-- Name: components_services_services_service_lists_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX components_services_services_service_lists_links_inv_fk ON public.components_services_services_service_lists_links USING btree (service_list_id);


--
-- Name: design_services_component_type_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX design_services_component_type_index ON public.design_services_components USING btree (component_type);


--
-- Name: design_services_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX design_services_created_by_id_fk ON public.design_services USING btree (created_by_id);


--
-- Name: design_services_entity_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX design_services_entity_fk ON public.design_services_components USING btree (entity_id);


--
-- Name: design_services_field_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX design_services_field_index ON public.design_services_components USING btree (field);


--
-- Name: design_services_localizations_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX design_services_localizations_links_fk ON public.design_services_localizations_links USING btree (design_service_id);


--
-- Name: design_services_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX design_services_localizations_links_inv_fk ON public.design_services_localizations_links USING btree (inv_design_service_id);


--
-- Name: design_services_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX design_services_updated_by_id_fk ON public.design_services USING btree (updated_by_id);


--
-- Name: elevator_dispatching_services_component_type_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX elevator_dispatching_services_component_type_index ON public.elevator_dispatching_services_components USING btree (component_type);


--
-- Name: elevator_dispatching_services_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX elevator_dispatching_services_created_by_id_fk ON public.elevator_dispatching_services USING btree (created_by_id);


--
-- Name: elevator_dispatching_services_entity_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX elevator_dispatching_services_entity_fk ON public.elevator_dispatching_services_components USING btree (entity_id);


--
-- Name: elevator_dispatching_services_field_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX elevator_dispatching_services_field_index ON public.elevator_dispatching_services_components USING btree (field);


--
-- Name: elevator_dispatching_services_localizations_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX elevator_dispatching_services_localizations_links_fk ON public.elevator_dispatching_services_localizations_links USING btree (elevator_dispatching_service_id);


--
-- Name: elevator_dispatching_services_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX elevator_dispatching_services_localizations_links_inv_fk ON public.elevator_dispatching_services_localizations_links USING btree (inv_elevator_dispatching_service_id);


--
-- Name: elevator_dispatching_services_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX elevator_dispatching_services_updated_by_id_fk ON public.elevator_dispatching_services USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: fire_safety_services_component_type_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fire_safety_services_component_type_index ON public.fire_safety_services_components USING btree (component_type);


--
-- Name: fire_safety_services_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fire_safety_services_created_by_id_fk ON public.fire_safety_services USING btree (created_by_id);


--
-- Name: fire_safety_services_entity_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fire_safety_services_entity_fk ON public.fire_safety_services_components USING btree (entity_id);


--
-- Name: fire_safety_services_field_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fire_safety_services_field_index ON public.fire_safety_services_components USING btree (field);


--
-- Name: fire_safety_services_localizations_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fire_safety_services_localizations_links_fk ON public.fire_safety_services_localizations_links USING btree (fire_safety_service_id);


--
-- Name: fire_safety_services_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fire_safety_services_localizations_links_inv_fk ON public.fire_safety_services_localizations_links USING btree (inv_fire_safety_service_id);


--
-- Name: fire_safety_services_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fire_safety_services_updated_by_id_fk ON public.fire_safety_services USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: layouts_component_type_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX layouts_component_type_index ON public.layouts_components USING btree (component_type);


--
-- Name: layouts_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX layouts_created_by_id_fk ON public.layouts USING btree (created_by_id);


--
-- Name: layouts_entity_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX layouts_entity_fk ON public.layouts_components USING btree (entity_id);


--
-- Name: layouts_field_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX layouts_field_index ON public.layouts_components USING btree (field);


--
-- Name: layouts_localizations_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX layouts_localizations_links_fk ON public.layouts_localizations_links USING btree (layout_id);


--
-- Name: layouts_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX layouts_localizations_links_inv_fk ON public.layouts_localizations_links USING btree (inv_layout_id);


--
-- Name: layouts_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX layouts_updated_by_id_fk ON public.layouts USING btree (updated_by_id);


--
-- Name: locals_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX locals_created_by_id_fk ON public.locals USING btree (created_by_id);


--
-- Name: locals_localizations_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX locals_localizations_links_fk ON public.locals_localizations_links USING btree (local_id);


--
-- Name: locals_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX locals_localizations_links_inv_fk ON public.locals_localizations_links USING btree (inv_local_id);


--
-- Name: locals_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX locals_updated_by_id_fk ON public.locals USING btree (updated_by_id);


--
-- Name: mains_component_type_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mains_component_type_index ON public.mains_components USING btree (component_type);


--
-- Name: mains_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mains_created_by_id_fk ON public.mains USING btree (created_by_id);


--
-- Name: mains_entity_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mains_entity_fk ON public.mains_components USING btree (entity_id);


--
-- Name: mains_field_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mains_field_index ON public.mains_components USING btree (field);


--
-- Name: mains_localizations_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mains_localizations_links_fk ON public.mains_localizations_links USING btree (main_id);


--
-- Name: mains_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mains_localizations_links_inv_fk ON public.mains_localizations_links USING btree (inv_main_id);


--
-- Name: mains_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mains_updated_by_id_fk ON public.mains USING btree (updated_by_id);


--
-- Name: navigations_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX navigations_created_by_id_fk ON public.navigations USING btree (created_by_id);


--
-- Name: navigations_localizations_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX navigations_localizations_links_fk ON public.navigations_localizations_links USING btree (navigation_id);


--
-- Name: navigations_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX navigations_localizations_links_inv_fk ON public.navigations_localizations_links USING btree (inv_navigation_id);


--
-- Name: navigations_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX navigations_updated_by_id_fk ON public.navigations USING btree (updated_by_id);


--
-- Name: network_services_component_type_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX network_services_component_type_index ON public.network_services_components USING btree (component_type);


--
-- Name: network_services_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX network_services_created_by_id_fk ON public.network_services USING btree (created_by_id);


--
-- Name: network_services_entity_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX network_services_entity_fk ON public.network_services_components USING btree (entity_id);


--
-- Name: network_services_field_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX network_services_field_index ON public.network_services_components USING btree (field);


--
-- Name: network_services_localizations_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX network_services_localizations_links_fk ON public.network_services_localizations_links USING btree (network_service_id);


--
-- Name: network_services_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX network_services_localizations_links_inv_fk ON public.network_services_localizations_links USING btree (inv_network_service_id);


--
-- Name: network_services_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX network_services_updated_by_id_fk ON public.network_services USING btree (updated_by_id);


--
-- Name: product_lists_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX product_lists_created_by_id_fk ON public.product_lists USING btree (created_by_id);


--
-- Name: product_lists_localizations_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX product_lists_localizations_links_fk ON public.product_lists_localizations_links USING btree (product_list_id);


--
-- Name: product_lists_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX product_lists_localizations_links_inv_fk ON public.product_lists_localizations_links USING btree (inv_product_list_id);


--
-- Name: product_lists_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX product_lists_updated_by_id_fk ON public.product_lists USING btree (updated_by_id);


--
-- Name: sertificate_lists_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sertificate_lists_created_by_id_fk ON public.sertificate_lists USING btree (created_by_id);


--
-- Name: sertificate_lists_localizations_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sertificate_lists_localizations_links_fk ON public.sertificate_lists_localizations_links USING btree (sertificate_list_id);


--
-- Name: sertificate_lists_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sertificate_lists_localizations_links_inv_fk ON public.sertificate_lists_localizations_links USING btree (inv_sertificate_list_id);


--
-- Name: sertificate_lists_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sertificate_lists_updated_by_id_fk ON public.sertificate_lists USING btree (updated_by_id);


--
-- Name: service_lists_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX service_lists_created_by_id_fk ON public.service_lists USING btree (created_by_id);


--
-- Name: service_lists_localizations_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX service_lists_localizations_links_fk ON public.service_lists_localizations_links USING btree (service_list_id);


--
-- Name: service_lists_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX service_lists_localizations_links_inv_fk ON public.service_lists_localizations_links USING btree (inv_service_list_id);


--
-- Name: service_lists_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX service_lists_updated_by_id_fk ON public.service_lists USING btree (updated_by_id);


--
-- Name: sonstruction_services_component_type_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sonstruction_services_component_type_index ON public.sonstruction_services_components USING btree (component_type);


--
-- Name: sonstruction_services_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sonstruction_services_created_by_id_fk ON public.sonstruction_services USING btree (created_by_id);


--
-- Name: sonstruction_services_entity_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sonstruction_services_entity_fk ON public.sonstruction_services_components USING btree (entity_id);


--
-- Name: sonstruction_services_field_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sonstruction_services_field_index ON public.sonstruction_services_components USING btree (field);


--
-- Name: sonstruction_services_localizations_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sonstruction_services_localizations_links_fk ON public.sonstruction_services_localizations_links USING btree (sonstruction_service_id);


--
-- Name: sonstruction_services_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sonstruction_services_localizations_links_inv_fk ON public.sonstruction_services_localizations_links USING btree (inv_sonstruction_service_id);


--
-- Name: sonstruction_services_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sonstruction_services_updated_by_id_fk ON public.sonstruction_services USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: under_navs_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX under_navs_created_by_id_fk ON public.under_navs USING btree (created_by_id);


--
-- Name: under_navs_localizations_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX under_navs_localizations_links_fk ON public.under_navs_localizations_links USING btree (under_nav_id);


--
-- Name: under_navs_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX under_navs_localizations_links_inv_fk ON public.under_navs_localizations_links USING btree (inv_under_nav_id);


--
-- Name: under_navs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX under_navs_updated_by_id_fk ON public.under_navs USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: certificate_lists certificate_lists_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.certificate_lists
    ADD CONSTRAINT certificate_lists_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: certificate_lists_localizations_links certificate_lists_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.certificate_lists_localizations_links
    ADD CONSTRAINT certificate_lists_localizations_links_fk FOREIGN KEY (certificate_list_id) REFERENCES public.certificate_lists(id) ON DELETE CASCADE;


--
-- Name: certificate_lists_localizations_links certificate_lists_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.certificate_lists_localizations_links
    ADD CONSTRAINT certificate_lists_localizations_links_inv_fk FOREIGN KEY (inv_certificate_list_id) REFERENCES public.certificate_lists(id) ON DELETE CASCADE;


--
-- Name: certificate_lists certificate_lists_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.certificate_lists
    ADD CONSTRAINT certificate_lists_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: components_certificate_certificates_certificate_lists_links components_certificate_certificates_certificate_lists_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_certificate_certificates_certificate_lists_links
    ADD CONSTRAINT components_certificate_certificates_certificate_lists_links_fk FOREIGN KEY (certificate_id) REFERENCES public.components_certificate_certificates(id) ON DELETE CASCADE;


--
-- Name: components_certificate_certificates_certificate_lists_links components_certificate_certificates_certificate_lists_links_inv; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_certificate_certificates_certificate_lists_links
    ADD CONSTRAINT components_certificate_certificates_certificate_lists_links_inv FOREIGN KEY (certificate_list_id) REFERENCES public.certificate_lists(id) ON DELETE CASCADE;


--
-- Name: components_form_form_mains_components components_form_form_mains_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_form_form_mains_components
    ADD CONSTRAINT components_form_form_mains_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_form_form_mains(id) ON DELETE CASCADE;


--
-- Name: components_navbar_header_navbars_locals_links components_navbar_header_navbars_locals_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_navbar_header_navbars_locals_links
    ADD CONSTRAINT components_navbar_header_navbars_locals_links_fk FOREIGN KEY (navbar_id) REFERENCES public.components_navbar_header_navbars(id) ON DELETE CASCADE;


--
-- Name: components_navbar_header_navbars_locals_links components_navbar_header_navbars_locals_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_navbar_header_navbars_locals_links
    ADD CONSTRAINT components_navbar_header_navbars_locals_links_inv_fk FOREIGN KEY (local_id) REFERENCES public.locals(id) ON DELETE CASCADE;


--
-- Name: components_navbar_header_navbars_navigations_links components_navbar_header_navbars_navigations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_navbar_header_navbars_navigations_links
    ADD CONSTRAINT components_navbar_header_navbars_navigations_links_fk FOREIGN KEY (navbar_id) REFERENCES public.components_navbar_header_navbars(id) ON DELETE CASCADE;


--
-- Name: components_navbar_header_navbars_navigations_links components_navbar_header_navbars_navigations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_navbar_header_navbars_navigations_links
    ADD CONSTRAINT components_navbar_header_navbars_navigations_links_inv_fk FOREIGN KEY (navigation_id) REFERENCES public.navigations(id) ON DELETE CASCADE;


--
-- Name: components_navbar_header_navbars_under_navs_links components_navbar_header_navbars_under_navs_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_navbar_header_navbars_under_navs_links
    ADD CONSTRAINT components_navbar_header_navbars_under_navs_links_fk FOREIGN KEY (navbar_id) REFERENCES public.components_navbar_header_navbars(id) ON DELETE CASCADE;


--
-- Name: components_navbar_header_navbars_under_navs_links components_navbar_header_navbars_under_navs_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_navbar_header_navbars_under_navs_links
    ADD CONSTRAINT components_navbar_header_navbars_under_navs_links_inv_fk FOREIGN KEY (under_nav_id) REFERENCES public.under_navs(id) ON DELETE CASCADE;


--
-- Name: components_products_products_product_lists_links components_products_products_product_lists_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_products_products_product_lists_links
    ADD CONSTRAINT components_products_products_product_lists_links_fk FOREIGN KEY (product_id) REFERENCES public.components_products_products(id) ON DELETE CASCADE;


--
-- Name: components_products_products_product_lists_links components_products_products_product_lists_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_products_products_product_lists_links
    ADD CONSTRAINT components_products_products_product_lists_links_inv_fk FOREIGN KEY (product_list_id) REFERENCES public.product_lists(id) ON DELETE CASCADE;


--
-- Name: components_services_services_service_lists_links components_services_services_service_lists_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_services_services_service_lists_links
    ADD CONSTRAINT components_services_services_service_lists_links_fk FOREIGN KEY (services_id) REFERENCES public.components_services_services(id) ON DELETE CASCADE;


--
-- Name: components_services_services_service_lists_links components_services_services_service_lists_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_services_services_service_lists_links
    ADD CONSTRAINT components_services_services_service_lists_links_inv_fk FOREIGN KEY (service_list_id) REFERENCES public.service_lists(id) ON DELETE CASCADE;


--
-- Name: design_services design_services_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.design_services
    ADD CONSTRAINT design_services_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: design_services_components design_services_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.design_services_components
    ADD CONSTRAINT design_services_entity_fk FOREIGN KEY (entity_id) REFERENCES public.design_services(id) ON DELETE CASCADE;


--
-- Name: design_services_localizations_links design_services_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.design_services_localizations_links
    ADD CONSTRAINT design_services_localizations_links_fk FOREIGN KEY (design_service_id) REFERENCES public.design_services(id) ON DELETE CASCADE;


--
-- Name: design_services_localizations_links design_services_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.design_services_localizations_links
    ADD CONSTRAINT design_services_localizations_links_inv_fk FOREIGN KEY (inv_design_service_id) REFERENCES public.design_services(id) ON DELETE CASCADE;


--
-- Name: design_services design_services_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.design_services
    ADD CONSTRAINT design_services_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: elevator_dispatching_services elevator_dispatching_services_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elevator_dispatching_services
    ADD CONSTRAINT elevator_dispatching_services_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: elevator_dispatching_services_components elevator_dispatching_services_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elevator_dispatching_services_components
    ADD CONSTRAINT elevator_dispatching_services_entity_fk FOREIGN KEY (entity_id) REFERENCES public.elevator_dispatching_services(id) ON DELETE CASCADE;


--
-- Name: elevator_dispatching_services_localizations_links elevator_dispatching_services_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elevator_dispatching_services_localizations_links
    ADD CONSTRAINT elevator_dispatching_services_localizations_links_fk FOREIGN KEY (elevator_dispatching_service_id) REFERENCES public.elevator_dispatching_services(id) ON DELETE CASCADE;


--
-- Name: elevator_dispatching_services_localizations_links elevator_dispatching_services_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elevator_dispatching_services_localizations_links
    ADD CONSTRAINT elevator_dispatching_services_localizations_links_inv_fk FOREIGN KEY (inv_elevator_dispatching_service_id) REFERENCES public.elevator_dispatching_services(id) ON DELETE CASCADE;


--
-- Name: elevator_dispatching_services elevator_dispatching_services_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elevator_dispatching_services
    ADD CONSTRAINT elevator_dispatching_services_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: fire_safety_services fire_safety_services_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fire_safety_services
    ADD CONSTRAINT fire_safety_services_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: fire_safety_services_components fire_safety_services_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fire_safety_services_components
    ADD CONSTRAINT fire_safety_services_entity_fk FOREIGN KEY (entity_id) REFERENCES public.fire_safety_services(id) ON DELETE CASCADE;


--
-- Name: fire_safety_services_localizations_links fire_safety_services_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fire_safety_services_localizations_links
    ADD CONSTRAINT fire_safety_services_localizations_links_fk FOREIGN KEY (fire_safety_service_id) REFERENCES public.fire_safety_services(id) ON DELETE CASCADE;


--
-- Name: fire_safety_services_localizations_links fire_safety_services_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fire_safety_services_localizations_links
    ADD CONSTRAINT fire_safety_services_localizations_links_inv_fk FOREIGN KEY (inv_fire_safety_service_id) REFERENCES public.fire_safety_services(id) ON DELETE CASCADE;


--
-- Name: fire_safety_services fire_safety_services_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fire_safety_services
    ADD CONSTRAINT fire_safety_services_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: layouts layouts_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.layouts
    ADD CONSTRAINT layouts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: layouts_components layouts_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.layouts_components
    ADD CONSTRAINT layouts_entity_fk FOREIGN KEY (entity_id) REFERENCES public.layouts(id) ON DELETE CASCADE;


--
-- Name: layouts_localizations_links layouts_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.layouts_localizations_links
    ADD CONSTRAINT layouts_localizations_links_fk FOREIGN KEY (layout_id) REFERENCES public.layouts(id) ON DELETE CASCADE;


--
-- Name: layouts_localizations_links layouts_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.layouts_localizations_links
    ADD CONSTRAINT layouts_localizations_links_inv_fk FOREIGN KEY (inv_layout_id) REFERENCES public.layouts(id) ON DELETE CASCADE;


--
-- Name: layouts layouts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.layouts
    ADD CONSTRAINT layouts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: locals locals_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.locals
    ADD CONSTRAINT locals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: locals_localizations_links locals_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.locals_localizations_links
    ADD CONSTRAINT locals_localizations_links_fk FOREIGN KEY (local_id) REFERENCES public.locals(id) ON DELETE CASCADE;


--
-- Name: locals_localizations_links locals_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.locals_localizations_links
    ADD CONSTRAINT locals_localizations_links_inv_fk FOREIGN KEY (inv_local_id) REFERENCES public.locals(id) ON DELETE CASCADE;


--
-- Name: locals locals_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.locals
    ADD CONSTRAINT locals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: mains mains_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mains
    ADD CONSTRAINT mains_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: mains_components mains_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mains_components
    ADD CONSTRAINT mains_entity_fk FOREIGN KEY (entity_id) REFERENCES public.mains(id) ON DELETE CASCADE;


--
-- Name: mains_localizations_links mains_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mains_localizations_links
    ADD CONSTRAINT mains_localizations_links_fk FOREIGN KEY (main_id) REFERENCES public.mains(id) ON DELETE CASCADE;


--
-- Name: mains_localizations_links mains_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mains_localizations_links
    ADD CONSTRAINT mains_localizations_links_inv_fk FOREIGN KEY (inv_main_id) REFERENCES public.mains(id) ON DELETE CASCADE;


--
-- Name: mains mains_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mains
    ADD CONSTRAINT mains_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: navigations navigations_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.navigations
    ADD CONSTRAINT navigations_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: navigations_localizations_links navigations_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.navigations_localizations_links
    ADD CONSTRAINT navigations_localizations_links_fk FOREIGN KEY (navigation_id) REFERENCES public.navigations(id) ON DELETE CASCADE;


--
-- Name: navigations_localizations_links navigations_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.navigations_localizations_links
    ADD CONSTRAINT navigations_localizations_links_inv_fk FOREIGN KEY (inv_navigation_id) REFERENCES public.navigations(id) ON DELETE CASCADE;


--
-- Name: navigations navigations_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.navigations
    ADD CONSTRAINT navigations_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: network_services network_services_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.network_services
    ADD CONSTRAINT network_services_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: network_services_components network_services_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.network_services_components
    ADD CONSTRAINT network_services_entity_fk FOREIGN KEY (entity_id) REFERENCES public.network_services(id) ON DELETE CASCADE;


--
-- Name: network_services_localizations_links network_services_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.network_services_localizations_links
    ADD CONSTRAINT network_services_localizations_links_fk FOREIGN KEY (network_service_id) REFERENCES public.network_services(id) ON DELETE CASCADE;


--
-- Name: network_services_localizations_links network_services_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.network_services_localizations_links
    ADD CONSTRAINT network_services_localizations_links_inv_fk FOREIGN KEY (inv_network_service_id) REFERENCES public.network_services(id) ON DELETE CASCADE;


--
-- Name: network_services network_services_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.network_services
    ADD CONSTRAINT network_services_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: product_lists product_lists_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_lists
    ADD CONSTRAINT product_lists_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: product_lists_localizations_links product_lists_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_lists_localizations_links
    ADD CONSTRAINT product_lists_localizations_links_fk FOREIGN KEY (product_list_id) REFERENCES public.product_lists(id) ON DELETE CASCADE;


--
-- Name: product_lists_localizations_links product_lists_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_lists_localizations_links
    ADD CONSTRAINT product_lists_localizations_links_inv_fk FOREIGN KEY (inv_product_list_id) REFERENCES public.product_lists(id) ON DELETE CASCADE;


--
-- Name: product_lists product_lists_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_lists
    ADD CONSTRAINT product_lists_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: sertificate_lists sertificate_lists_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sertificate_lists
    ADD CONSTRAINT sertificate_lists_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: sertificate_lists_localizations_links sertificate_lists_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sertificate_lists_localizations_links
    ADD CONSTRAINT sertificate_lists_localizations_links_fk FOREIGN KEY (sertificate_list_id) REFERENCES public.sertificate_lists(id) ON DELETE CASCADE;


--
-- Name: sertificate_lists_localizations_links sertificate_lists_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sertificate_lists_localizations_links
    ADD CONSTRAINT sertificate_lists_localizations_links_inv_fk FOREIGN KEY (inv_sertificate_list_id) REFERENCES public.sertificate_lists(id) ON DELETE CASCADE;


--
-- Name: sertificate_lists sertificate_lists_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sertificate_lists
    ADD CONSTRAINT sertificate_lists_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: service_lists service_lists_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_lists
    ADD CONSTRAINT service_lists_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: service_lists_localizations_links service_lists_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_lists_localizations_links
    ADD CONSTRAINT service_lists_localizations_links_fk FOREIGN KEY (service_list_id) REFERENCES public.service_lists(id) ON DELETE CASCADE;


--
-- Name: service_lists_localizations_links service_lists_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_lists_localizations_links
    ADD CONSTRAINT service_lists_localizations_links_inv_fk FOREIGN KEY (inv_service_list_id) REFERENCES public.service_lists(id) ON DELETE CASCADE;


--
-- Name: service_lists service_lists_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_lists
    ADD CONSTRAINT service_lists_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: sonstruction_services sonstruction_services_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sonstruction_services
    ADD CONSTRAINT sonstruction_services_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: sonstruction_services_components sonstruction_services_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sonstruction_services_components
    ADD CONSTRAINT sonstruction_services_entity_fk FOREIGN KEY (entity_id) REFERENCES public.sonstruction_services(id) ON DELETE CASCADE;


--
-- Name: sonstruction_services_localizations_links sonstruction_services_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sonstruction_services_localizations_links
    ADD CONSTRAINT sonstruction_services_localizations_links_fk FOREIGN KEY (sonstruction_service_id) REFERENCES public.sonstruction_services(id) ON DELETE CASCADE;


--
-- Name: sonstruction_services_localizations_links sonstruction_services_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sonstruction_services_localizations_links
    ADD CONSTRAINT sonstruction_services_localizations_links_inv_fk FOREIGN KEY (inv_sonstruction_service_id) REFERENCES public.sonstruction_services(id) ON DELETE CASCADE;


--
-- Name: sonstruction_services sonstruction_services_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sonstruction_services
    ADD CONSTRAINT sonstruction_services_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: under_navs under_navs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.under_navs
    ADD CONSTRAINT under_navs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: under_navs_localizations_links under_navs_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.under_navs_localizations_links
    ADD CONSTRAINT under_navs_localizations_links_fk FOREIGN KEY (under_nav_id) REFERENCES public.under_navs(id) ON DELETE CASCADE;


--
-- Name: under_navs_localizations_links under_navs_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.under_navs_localizations_links
    ADD CONSTRAINT under_navs_localizations_links_inv_fk FOREIGN KEY (inv_under_nav_id) REFERENCES public.under_navs(id) ON DELETE CASCADE;


--
-- Name: under_navs under_navs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.under_navs
    ADD CONSTRAINT under_navs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

