'use strict';

/**
 * network-service router.
 */

const { createCoreRouter } = require('@strapi/strapi').factories;

module.exports = createCoreRouter('api::network-service.network-service');
