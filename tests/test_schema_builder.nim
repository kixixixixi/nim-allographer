import unittest, json
import ../src/allographer/schema_builder


suite "Schema builder":
  test "test":
    schema([
      table("sqlite", [
        Column().increments("increments"),
        Column().integer("integer").unique().default(1).unsigned(),
        Column().smallInteger("smallInteger").unique().default(1).unsigned(),
        Column().mediumInteger("mediumInteger").unique().default(1).unsigned(),
        Column().bigInteger("bigInteger").unique().default(1).unsigned(),

        Column().decimal("decimal", 5, 2).unique().default(1).unsigned(),
        Column().double("double", 5, 2).unique().default(1).unsigned(),
        Column().float("float").unique().default(1).unsigned(),

        Column().char("char", 100).unique().default(""),
        Column().string("string").unique().default(""),
        Column().text("text").default("").unique().default(""),
        Column().mediumText("mediumText").unique().default(""),
        Column().longText("longText").unique().default(""),

        Column().date("date").unique().default(),
        Column().datetime("datetime").unique().default(),
        Column().time("time").unique().default(),
        Column().timestamp("timestamp").unique().default(),
        Column().timestamps(),
        Column().softDelete(),

        Column().binary("binary").unique().default(),
        Column().boolean("boolean").unique().default(),
        Column().enumField("enumField", ["a", "b"]).unique().default(),
        Column().json("json").default(%*{"key": "value"}),
      ]),

      # table("mysql", [
      #   Column().increments("increments"),
      #   Column().integer("integer").unique().default(1).unsigned(),
      #   Column().smallInteger("smallInteger").unique().default(1).unsigned(),
      #   Column().mediumInteger("mediumInteger").unique().default(1).unsigned(),
      #   Column().bigInteger("bigInteger").unique().default(1).unsigned(),

      #   Column().decimal("decimal", 5, 2).unique().default(1).unsigned(),
      #   Column().double("double", 5, 2).unique().default(1).unsigned(),
      #   Column().float("float").unique().default(1).unsigned(),

      #   Column().char("char", 100).unique().default(""),
      #   Column().string("string").unique().default(""),
      #   Column().text("text"),
      #   Column().mediumText("mediumText"),
      #   Column().longText("longText"),

      #   Column().date("date").unique().default(),
      #   Column().datetime("datetime").unique().default(),
      #   Column().time("time").unique().default(),
      #   Column().timestamp("timestamp").unique().default(),
      #   Column().timestamps(),
      #   Column().softDelete(),

      #   Column().binary("binary"),
      #   Column().boolean("boolean").unique().default(),
      #   Column().enumField("enumField", ["a", "b"]).unique().default("a"),
      #   Column().json("json"),
      # ]),

      # table("postgres", [
      #   Column().increments("increments"),
      #   Column().integer("integer").unique().default(1).unsigned(),
      #   Column().smallInteger("smallInteger").unique().default(1).unsigned(),
      #   Column().mediumInteger("mediumInteger").unique().default(1).unsigned(),
      #   Column().bigInteger("bigInteger").unique().default(1).unsigned(),

      #   Column().decimal("decimal", 5, 2).unique().default(1).unsigned(),
      #   Column().double("double", 5, 2).unique().default(1).unsigned(),
      #   Column().float("float").unique().default(1).unsigned(),

      #   Column().char("char", 100).unique().default(""),
      #   Column().string("string").unique().default(""),
      #   Column().text("text").unique().default(""),
      #   Column().mediumText("mediumText").unique().default(""),
      #   Column().longText("longText").unique().default(""),

      #   Column().date("date").unique().default(),
      #   Column().datetime("datetime").unique().default(),
      #   Column().time("time").unique().default(),
      #   Column().timestamp("timestamp").unique().default(),
      #   Column().timestamps(),
      #   Column().softDelete(),

      #   Column().binary("binary").unique().default(),
      #   Column().boolean("boolean").unique().default(),
      #   Column().enumField("enumField", ["a", "b"]).unique().default(),
      #   Column().json("json").default(%*{"key": "value"}),
      # ])
    ])
