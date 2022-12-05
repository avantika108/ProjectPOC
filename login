swagger: '2.0'
info:
  description: Api Documentation
  version: '1.0'
  title: Api Documentation
  termsOfService: urn:tos
  contact: {}
  license:
    name: Apache 2.0
    url: http://www.apache.org/licenses/LICENSE-2.0
host: 172.23.25.62:8080
basePath: /
tags:
  - name: caching-controller
    description: Caching Controller
  - name: login-controller
    description: Login Controller
  - name: health-controller
    description: Health Controller
paths:
  /login/cache/v1/clearCache:
    post:
      tags:
        - caching-controller
      summary: clearAll
      operationId: clearAllUsingPOST
      consumes:
        - application/json
      produces:
        - '*/*'
      parameters:
        - in: body
          name: request
          description: request
          required: true
          schema:
            $ref: '#/definitions/CacheKeyReqModel'
      responses:
        '200':
          description: OK
        '201':
          description: Created
        '401':
          description: Unauthorized
        '403':
          description: Forbidden
        '404':
          description: Not Found
  /login/cache/v1/clearIndividualCache/{cacheName}:
    get:
      tags:
        - caching-controller
      summary: clearIndividualCache
      operationId: clearIndividualCacheUsingGET
      consumes:
        - application/json
      produces:
        - '*/*'
      parameters:
        - name: cacheName
          in: path
          description: cacheName
          required: true
          type: string
      responses:
        '200':
          description: OK
        '401':
          description: Unauthorized
        '403':
          description: Forbidden
        '404':
          description: Not Found
  /login/healthService/v1/echo:
    get:
      tags:
        - health-controller
      summary: echo
      operationId: echoUsingGET
      consumes:
        - application/json
      produces:
        - '*/*'
      responses:
        '200':
          description: OK
          schema:
            type: object
        '401':
          description: Unauthorized
        '403':
          description: Forbidden
        '404':
          description: Not Found
  /login/v1/authentication:
    post:
      tags:
        - login-controller
      summary: checkforCredentials
      operationId: checkforCredentialsUsingPOST
      consumes:
        - application/json
      produces:
        - application/json
      parameters:
        - in: body
          name: request
          description: request
          required: true
          schema:
            $ref: '#/definitions/AuthenticationRequestModel'
        - name: headers
          in: header
          description: headers
          required: true
          items:
            type: object
            additionalProperties:
              type: string
      responses:
        '200':
          description: OK
          schema:
            type: object
        '201':
          description: Created
        '401':
          description: Unauthorized
        '403':
          description: Forbidden
        '404':
          description: Not Found
  /login/v1/changepassword:
    post:
      tags:
        - login-controller
      summary: changePassword
      operationId: changePasswordUsingPOST
      consumes:
        - application/json
      produces:
        - '*/*'
      parameters:
        - in: body
          name: request
          description: request
          required: true
          schema:
            $ref: '#/definitions/ChangePasswordRequestModel'
        - name: headers
          in: header
          description: headers
          required: true
          items:
            type: object
            additionalProperties:
              type: string
      responses:
        '200':
          description: OK
          schema:
            type: object
        '201':
          description: Created
        '401':
          description: Unauthorized
        '403':
          description: Forbidden
        '404':
          description: Not Found
  /login/v1/checkOTP:
    post:
      tags:
        - login-controller
      summary: checkOTPGenerationServlet
      operationId: checkOTPGenerationServletUsingPOST
      consumes:
        - application/json
      produces:
        - '*/*'
      parameters:
        - in: body
          name: reqbody
          description: reqbody
          required: true
          schema:
            $ref: '#/definitions/CheckOtpRequestBody'
        - name: headers
          in: header
          description: headers
          required: true
          items:
            type: object
            additionalProperties:
              type: string
      responses:
        '200':
          description: OK
          schema:
            type: object
        '201':
          description: Created
        '401':
          description: Unauthorized
        '403':
          description: Forbidden
        '404':
          description: Not Found
  /login/v1/failed/{uid}:
    put:
      tags:
        - login-controller
      summary: updateFailedCount
      operationId: updateFailedCountUsingPUT
      consumes:
        - application/json
      produces:
        - '*/*'
      parameters:
        - name: uid
          in: path
          description: uid
          required: true
          type: string
      responses:
        '200':
          description: OK
          schema:
            type: object
        '201':
          description: Created
        '401':
          description: Unauthorized
        '403':
          description: Forbidden
        '404':
          description: Not Found
  /login/v1/fetchByRedirectionToken/{token}:
    get:
      tags:
        - login-controller
      summary: fetchByRedirectionToken
      operationId: fetchByRedirectionTokenUsingGET
      consumes:
        - application/json
      produces:
        - '*/*'
      parameters:
        - name: token
          in: path
          description: token
          required: true
          type: string
      responses:
        '200':
          description: OK
          schema:
            type: object
        '401':
          description: Unauthorized
        '403':
          description: Forbidden
        '404':
          description: Not Found
  /login/v1/generateToken:
    post:
      tags:
        - login-controller
      summary: generateTokenForRedirection
      operationId: generateTokenForRedirectionUsingPOST
      consumes:
        - application/json
      produces:
        - '*/*'
      parameters:
        - in: body
          name: request
          description: request
          required: true
          schema:
            $ref: '#/definitions/RedirectionLoginReq'
      responses:
        '200':
          description: OK
          schema:
            type: object
        '201':
          description: Created
        '401':
          description: Unauthorized
        '403':
          description: Forbidden
        '404':
          description: Not Found
  /login/v1/getLoginDetails/{uid}:
    get:
      tags:
        - login-controller
      summary: getLoginDetailsInfo
      operationId: getLoginDetailsInfoUsingGET
      consumes:
        - application/json
      produces:
        - '*/*'
      parameters:
        - name: uid
          in: path
          description: uid
          required: true
          type: string
      responses:
        '200':
          description: OK
          schema:
            type: object
        '401':
          description: Unauthorized
        '403':
          description: Forbidden
        '404':
          description: Not Found
  /login/v1/init:
    post:
      tags:
        - login-controller
      summary: createInitToken
      operationId: createInitTokenUsingPOST
      consumes:
        - application/json
      produces:
        - '*/*'
      parameters:
        - in: body
          name: request
          description: request
          required: true
          schema:
            $ref: '#/definitions/InitTokenRequestModel'
      responses:
        '200':
          description: OK
          schema:
            type: object
        '201':
          description: Created
        '401':
          description: Unauthorized
        '403':
          description: Forbidden
        '404':
          description: Not Found
  /login/v1/loginService:
    post:
      tags:
        - login-controller
      summary: checkforCredentialsV1
      operationId: checkforCredentialsV1UsingPOST
      consumes:
        - application/json
      produces:
        - '*/*'
      parameters:
        - in: body
          name: loginServiceReq
          description: loginServiceReq
          required: true
          schema:
            $ref: '#/definitions/LoginServiceReqModel'
      responses:
        '200':
          description: OK
          schema:
            type: object
        '201':
          description: Created
        '401':
          description: Unauthorized
        '403':
          description: Forbidden
        '404':
          description: Not Found
  /login/v1/omniLoginServlet:
    post:
      tags:
        - login-controller
      summary: omniLoginServlet
      operationId: omniLoginServletUsingPOST
      consumes:
        - application/json
      produces:
        - '*/*'
      parameters:
        - in: body
          name: req
          description: req
          required: true
          schema:
            $ref: '#/definitions/JsonNode'
      responses:
        '200':
          description: OK
          schema:
            type: object
        '201':
          description: Created
        '401':
          description: Unauthorized
        '403':
          description: Forbidden
        '404':
          description: Not Found
  /login/v1/otpGeneration/{uid}:
    get:
      tags:
        - login-controller
      summary: generateOTP
      operationId: generateOTPUsingGET
      consumes:
        - application/json
      produces:
        - '*/*'
      parameters:
        - name: uid
          in: path
          description: uid
          required: true
          type: string
      responses:
        '200':
          description: OK
          schema:
            type: object
        '401':
          description: Unauthorized
        '403':
          description: Forbidden
        '404':
          description: Not Found
  /login/v1/success/{uid}:
    put:
      tags:
        - login-controller
      summary: updateLastLoginTime
      operationId: updateLastLoginTimeUsingPUT
      consumes:
        - application/json
      produces:
        - '*/*'
      parameters:
        - name: uid
          in: path
          description: uid
          required: true
          type: string
        - name: headers
          in: header
          description: headers
          required: true
          items:
            type: object
            additionalProperties:
              type: string
      responses:
        '200':
          description: OK
          schema:
            type: object
        '201':
          description: Created
        '401':
          description: Unauthorized
        '403':
          description: Forbidden
        '404':
          description: Not Found
  /login/v1/verifyUser:
    post:
      tags:
        - login-controller
      summary: verifyUser
      operationId: verifyUserUsingPOST
      consumes:
        - application/json
      produces:
        - '*/*'
      parameters:
        - in: body
          name: req
          description: req
          required: true
          schema:
            $ref: '#/definitions/RequestModel'
      responses:
        '200':
          description: OK
          schema:
            type: object
        '201':
          description: Created
        '401':
          description: Unauthorized
        '403':
          description: Forbidden
        '404':
          description: Not Found
definitions:
  ChangePasswordRequestModel:
    type: object
    properties:
      AC:
        type: string
      ACN:
        type: string
      DVID:
        type: string
      PWD:
        type: string
      UID:
        type: string
  LoginServiceReqModel:
    type: object
    properties:
      PASSWORD:
        type: string
      USERID:
        type: string
  RequestModel:
    type: object
    properties:
      userId:
        type: string
  RedirectionLoginReq:
    type: object
    properties:
      AGENT_CODE:
        type: string
      LEAD_ID:
        type: string
      PGL_ID:
        type: string
      SUITABILITY_ID:
        type: string
  JsonNode:
    type: object
  CacheKeyReqModel:
    type: object
    properties:
      keyNames:
        type: array
        items:
          type: string
  CheckOtpRequestBody:
    type: object
    properties:
      otp:
        type: string
      useCaseName:
        type: string
      userId:
        type: string
  AuthenticationRequestModel:
    type: object
    properties:
      aid:
        type: string
      authDetails:
        type: string
      businessTypeId:
        type: string
  InitTokenRequestModel:
    type: object
    properties:
      channel:
        type: string
      secret:
        type: string
