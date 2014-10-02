.class final Lcom/viber/voip/contacts/c/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/t;


# instance fields
.field final synthetic a:Lcom/viber/jni/GroupUserInfo;


# direct methods
.method constructor <init>(Lcom/viber/jni/GroupUserInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/viber/voip/contacts/c/l;->a:Lcom/viber/jni/GroupUserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 519
    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/c/l;->a:Lcom/viber/jni/GroupUserInfo;

    iget-object v1, v1, Lcom/viber/jni/GroupUserInfo;->clientName:Ljava/lang/String;

    invoke-interface {v0, p2, v1, p1}, Lcom/viber/voip/messages/a/a;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    .line 521
    return-void
.end method
