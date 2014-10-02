.class Lcom/viber/voip/phone/call/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/hj;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/viber/voip/phone/call/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/call/a;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/viber/voip/phone/call/d;->e:Lcom/viber/voip/phone/call/a;

    iput-object p2, p0, Lcom/viber/voip/phone/call/d;->a:Ljava/lang/String;

    iput p3, p0, Lcom/viber/voip/phone/call/d;->b:I

    iput-boolean p4, p0, Lcom/viber/voip/phone/call/d;->c:Z

    iput-object p5, p0, Lcom/viber/voip/phone/call/d;->d:Ljava/lang/String;

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
    .line 224
    iget-object v0, p0, Lcom/viber/voip/phone/call/d;->e:Lcom/viber/voip/phone/call/a;

    iget-object v1, p0, Lcom/viber/voip/phone/call/d;->a:Ljava/lang/String;

    sget-object v2, Lcom/viber/voip/phone/call/l;->a:Lcom/viber/voip/phone/call/l;

    iget v3, p0, Lcom/viber/voip/phone/call/d;->b:I

    iget-boolean v4, p0, Lcom/viber/voip/phone/call/d;->c:Z

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/viber/voip/phone/call/d;->d:Ljava/lang/String;

    const/4 v8, 0x0

    move v7, p2

    invoke-static/range {v0 .. v8}, Lcom/viber/voip/phone/call/a;->a(Lcom/viber/voip/phone/call/a;Ljava/lang/String;Lcom/viber/voip/phone/call/l;IZZLjava/lang/String;ILcom/viber/voip/phone/call/i;)V

    .line 225
    return-void
.end method
