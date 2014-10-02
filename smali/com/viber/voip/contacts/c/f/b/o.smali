.class Lcom/viber/voip/contacts/c/f/b/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/contacts/c/f/b/h;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/b/h;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/o;->b:Lcom/viber/voip/contacts/c/f/b/h;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/b/o;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 118
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/o;->b:Lcom/viber/voip/contacts/c/f/b/h;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/h;->a(Lcom/viber/voip/contacts/c/f/b/h;)[Lcom/viber/jni/PhoneControllerDelegateAdapter;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 119
    iget-object v4, p0, Lcom/viber/voip/contacts/c/f/b/o;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onRecanonize(Ljava/lang/String;)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method
