.class public Lcom/viber/voip/contacts/ui/cr;
.super Lcom/viber/voip/contacts/ui/ap;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteSend;


# instance fields
.field private h:I

.field private i:[Lcom/viber/voip/messages/controller/GroupController$GroupMember;

.field private j:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ap;-><init>()V

    return-void
.end method


# virtual methods
.method protected f()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 112
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cr;->f:Lcom/viber/voip/contacts/ui/be;

    const/4 v1, 0x3

    iget v2, p0, Lcom/viber/voip/contacts/ui/cr;->d:I

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/cr;->c:Lcom/viber/voip/ui/aa;

    invoke-virtual {v4}, Lcom/viber/voip/ui/aa;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v3

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/contacts/ui/be;->a(IIZZZ)V

    .line 113
    return-void

    :cond_0
    move v4, v5

    .line 112
    goto :goto_0
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method protected j()Lcom/viber/voip/contacts/ui/cb;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/viber/voip/contacts/ui/ct;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/cr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/viber/voip/contacts/ui/ct;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/viber/voip/contacts/ui/co;)V

    return-object v0
.end method

.method protected k()V
    .locals 8

    .prologue
    const v7, 0x7f0c06b4

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 40
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/cr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cr;->c:Lcom/viber/voip/ui/aa;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cr;->c:Lcom/viber/voip/ui/aa;

    invoke-virtual {v0}, Lcom/viber/voip/ui/aa;->g()Z

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cr;->a:Lcom/viber/voip/contacts/ui/cb;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/cr;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/viber/voip/contacts/ui/cb;->a(J)[Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/cr;->i:[Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    .line 45
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cr;->i:[Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    array-length v0, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cr;->e:Lcom/viber/voip/contacts/ui/bp;

    invoke-virtual {v0, v6}, Lcom/viber/voip/contacts/ui/bp;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    :cond_1
    :goto_0
    return-void

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cr;->i:[Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    array-length v0, v0

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    .line 50
    :goto_1
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/cr;->i:[Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 51
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/cr;->i:[Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    iget-object v3, v3, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    :cond_3
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Lcom/viber/jni/controller/PhoneController;->generateSequence()I

    move-result v3

    iput v3, p0, Lcom/viber/voip/contacts/ui/cr;->h:I

    .line 56
    invoke-interface {v0}, Lcom/viber/jni/controller/PhoneController;->getPublicGroupController()Lcom/viber/jni/publicgroup/PublicGroupController;

    move-result-object v0

    iget v3, p0, Lcom/viber/voip/contacts/ui/cr;->h:I

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/cr;->c()J

    move-result-wide v4

    invoke-interface {v0, v3, v2, v4, v5}, Lcom/viber/jni/publicgroup/PublicGroupController;->handleSendPublicGroupInvite(I[Ljava/lang/String;J)Z

    .line 58
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/cr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v7}, Lcom/viber/voip/contacts/ui/cr;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v7}, Lcom/viber/voip/contacts/ui/cr;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v6, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/cr;->j:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/viber/voip/contacts/ui/ap;->onPause()V

    .line 106
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getPublicGroupInviteSendListener()Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener;->removeDelegate(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/viber/voip/contacts/ui/ap;->onResume()V

    .line 99
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getPublicGroupInviteSendListener()Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-virtual {v1}, Lcom/viber/voip/dk;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 101
    return-void
.end method

.method public onSendPublicGroupInviteReply(IJILjava/util/Map;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 65
    iget v0, p0, Lcom/viber/voip/contacts/ui/cr;->h:I

    if-eq p1, v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cr;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 73
    if-nez p4, :cond_3

    .line 74
    const v0, 0x7f0c06b5

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/cr;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cr;->i:[Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    array-length v0, v0

    if-ne v6, v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cr;->i:[Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    aget-object v0, v0, v5

    iget-object v0, v0, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    .line 77
    const v2, 0x7f0c06b6

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/viber/jni/GroupUserInfo;->clientName:Ljava/lang/String;

    invoke-static {v4}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, v0, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    :goto_1
    aput-object v0, v3, v5

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/cr;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/viber/voip/contacts/ui/cr;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 86
    :goto_2
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/cr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/contacts/ui/cs;

    invoke-direct {v3, p0}, Lcom/viber/voip/contacts/ui/cs;-><init>(Lcom/viber/voip/contacts/ui/cr;)V

    invoke-static {v2, v0, v1, v3}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/content/DialogInterface;

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, v0, Lcom/viber/jni/GroupUserInfo;->clientName:Ljava/lang/String;

    goto :goto_1

    .line 79
    :cond_2
    const v0, 0x7f0c06b7

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/cr;->i:[Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/cr;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v0, v2}, Lcom/viber/voip/contacts/ui/cr;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    .line 82
    :cond_3
    const v0, 0x7f0c06b8

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/cr;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    const v1, 0x7f0c06b9

    invoke-virtual {p0, v1}, Lcom/viber/voip/contacts/ui/cr;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method
