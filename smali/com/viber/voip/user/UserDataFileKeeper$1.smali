.class final Lcom/viber/voip/user/UserDataFileKeeper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$canonizedNumber:Ljava/lang/String;

.field final synthetic val$downloadId:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$photoUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/viber/voip/user/UserDataFileKeeper$1;->val$canonizedNumber:Ljava/lang/String;

    iput-object p2, p0, Lcom/viber/voip/user/UserDataFileKeeper$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/user/UserDataFileKeeper$1;->val$photoUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/viber/voip/user/UserDataFileKeeper$1;->val$downloadId:Ljava/lang/String;

    iput-object p5, p0, Lcom/viber/voip/user/UserDataFileKeeper$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveUserInfoToFile canonizedNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/user/UserDataFileKeeper$1;->val$canonizedNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/user/UserDataFileKeeper$1;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", photoUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/user/UserDataFileKeeper$1;->val$photoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", downloadId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/user/UserDataFileKeeper$1;->val$downloadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/viber/voip/user/UserDataFileKeeper;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFileKeeper;->access$000(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/viber/voip/w;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 49
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 50
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFileKeeper$1;->val$canonizedNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/user/UserDataFileKeeper$1;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/viber/voip/user/UserDataFileKeeper$1;->val$photoUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/viber/voip/user/UserDataFileKeeper$1;->val$downloadId:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Lcom/viber/voip/user/UserDataFileKeeper;->getJSONWithUserData(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 51
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 52
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 53
    const-string/jumbo v0, "saveNumberToFile - OK"

    #calls: Lcom/viber/voip/user/UserDataFileKeeper;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFileKeeper;->access$000(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFileKeeper$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/user/UserDataFileKeeper$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 61
    :cond_2
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveUserInfoToFile:"

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

    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveUserInfoToFile:"

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

    goto :goto_0
.end method
