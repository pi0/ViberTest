.class Lcom/viber/voip/messages/controller/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/bx;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/viber/voip/messages/controller/ak;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ak;JLjava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/viber/voip/messages/controller/ax;->e:Lcom/viber/voip/messages/controller/ak;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/ax;->a:J

    iput-object p4, p0, Lcom/viber/voip/messages/controller/ax;->b:Ljava/lang/String;

    iput p5, p0, Lcom/viber/voip/messages/controller/ax;->c:I

    iput p6, p0, Lcom/viber/voip/messages/controller/ax;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/x;)V
    .locals 6
    .parameter

    .prologue
    .line 262
    iget-wide v1, p0, Lcom/viber/voip/messages/controller/ax;->a:J

    iget-object v3, p0, Lcom/viber/voip/messages/controller/ax;->b:Ljava/lang/String;

    iget v4, p0, Lcom/viber/voip/messages/controller/ax;->c:I

    iget v5, p0, Lcom/viber/voip/messages/controller/ax;->d:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/viber/voip/messages/controller/x;->a(JLjava/lang/String;II)V

    .line 263
    return-void
.end method
