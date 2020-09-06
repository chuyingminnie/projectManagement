'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Position extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  Position.init({
    position_id: { type: DataTypes.INTEGER, primaryKey: true },
    name: DataTypes.STRING,
    create_uid: DataTypes.INTEGER,
    create_datetime: DataTypes.DATE,
    modify_uid: DataTypes.INTEGER,
    modify_datetime: DataTypes.DATE
  }, {
    sequelize,
    modelName: 'Position',
    timestamps: false,
    freezeTableName: true,
  });
  return Position;
};