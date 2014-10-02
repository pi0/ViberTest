.class final Lcom/viber/voip/user/UserDataFileKeeper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$recoverReply:Lcom/viber/voip/user/UserDataFileKeeper$RecoverReply;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/UserDataFileKeeper$RecoverReply;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/viber/voip/user/UserDataFileKeeper$2;->val$recoverReply:Lcom/viber/voip/user/UserDataFileKeeper$RecoverReply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 69
    const-string/jumbo v0, "obtainLocalUserInfo"

    #calls: Lcom/viber/voip/user/UserDataFileKeeper;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFileKeeper;->access$000(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/viber/voip/w;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 75
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    const/16 v3, 0x800

    new-array v3, v3, [C

    .line 79
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 80
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "obtainLocalUserInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/viber/voip/user/UserDataFileKeeper;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFileKeeper;->access$000(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFileKeeper$2;->val$recoverReply:Lcom/viber/voip/user/UserDataFileKeeper$RecoverReply;

    invoke-interface {v0}, Lcom/viber/voip/user/UserDataFileKeeper$RecoverReply;->onError()V

    .line 101
    :goto_1
    return-void

    .line 82
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/user/UserDataFileKeeper$2;->val$recoverReply:Lcom/viber/voip/user/UserDataFileKeeper$RecoverReply;

    invoke-static {v2, v3}, Lcom/viber/voip/user/UserDataFileKeeper;->parseUserData(Ljava/lang/String;Lcom/viber/voip/user/UserDataFileKeeper$RecoverReply;)V

    .line 83
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 84
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 92
    :catch_1
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "obtainLocalUserInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/viber/voip/user/UserDataFileKeeper;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFileKeeper;->access$000(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFileKeeper$2;->val$recoverReply:Lcom/viber/voip/user/UserDataFileKeeper$RecoverReply;

    invoke-interface {v0}, Lcom/viber/voip/user/UserDataFileKeeper$RecoverReply;->onError()V

    goto :goto_1

    .line 86
    :cond_1
    :try_start_2
    const-string/jumbo v0, "obtainLocalUserInfo no such file!"

    #calls: Lcom/viber/voip/user/UserDataFileKeeper;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFileKeeper;->access$000(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFileKeeper$2;->val$recoverReply:Lcom/viber/voip/user/UserDataFileKeeper$RecoverReply;

    invoke-interface {v0}, Lcom/viber/voip/user/UserDataFileKeeper$RecoverReply;->onError()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 97
    :cond_2
    const-string/jumbo v0, "obtainLocalUserInfo NO SD CARD!"

    #calls: Lcom/viber/voip/user/UserDataFileKeeper;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFileKeeper;->access$000(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFileKeeper$2;->val$recoverReply:Lcom/viber/voip/user/UserDataFileKeeper$RecoverReply;

    invoke-interface {v0}, Lcom/viber/voip/user/UserDataFileKeeper$RecoverReply;->onError()V

    goto :goto_1
.end method
