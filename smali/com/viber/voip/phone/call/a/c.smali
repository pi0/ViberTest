.class Lcom/viber/voip/phone/call/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/hj;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/call/a/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/call/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/viber/voip/phone/call/a/c;->a:Lcom/viber/voip/phone/call/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZILjava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 90
    if-nez p2, :cond_0

    .line 91
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/c;->a:Lcom/viber/voip/phone/call/a/b;

    iget-object v1, p0, Lcom/viber/voip/phone/call/a/c;->a:Lcom/viber/voip/phone/call/a/b;

    invoke-static {v1}, Lcom/viber/voip/phone/call/a/b;->a(Lcom/viber/voip/phone/call/a/b;)Lcom/viber/voip/phone/call/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/call/a/c;->a:Lcom/viber/voip/phone/call/a/b;

    invoke-static {v2}, Lcom/viber/voip/phone/call/a/b;->a(Lcom/viber/voip/phone/call/a/b;)Lcom/viber/voip/phone/call/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/CallerInfo;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-wide v5, v3

    invoke-static/range {v0 .. v7}, Lcom/viber/voip/phone/call/a/b;->a(Lcom/viber/voip/phone/call/a/b;Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;)V

    .line 93
    :cond_0
    return-void
.end method
