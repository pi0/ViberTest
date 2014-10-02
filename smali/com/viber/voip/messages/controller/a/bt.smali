.class Lcom/viber/voip/messages/controller/a/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/a/bx;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/a/br;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/br;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/bt;->a:Lcom/viber/voip/messages/controller/a/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 112
    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 113
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/bt;->a:Lcom/viber/voip/messages/controller/a/br;

    iget-object v2, v2, Lcom/viber/voip/messages/controller/a/br;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v2, v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->handleUpdateUserPhoto(J)Z

    .line 114
    return-void
.end method
