.class Lcom/viber/voip/messages/extras/fb/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/fb/s;

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:I


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/extras/fb/s;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 873
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/ai;->a:Lcom/viber/voip/messages/extras/fb/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 874
    iput-wide p2, p0, Lcom/viber/voip/messages/extras/fb/ai;->b:J

    .line 875
    iput-object p4, p0, Lcom/viber/voip/messages/extras/fb/ai;->c:Ljava/lang/String;

    .line 876
    iput-object p5, p0, Lcom/viber/voip/messages/extras/fb/ai;->d:Ljava/lang/String;

    .line 877
    iput-object p6, p0, Lcom/viber/voip/messages/extras/fb/ai;->e:Ljava/lang/String;

    .line 878
    iput p7, p0, Lcom/viber/voip/messages/extras/fb/ai;->f:I

    .line 879
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FacebookManager$SharingListener.onComplete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->b(Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/ai;->a:Lcom/viber/voip/messages/extras/fb/s;

    iget-wide v1, p0, Lcom/viber/voip/messages/extras/fb/ai;->b:J

    iget-object v3, p0, Lcom/viber/voip/messages/extras/fb/ai;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/viber/voip/messages/extras/fb/ai;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/viber/voip/messages/extras/fb/ai;->e:Ljava/lang/String;

    iget v6, p0, Lcom/viber/voip/messages/extras/fb/ai;->f:I

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/extras/fb/s;->b(Lcom/viber/voip/messages/extras/fb/s;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 884
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FacebookManager$SharingListener.onFacebookError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->b(Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/ai;->a:Lcom/viber/voip/messages/extras/fb/s;

    iget-wide v1, p0, Lcom/viber/voip/messages/extras/fb/ai;->b:J

    iget-object v3, p0, Lcom/viber/voip/messages/extras/fb/ai;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/viber/voip/messages/extras/fb/ai;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/viber/voip/messages/extras/fb/ai;->e:Ljava/lang/String;

    iget v6, p0, Lcom/viber/voip/messages/extras/fb/ai;->f:I

    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static/range {v0 .. v7}, Lcom/viber/voip/messages/extras/fb/s;->a(Lcom/viber/voip/messages/extras/fb/s;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 890
    return-void
.end method
