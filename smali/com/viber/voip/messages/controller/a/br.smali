.class public Lcom/viber/voip/messages/controller/a/br;
.super Lcom/viber/voip/messages/controller/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/dn;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/a/a;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/br;->c:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private a(Landroid/net/Uri;Lcom/viber/voip/messages/controller/a/bx;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/br;->c:Landroid/content/Context;

    const/16 v1, 0xde

    invoke-static {v0, p1, v1}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;Landroid/net/Uri;I)Lcom/viber/voip/messages/extras/image/a;

    move-result-object v0

    .line 135
    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/viber/voip/messages/controller/a/bx;->a(Landroid/net/Uri;)V

    .line 164
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, v0, Lcom/viber/voip/messages/extras/image/a;->a:Landroid/net/Uri;

    new-instance v1, Lcom/viber/voip/messages/controller/a/bu;

    invoke-direct {v1, p0, p2, p1}, Lcom/viber/voip/messages/controller/a/bu;-><init>(Lcom/viber/voip/messages/controller/a/br;Lcom/viber/voip/messages/controller/a/bx;Landroid/net/Uri;)V

    invoke-static {v0, p1, v1}, Lcom/viber/voip/util/upload/ac;->a(Landroid/net/Uri;Landroid/net/Uri;Lcom/viber/voip/util/upload/p;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/controller/a/br;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/controller/a/br;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 247
    const/4 v0, 0x3

    const-string/jumbo v1, "UserDataDelegate"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "doUpdateUserPhoto New: uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/a/br;->b(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/viber/voip/user/UserData;->getImage()Landroid/net/Uri;

    move-result-object v0

    .line 99
    invoke-static {v2}, Lcom/viber/voip/user/UserData;->setNeedSyncUserInfo(Z)V

    .line 100
    invoke-static {v2}, Lcom/viber/voip/user/UserData;->setPhotoUploadedToServer(Z)V

    .line 101
    const-string/jumbo v1, ""

    invoke-static {v1, p1}, Lcom/viber/voip/user/UserData;->setImage(Ljava/lang/String;Landroid/net/Uri;)V

    .line 103
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 107
    :cond_0
    if-eqz p1, :cond_2

    .line 108
    const-string/jumbo v0, "doUpdateUserPhoto user image was changed we need to upload it to server!"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/a/br;->b(Ljava/lang/String;)V

    .line 109
    new-instance v0, Lcom/viber/voip/messages/controller/a/bt;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/controller/a/bt;-><init>(Lcom/viber/voip/messages/controller/a/br;)V

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/messages/controller/a/br;->a(Landroid/net/Uri;Lcom/viber/voip/messages/controller/a/bx;)V

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 120
    :cond_2
    if-nez p1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/br;->b:Lcom/viber/jni/PhoneControllerWrapper;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viber/jni/PhoneControllerWrapper;->handleUpdateUserPhoto(J)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "doUpdateUserName newName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/a/br;->b(Ljava/lang/String;)V

    .line 169
    invoke-static {p1}, Lcom/viber/voip/user/UserData;->setName(Ljava/lang/String;)V

    .line 170
    invoke-static {v2}, Lcom/viber/voip/user/UserData;->setNameUploadedToServer(Z)V

    .line 171
    invoke-static {v2}, Lcom/viber/voip/user/UserData;->setNeedSyncUserInfo(Z)V

    .line 172
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/br;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerWrapper;->handleUpdateUserName(Ljava/lang/String;)Z

    .line 173
    return-void
.end method

.method public a([Ljava/lang/String;Lcom/viber/voip/messages/controller/do;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 179
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 180
    aget-object v3, p1, v0

    if-eqz v3, :cond_0

    .line 181
    aget-object v3, p1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 189
    new-instance v1, Lcom/viber/voip/messages/controller/a/bv;

    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/br;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-direct {v1, p0, p2, v0, v2}, Lcom/viber/voip/messages/controller/a/bv;-><init>(Lcom/viber/voip/messages/controller/a/br;Lcom/viber/voip/messages/controller/do;[Ljava/lang/String;Lcom/viber/jni/PhoneControllerWrapper;)V

    .line 190
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/jni/PhoneControllerWrapper;->handleGetUsersDetail([Ljava/lang/String;)Z

    .line 191
    return-void
.end method

.method public onServiceStateChanged(I)V
    .locals 3
    .parameter

    .prologue
    .line 46
    sget-object v0, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 48
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "should_deactivate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkShouldDeactivate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/controller/a/br;->b(Ljava/lang/String;)V

    .line 50
    if-eqz v0, :cond_1

    .line 51
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/registration/ActivationController;->deActivate(Landroid/content/Context;Z)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceStateChanged state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/a/br;->b(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/viber/voip/user/UserData;->isUserPhotoUploadedToServer()Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    invoke-static {}, Lcom/viber/voip/user/UserData;->getImage()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/controller/a/br;->a(Landroid/net/Uri;)V

    .line 61
    :cond_2
    invoke-static {}, Lcom/viber/voip/user/UserData;->isUserNameUploadedToServer()Z

    move-result v0

    if-nez v0, :cond_3

    .line 62
    invoke-static {}, Lcom/viber/voip/user/UserData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/controller/a/br;->a(Ljava/lang/String;)V

    .line 65
    :cond_3
    invoke-static {}, Lcom/viber/voip/user/UserData;->isNeedSyncUserInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string/jumbo v0, "sync user info"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/a/br;->b(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/viber/voip/messages/controller/a/bs;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/controller/a/bs;-><init>(Lcom/viber/voip/messages/controller/a/br;)V

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/c/a;->a(Ljava/lang/String;Lcom/viber/voip/contacts/c/v;)V

    goto :goto_0
.end method

.method public onUpdateUserName(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "doUpdateUserName.onUpdateUserName status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/a/br;->b(Ljava/lang/String;)V

    .line 81
    if-ne p1, v2, :cond_0

    .line 82
    invoke-static {v2}, Lcom/viber/voip/user/UserData;->setNameUploadedToServer(Z)V

    .line 84
    :cond_0
    return-void
.end method

.method public onUpdateUserPhoto(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "doUpdateUserPhoto onUpdateUserPhoto status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/a/br;->b(Ljava/lang/String;)V

    .line 89
    if-ne p1, v2, :cond_0

    .line 90
    const-string/jumbo v0, "doUpdateUserPhoto deleting old file from sd..."

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/a/br;->b(Ljava/lang/String;)V

    .line 91
    invoke-static {v2}, Lcom/viber/voip/user/UserData;->setPhotoUploadedToServer(Z)V

    .line 93
    :cond_0
    return-void
.end method
