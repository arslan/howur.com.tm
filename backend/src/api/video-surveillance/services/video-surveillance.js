'use strict';

/**
 * video-surveillance service.
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::video-surveillance.video-surveillance');
