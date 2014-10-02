.class Lcom/viber/voip/messages/controller/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/c/al;


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/viber/voip/messages/controller/c/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c/e;IJJLjava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/k;->e:Lcom/viber/voip/messages/controller/c/e;

    iput p2, p0, Lcom/viber/voip/messages/controller/c/k;->a:I

    iput-wide p3, p0, Lcom/viber/voip/messages/controller/c/k;->b:J

    iput-wide p5, p0, Lcom/viber/voip/messages/controller/c/k;->c:J

    iput-object p7, p0, Lcom/viber/voip/messages/controller/c/k;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/dc;)V
    .locals 7
    .parameter

    .prologue
    .line 314
    iget v1, p0, Lcom/viber/voip/messages/controller/c/k;->a:I

    iget-wide v2, p0, Lcom/viber/voip/messages/controller/c/k;->b:J

    iget-wide v4, p0, Lcom/viber/voip/messages/controller/c/k;->c:J

    iget-object v6, p0, Lcom/viber/voip/messages/controller/c/k;->d:Ljava/util/Map;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/messages/controller/dc;->a(IJJLjava/util/Map;)V

    .line 315
    return-void
.end method
