'use strict';

/**
 * pagas-service service.
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::pagas-service.pagas-service');
