.class Lcom/viber/voip/messages/ui/media/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/a/c;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/l;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/l;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/m;->a:Lcom/viber/voip/messages/ui/media/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Address;Ljava/lang/String;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/m;->a:Lcom/viber/voip/messages/ui/media/l;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/l;->i:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/m;->a:Lcom/viber/voip/messages/ui/media/l;

    iget v3, v1, Lcom/viber/voip/messages/ui/media/l;->b:I

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/m;->a:Lcom/viber/voip/messages/ui/media/l;

    iget v4, v1, Lcom/viber/voip/messages/ui/media/l;->c:I

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/m;->a:Lcom/viber/voip/messages/ui/media/l;

    iget-wide v5, v1, Lcom/viber/voip/messages/ui/media/l;->d:J

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/m;->a:Lcom/viber/voip/messages/ui/media/l;

    iget-object v7, v1, Lcom/viber/voip/messages/ui/media/l;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/m;->a:Lcom/viber/voip/messages/ui/media/l;

    iget v8, v1, Lcom/viber/voip/messages/ui/media/l;->f:F

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/m;->a:Lcom/viber/voip/messages/ui/media/l;

    iget-wide v9, v1, Lcom/viber/voip/messages/ui/media/l;->g:J

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/m;->a:Lcom/viber/voip/messages/ui/media/l;

    iget-object v11, v1, Lcom/viber/voip/messages/ui/media/l;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/m;->a:Lcom/viber/voip/messages/ui/media/l;

    iget-boolean v12, v1, Lcom/viber/voip/messages/ui/media/l;->h:Z

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v12}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->a(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;Landroid/location/Address;Ljava/lang/String;IIJLjava/lang/String;FJLjava/lang/String;Z)V

    .line 133
    return-void
.end method
