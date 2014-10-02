.class Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"


# instance fields
.field private mMVPMatrix:[F

.field private mProgram:I

.field private mSTMatrix:[F

.field private mTextureID:I

.field private mTriangleVertices:Ljava/nio/FloatBuffer;

.field private final mTriangleVerticesData:[F

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mTriangleVerticesData:[F

    .line 63
    new-array v0, v1, [F

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mMVPMatrix:[F

    .line 64
    new-array v0, v1, [F

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mSTMatrix:[F

    .line 67
    const/16 v0, -0x3039

    iput v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mTextureID:I

    .line 74
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mTriangleVerticesData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 77
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mTriangleVerticesData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mSTMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 80
    return-void

    .line 33
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public static checkLocation(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 233
    if-gez p0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to locate \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' in program"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    return-void
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 195
    const v1, 0x8b31

    invoke-direct {p0, v1, p1}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->loadShader(ILjava/lang/String;)I

    move-result v2

    .line 196
    if-nez v2, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    const v1, 0x8b30

    invoke-direct {p0, v1, p2}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 200
    if-eqz v3, :cond_0

    .line 204
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 205
    if-nez v1, :cond_2

    .line 206
    const-string/jumbo v4, "Could not create program"

    #calls: Lorg/webrtc/videoengine/ViEDirectInputSurface;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lorg/webrtc/videoengine/ViEDirectInputSurface;->access$000(Ljava/lang/String;)V

    .line 208
    :cond_2
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 209
    const-string/jumbo v2, "glAttachShader"

    invoke-virtual {p0, v2}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 210
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 211
    const-string/jumbo v2, "glAttachShader"

    invoke-virtual {p0, v2}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 212
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 213
    new-array v2, v5, [I

    .line 214
    const v3, 0x8b82

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 215
    aget v2, v2, v0

    if-eq v2, v5, :cond_3

    .line 216
    const-string/jumbo v2, "Could not link program: "

    #calls: Lorg/webrtc/videoengine/ViEDirectInputSurface;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lorg/webrtc/videoengine/ViEDirectInputSurface;->access$000(Ljava/lang/String;)V

    .line 217
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lorg/webrtc/videoengine/ViEDirectInputSurface;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lorg/webrtc/videoengine/ViEDirectInputSurface;->access$000(Ljava/lang/String;)V

    .line 218
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 179
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "glCreateShader type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 181
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 182
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 183
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 184
    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 185
    aget v2, v2, v0

    if-nez v2, :cond_0

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not compile shader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lorg/webrtc/videoengine/ViEDirectInputSurface;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lorg/webrtc/videoengine/ViEDirectInputSurface;->access$000(Ljava/lang/String;)V

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lorg/webrtc/videoengine/ViEDirectInputSurface;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lorg/webrtc/videoengine/ViEDirectInputSurface;->access$000(Ljava/lang/String;)V

    .line 188
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 191
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public changeFragmentShader(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    const-string/jumbo p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 171
    :cond_0
    iget v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 172
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-direct {p0, v0, p1}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mProgram:I

    .line 173
    iget v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mProgram:I

    if-nez v0, :cond_1

    .line 174
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_1
    return-void
.end method

.method public checkGlError(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 226
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lorg/webrtc/videoengine/ViEDirectInputSurface;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lorg/webrtc/videoengine/ViEDirectInputSurface;->access$000(Ljava/lang/String;)V

    .line 228
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_0
    return-void
.end method

.method public drawFrame(Landroid/graphics/SurfaceTexture;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x1

    const/high16 v4, 0x3f80

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 87
    const-string/jumbo v0, "onDrawFrame start"

    invoke-virtual {p0, v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mSTMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 91
    invoke-static {v2, v4, v2, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 92
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 94
    iget v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 95
    const-string/jumbo v0, "glUseProgram"

    invoke-virtual {p0, v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 97
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 98
    const v0, 0x8d65

    iget v2, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mTextureID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 100
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 101
    iget v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->maPositionHandle:I

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 103
    const-string/jumbo v0, "glVertexAttribPointer maPosition"

    invoke-virtual {p0, v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 104
    iget v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 105
    const-string/jumbo v0, "glEnableVertexAttribArray maPositionHandle"

    invoke-virtual {p0, v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    iget v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->maTextureHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 110
    const-string/jumbo v0, "glVertexAttribPointer maTextureHandle"

    invoke-virtual {p0, v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 111
    iget v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 112
    const-string/jumbo v0, "glEnableVertexAttribArray maTextureHandle"

    invoke-virtual {p0, v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mMVPMatrix:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 115
    iget v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->muMVPMatrixHandle:I

    iget-object v1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mMVPMatrix:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 116
    iget v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->muSTMatrixHandle:I

    iget-object v1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mSTMatrix:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 118
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 119
    const-string/jumbo v0, "glDrawArrays"

    invoke-virtual {p0, v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 125
    const v0, 0x8d65

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 126
    return-void
.end method

.method public getTextureId()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mTextureID:I

    return v0
.end method

.method public surfaceCreated()V
    .locals 6

    .prologue
    const v5, 0x812f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x8d65

    .line 132
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string/jumbo v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {p0, v0, v1}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mProgram:I

    .line 133
    iget v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mProgram:I

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iget v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mProgram:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->maPositionHandle:I

    .line 137
    iget v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->maPositionHandle:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->checkLocation(ILjava/lang/String;)V

    .line 138
    iget v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mProgram:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->maTextureHandle:I

    .line 139
    iget v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->maTextureHandle:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->checkLocation(ILjava/lang/String;)V

    .line 141
    iget v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mProgram:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->muMVPMatrixHandle:I

    .line 142
    iget v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->muMVPMatrixHandle:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->checkLocation(ILjava/lang/String;)V

    .line 143
    iget v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mProgram:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->muSTMatrixHandle:I

    .line 144
    iget v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->muSTMatrixHandle:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->checkLocation(ILjava/lang/String;)V

    .line 146
    new-array v0, v4, [I

    .line 147
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 149
    aget v0, v0, v3

    iput v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mTextureID:I

    .line 150
    iget v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->mTextureID:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 151
    const-string/jumbo v0, "glBindTexture mTextureID"

    invoke-virtual {p0, v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 153
    const/16 v0, 0x2801

    const/high16 v1, 0x4618

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 155
    const/16 v0, 0x2800

    const v1, 0x46180400

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 157
    const/16 v0, 0x2802

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 159
    const/16 v0, 0x2803

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 161
    const-string/jumbo v0, "glTexParameter"

    invoke-virtual {p0, v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 162
    return-void
.end method
