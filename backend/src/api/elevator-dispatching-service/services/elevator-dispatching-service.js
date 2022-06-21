'use strict';

/**
 * elevator-dispatching-service service.
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::elevator-dispatching-service.elevator-dispatching-service');
