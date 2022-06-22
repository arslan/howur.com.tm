'use strict';

/**
 * design-service service.
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::design-service.design-service');
