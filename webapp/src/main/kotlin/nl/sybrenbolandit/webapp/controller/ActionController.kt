package nl.sybrenbolandit.webapp.controller

import io.micronaut.http.annotation.Controller
import io.micronaut.http.annotation.Get
import io.micronaut.validation.Validated
import io.reactivex.Single
import nl.sybrenbolandit.persistence.model.Action
import nl.sybrenbolandit.persistence.repository.ActionRepository

@Validated
@Controller("/actions")
class ActionController(val actionRepository: ActionRepository) {

    @Get("/")
    fun getActions(): Single<List<Action>> {
        return actionRepository.fetchActions()
    }
}
