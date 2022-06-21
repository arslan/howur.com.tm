'use strict';

/**
 * network-service service.
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::network-service.network-service');
