'use strict';

/**
 * fire-safety-service service.
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::fire-safety-service.fire-safety-service');
