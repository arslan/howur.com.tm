'use strict';

/**
 *  local controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::local.local');
