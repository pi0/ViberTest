.class public interface abstract Lcom/viber/dexshared/TwitterHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getOAuthAccessTokenTask(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getTwitterAuthorizationURL(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract init(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract isAccessTokenExists(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract resetTwitterOAuthAccessToken()V
.end method

.method public abstract setTwitterAccessToken(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateTwitterStatus(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract uploadImage(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
.end method
