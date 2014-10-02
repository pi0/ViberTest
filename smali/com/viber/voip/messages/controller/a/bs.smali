.class Lcom/viber/voip/messages/controller/a/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/v;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/a/br;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/br;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/bs;->a:Lcom/viber/voip/messages/controller/a/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/contacts/c/q;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/viber/voip/user/UserData;->setNeedSyncUserInfo(Z)V

    .line 72
    return-void
.end method
