.class public interface abstract Lcom/viber/voip/util/http/HttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ENCODING:Ljava/lang/String; = "utf-8"


# virtual methods
.method public abstract addParam(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addParam(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract disableSSLCheck()V
.end method

.method public abstract getContentLength()J
.end method

.method public abstract getErrorStream()Ljava/io/InputStream;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
.end method

.method public abstract getRequestMethod()Ljava/lang/String;
.end method

.method public abstract getResponseCode()I
.end method

.method public abstract getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getResponseHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract setConnectTimeout(I)V
.end method

.method public abstract setFollowRedirects(Z)V
.end method

.method public abstract setPost(Z)V
.end method

.method public abstract setPost(ZZ)V
.end method

.method public abstract setReadTimeout(I)V
.end method

.method public abstract setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method
