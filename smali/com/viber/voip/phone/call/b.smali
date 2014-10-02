.class Lcom/viber/voip/phone/call/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/hj;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/viber/voip/phone/call/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/call/a;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/viber/voip/phone/call/b;->d:Lcom/viber/voip/phone/call/a;

    iput-object p2, p0, Lcom/viber/voip/phone/call/b;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/viber/voip/phone/call/b;->b:Z

    iput-object p4, p0, Lcom/viber/voip/phone/call/b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZILjava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v0, p0, Lcom/viber/voip/phone/call/b;->d:Lcom/viber/voip/phone/call/a;

    iget-object v1, p0, Lcom/viber/voip/phone/call/b;->a:Ljava/lang/String;

    sget-object v2, Lcom/viber/voip/phone/call/l;->b:Lcom/viber/voip/phone/call/l;

    iget-boolean v5, p0, Lcom/viber/voip/phone/call/b;->b:Z

    const/4 v6, 0x0

    new-instance v8, Lcom/viber/voip/phone/call/c;

    invoke-direct {v8, p0}, Lcom/viber/voip/phone/call/c;-><init>(Lcom/viber/voip/phone/call/b;)V

    move v4, v3

    move v7, p2

    invoke-static/range {v0 .. v8}, Lcom/viber/voip/phone/call/a;->a(Lcom/viber/voip/phone/call/a;Ljava/lang/String;Lcom/viber/voip/phone/call/l;IZZLjava/lang/String;ILcom/viber/voip/phone/call/i;)V

    .line 162
    return-void
.end method
