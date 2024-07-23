package com.example.demo.user

import org.assertj.core.api.Assertions.assertThat
import org.junit.jupiter.api.Assertions.*
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest

@SpringBootTest
class UserControllerTest {

    @Autowired
    private val controller: UserController? = null

    @Test
    @Throws(Exception::class)
    fun contextLoads() {
        assertThat(controller).isNotNull()
    }

    @Test
    @Throws(Exception::class)
    fun create_user() {
        val user = User(1, "John", "john@mail.com")
        val res = controller?.createUser(user)
        assertEquals(res?.statusCodeValue, 201)

        if (res != null) {
            controller?.deleteUserById(res.body!!.id)
        }
    }
}