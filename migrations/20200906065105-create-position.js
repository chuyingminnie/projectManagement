'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('Positions', {
      position_id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      name: {
        type: Sequelize.STRING
      },
      create_uid: {
        type: Sequelize.INTEGER
      },
      create_datetime: {
        type: Sequelize.DATE
      },
      modify_uid: {
        type: Sequelize.INTEGER
      },
      modify_datetime: {
        type: Sequelize.DATE
      },
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('Position');
  }
};