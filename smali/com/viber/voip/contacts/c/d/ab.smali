.class Lcom/viber/voip/contacts/c/d/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fn;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/d/ap;

.field final synthetic b:Z

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/viber/voip/contacts/c/d/aa;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/aa;Lcom/viber/voip/contacts/c/d/ap;ZJLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/ab;->e:Lcom/viber/voip/contacts/c/d/aa;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/d/ab;->a:Lcom/viber/voip/contacts/c/d/ap;

    iput-boolean p3, p0, Lcom/viber/voip/contacts/c/d/ab;->b:Z

    iput-wide p4, p0, Lcom/viber/voip/contacts/c/d/ab;->c:J

    iput-object p6, p0, Lcom/viber/voip/contacts/c/d/ab;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateComplete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/Exception;I)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 139
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/ab;->a:Lcom/viber/voip/contacts/c/d/ap;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/ab;->a:Lcom/viber/voip/contacts/c/d/ap;

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/ap;->a()V

    .line 142
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 143
    const-string/jumbo v1, "starred"

    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/d/ab;->b:Z

    if-eqz v0, :cond_1

    move v0, v9

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/ab;->e:Lcom/viber/voip/contacts/c/d/aa;

    iget-wide v1, p0, Lcom/viber/voip/contacts/c/d/ab;->c:J

    iget-object v3, p0, Lcom/viber/voip/contacts/c/d/ab;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/contacts/c/d/aa;->a(Lcom/viber/voip/contacts/c/d/aa;JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 145
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/ab;->e:Lcom/viber/voip/contacts/c/d/aa;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/aa;->a(Lcom/viber/voip/contacts/c/d/aa;)Lcom/viber/voip/contacts/c/e/b;

    move-result-object v0

    const/16 v1, 0x630

    iget-object v2, p0, Lcom/viber/voip/contacts/c/d/ab;->d:Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v9}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fn;ZZ)V

    .line 147
    return-void

    :cond_1
    move v0, v8

    .line 143
    goto :goto_0
.end method
