.class Lcom/viber/voip/messages/controller/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/bx;


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:Lcom/viber/voip/messages/controller/ak;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ak;IJJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/viber/voip/messages/controller/br;->e:Lcom/viber/voip/messages/controller/ak;

    iput p2, p0, Lcom/viber/voip/messages/controller/br;->a:I

    iput-wide p3, p0, Lcom/viber/voip/messages/controller/br;->b:J

    iput-wide p5, p0, Lcom/viber/voip/messages/controller/br;->c:J

    iput-wide p7, p0, Lcom/viber/voip/messages/controller/br;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/x;)V
    .locals 8
    .parameter

    .prologue
    .line 452
    iget v1, p0, Lcom/viber/voip/messages/controller/br;->a:I

    iget-wide v2, p0, Lcom/viber/voip/messages/controller/br;->b:J

    iget-wide v4, p0, Lcom/viber/voip/messages/controller/br;->c:J

    iget-wide v6, p0, Lcom/viber/voip/messages/controller/br;->d:J

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/viber/voip/messages/controller/x;->a(IJJJ)V

    .line 453
    return-void
.end method
