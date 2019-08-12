package io.github.karuppiah.hangoutsChatDemo

import com.github.kittinunf.fuel.Fuel
import com.github.kittinunf.fuel.core.extensions.jsonBody

fun main(args: Array<String>) {
    val webhook: String = System.getenv("WEBHOOK") ?: throw Exception("webhook not set")

    val (request, response, _) = Fuel.post(webhook)
            .jsonBody("{ \"text\" : \"kotlin app. wow!\" }")
            .also { println(it) }
            .response()

    println(request)
    println(response)
}
