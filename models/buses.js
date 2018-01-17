var Sequelize = require( "sequelize" );

module.exports = function( sequelize, DataTypes ) {

  var Bus = sequelize.define( 'Bus', {
    // for my team members- we don't need a bus number- sequelize adds an indexed (not repeated) id and we should use that number
    // this is essentially storing 2 fields that serve the same purpose
    // bus_number: {
    //   allowNull: false,
    //   type: DataTypes.INTEGER( 11 ),

    // },

    capacity: {
      allowNull: false,
      type: DataTypes.INTEGER( 2 ),

    },

    home_base: {
      allowNull: false,
      type: DataTypes.STRING( 50 ),

    }

  }, {
    timestamps: false
  } );

  Bus.associate = function(models) {
    // Associating Author with Posts
    // When an Author is deleted, also delete any associated Posts
    Bus.hasMany(models.Student, {
    });
  };

  Bus.associate = function(models) {
    // Associating Author with Posts
    // When an Author is deleted, also delete any associated Posts
    Bus.hasMany(models.Driver, {
    });
  };
  
  return Bus;
};