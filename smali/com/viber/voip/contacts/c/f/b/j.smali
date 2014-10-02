.class Lcom/viber/voip/contacts/c/f/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:I

.field final synthetic i:I

.field final synthetic j:Lcom/viber/voip/contacts/c/f/b/h;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/b/h;ZZLjava/util/Map;IZLjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/j;->j:Lcom/viber/voip/contacts/c/f/b/h;

    iput-boolean p2, p0, Lcom/viber/voip/contacts/c/f/b/j;->a:Z

    iput-boolean p3, p0, Lcom/viber/voip/contacts/c/f/b/j;->b:Z

    iput-object p4, p0, Lcom/viber/voip/contacts/c/f/b/j;->c:Ljava/util/Map;

    iput p5, p0, Lcom/viber/voip/contacts/c/f/b/j;->d:I

    iput-boolean p6, p0, Lcom/viber/voip/contacts/c/f/b/j;->e:Z

    iput-object p7, p0, Lcom/viber/voip/contacts/c/f/b/j;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/viber/voip/contacts/c/f/b/j;->g:Ljava/lang/String;

    iput p9, p0, Lcom/viber/voip/contacts/c/f/b/j;->h:I

    iput p10, p0, Lcom/viber/voip/contacts/c/f/b/j;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 51
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/j;->j:Lcom/viber/voip/contacts/c/f/b/h;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/h;->a(Lcom/viber/voip/contacts/c/f/b/h;)[Lcom/viber/jni/PhoneControllerDelegateAdapter;

    move-result-object v11

    array-length v12, v11

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v12, :cond_0

    aget-object v0, v11, v10

    .line 52
    iget-boolean v1, p0, Lcom/viber/voip/contacts/c/f/b/j;->a:Z

    iget-boolean v2, p0, Lcom/viber/voip/contacts/c/f/b/j;->b:Z

    iget-object v3, p0, Lcom/viber/voip/contacts/c/f/b/j;->c:Ljava/util/Map;

    iget v4, p0, Lcom/viber/voip/contacts/c/f/b/j;->d:I

    iget-boolean v5, p0, Lcom/viber/voip/contacts/c/f/b/j;->e:Z

    iget-object v6, p0, Lcom/viber/voip/contacts/c/f/b/j;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/viber/voip/contacts/c/f/b/j;->g:Ljava/lang/String;

    iget v8, p0, Lcom/viber/voip/contacts/c/f/b/j;->h:I

    iget v9, p0, Lcom/viber/voip/contacts/c/f/b/j;->i:I

    invoke-virtual/range {v0 .. v9}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onRegisteredNumbers(ZZLjava/util/Map;IZLjava/lang/String;Ljava/lang/String;II)Z

    .line 51
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method
