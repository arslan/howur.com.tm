'use strict';

/**
 *  network-service controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::network-service.network-service');
