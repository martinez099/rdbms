package com.redislabs.demo.rdbms;

import com.redislabs.demo.rdbms.application.API;
import com.redislabs.demo.rdbms.application.JsonTransformer;
import com.redislabs.demo.rdbms.pojo.Author;
import com.redislabs.demo.rdbms.pojo.Book;
import com.redislabs.demo.rdbms.pojo.Picture;

import static spark.Spark.*;

public class Main {

    public static void main(String[] args) {

        API api = new API();

        get("/author/:id", "application/json", (req, res) -> {
            String id = req.params(":id");
            return api.get(Author.class, Integer.valueOf(id));
        }, new JsonTransformer());

        get("/book/:id", "application/json", (req, res) -> {
            String id = req.params(":id");
            return api.get(Book.class, Integer.valueOf(id));
        }, new JsonTransformer());

        get("/picture/:id", "application/json", (req, res) -> {
            String id = req.params(":id");
            return api.get(Picture.class, Integer.valueOf(id));
        }, new JsonTransformer());
    }
}
