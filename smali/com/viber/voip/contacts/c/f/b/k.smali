.class Lcom/viber/voip/contacts/c/f/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:I

.field final synthetic f:[Lcom/viber/jni/CAddressBookEntry;

.field final synthetic g:Lcom/viber/voip/contacts/c/f/b/h;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/b/h;IIZZI[Lcom/viber/jni/CAddressBookEntry;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/k;->g:Lcom/viber/voip/contacts/c/f/b/h;

    iput p2, p0, Lcom/viber/voip/contacts/c/f/b/k;->a:I

    iput p3, p0, Lcom/viber/voip/contacts/c/f/b/k;->b:I

    iput-boolean p4, p0, Lcom/viber/voip/contacts/c/f/b/k;->c:Z

    iput-boolean p5, p0, Lcom/viber/voip/contacts/c/f/b/k;->d:Z

    iput p6, p0, Lcom/viber/voip/contacts/c/f/b/k;->e:I

    iput-object p7, p0, Lcom/viber/voip/contacts/c/f/b/k;->f:[Lcom/viber/jni/CAddressBookEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 67
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/k;->g:Lcom/viber/voip/contacts/c/f/b/h;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/h;->a(Lcom/viber/voip/contacts/c/f/b/h;)[Lcom/viber/jni/PhoneControllerDelegateAdapter;

    move-result-object v8

    array-length v9, v8

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v0, v8, v7

    .line 68
    iget v1, p0, Lcom/viber/voip/contacts/c/f/b/k;->a:I

    iget v2, p0, Lcom/viber/voip/contacts/c/f/b/k;->b:I

    iget-boolean v3, p0, Lcom/viber/voip/contacts/c/f/b/k;->c:Z

    iget-boolean v4, p0, Lcom/viber/voip/contacts/c/f/b/k;->d:Z

    iget v5, p0, Lcom/viber/voip/contacts/c/f/b/k;->e:I

    iget-object v6, p0, Lcom/viber/voip/contacts/c/f/b/k;->f:[Lcom/viber/jni/CAddressBookEntry;

    invoke-virtual/range {v0 .. v6}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onAddressBook(IIZZI[Lcom/viber/jni/CAddressBookEntry;)Z

    .line 67
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method
