.class public Lorg/ajwcc/pduUtils/wappush/WapPushUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PUSH_CLASS:I = 0x12

.field public static final PUSH_CREATED:I = 0xa

.field public static final PUSH_EXPIRES:I = 0x10

.field public static final PUSH_SIGNAL_DELETE:I = 0x9

.field public static final PUSH_SIGNAL_HIGH:I = 0x8

.field public static final PUSH_SIGNAL_LOW:I = 0x6

.field public static final PUSH_SIGNAL_MEDIUM:I = 0x7

.field public static final PUSH_SIGNAL_NONE:I = 0x5

.field public static final PUSH_SI_ID:I = 0x11

.field public static final WBXML_CHARSET_UTF8:I = 0x6a

.field public static final WBXML_CLOSE_TAG:I = 0x1

.field private static final WBXML_DOMAINS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WBXML_DOMAIN_BYTES:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final WBXML_DOMAIN_COM:I = 0x85

.field public static final WBXML_DOMAIN_EDU:I = 0x86

.field public static final WBXML_DOMAIN_NET:I = 0x87

.field public static final WBXML_DOMAIN_ORG:I = 0x88

.field public static final WBXML_HREF_HTTP:I = 0xc

.field public static final WBXML_HREF_HTTPS:I = 0xe

.field public static final WBXML_HREF_HTTPS_WWW:I = 0xf

.field public static final WBXML_HREF_HTTP_WWW:I = 0xd

.field public static final WBXML_HREF_UNKNOWN:I = 0xb

.field public static final WBXML_INDICATION_TAG_CONTENT_AND_ATTRIBUTES:I = 0xc6

.field public static final WBXML_OPAQUE_DATA:I = 0xc3

.field private static final WBXML_PROTOCOLS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WBXML_PROTOCOL_BYTES:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final WBXML_SI_1_0_PUBLIC_IDENTIFIER:I = 0x5

.field public static final WBXML_SI_TAG_CONTENT_NO_ATTRIBUTES:I = 0x45

.field public static final WBXML_SL_1_0_PUBLIC_IDENTIFIER:I = 0x6

.field public static final WBXML_SL_TAG_CONTENT_NO_ATTRIBUTES:I = 0x85

.field public static final WBXML_STRING_END:I = 0x0

.field public static final WBXML_STRING_START:I = 0x3

.field public static final WBXML_VERSION_1_2:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_PROTOCOLS:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_PROTOCOL_BYTES:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_DOMAINS:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_DOMAIN_BYTES:Ljava/util/HashMap;

    .line 88
    sget-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_PROTOCOLS:Ljava/util/List;

    const-string/jumbo v1, "http://www."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_PROTOCOLS:Ljava/util/List;

    const-string/jumbo v1, "http://"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_PROTOCOLS:Ljava/util/List;

    const-string/jumbo v1, "https://www."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_PROTOCOLS:Ljava/util/List;

    const-string/jumbo v1, "https://"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_PROTOCOL_BYTES:Ljava/util/HashMap;

    const-string/jumbo v1, "http://www."

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_PROTOCOL_BYTES:Ljava/util/HashMap;

    const-string/jumbo v1, "http://"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_PROTOCOL_BYTES:Ljava/util/HashMap;

    const-string/jumbo v1, "https://www."

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_PROTOCOL_BYTES:Ljava/util/HashMap;

    const-string/jumbo v1, "https://"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_DOMAINS:Ljava/util/List;

    const-string/jumbo v1, ".com/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_DOMAINS:Ljava/util/List;

    const-string/jumbo v1, ".edu/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_DOMAINS:Ljava/util/List;

    const-string/jumbo v1, ".net/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_DOMAINS:Ljava/util/List;

    const-string/jumbo v1, ".org/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_DOMAIN_BYTES:Ljava/util/HashMap;

    const-string/jumbo v1, ".com/"

    const/16 v2, 0x85

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_DOMAIN_BYTES:Ljava/util/HashMap;

    const-string/jumbo v1, ".edu/"

    const/16 v2, 0x86

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_DOMAIN_BYTES:Ljava/util/HashMap;

    const-string/jumbo v1, ".net/"

    const/16 v2, 0x87

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_DOMAIN_BYTES:Ljava/util/HashMap;

    const-string/jumbo v1, ".org/"

    const/16 v2, 0x88

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDomainByteFor(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 123
    sget-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_DOMAIN_BYTES:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getDomains()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    sget-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_DOMAINS:Ljava/util/List;

    return-object v0
.end method

.method public static getProtocolByteFor(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 118
    sget-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_PROTOCOL_BYTES:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getProtocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    sget-object v0, Lorg/ajwcc/pduUtils/wappush/WapPushUtils;->WBXML_PROTOCOLS:Ljava/util/List;

    return-object v0
.end method
